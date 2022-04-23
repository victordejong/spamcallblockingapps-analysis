package com.callapp.contacts.framework.dao;

import android.database.DatabaseErrorHandler;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Scanner;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/SQLiteAssetHelper.class */
public abstract class SQLiteAssetHelper extends SQLiteOpenHelper implements DatabaseErrorHandler {

    /* renamed from: a  reason: collision with root package name */
    private static final String f14398a = "SQLiteAssetHelper";

    /* renamed from: b  reason: collision with root package name */
    private final String f14399b;

    /* renamed from: c  reason: collision with root package name */
    private final int f14400c;
    private String f;
    private String g;
    private String h;

    /* renamed from: d  reason: collision with root package name */
    private SQLiteDatabase f14401d = null;
    private boolean e = false;
    private int i = 0;

    public SQLiteAssetHelper(String str, String str2, int i) {
        super(Singletons.get().getApplication(), str, (SQLiteDatabase.CursorFactory) null, i);
        if (i <= 0) {
            throw new IllegalArgumentException("Version must be >= 1, was ".concat(String.valueOf(i)));
        } else if (str != null) {
            this.f14399b = str;
            this.f14400c = i;
            this.g = "databases/" + str + ".zip";
            if (str2 != null) {
                this.f = str2;
            } else {
                this.f = CallAppApplication.get().getApplicationInfo().dataDir + "/databases";
            }
            this.h = "databases/" + str + "_upgrade_%s-%s.sql";
        } else {
            throw new IllegalArgumentException("Databse name cannot be null");
        }
    }

    private SQLiteDatabase a() {
        try {
            SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(this.f + "/" + this.f14399b, null, 0);
            String str = f14398a;
            new StringBuilder("successfully opened database ").append(this.f14399b);
            CLog.a(str);
            return openDatabase;
        } catch (SQLiteException e) {
            String str2 = f14398a;
            StringBuilder sb = new StringBuilder("could not open database ");
            sb.append(this.f14399b);
            sb.append(" - ");
            sb.append(e.getMessage());
            CLog.a(str2);
            return null;
        }
    }

    private SQLiteDatabase a(boolean z) throws SQLiteException {
        if (!isDatabaseExists()) {
            b();
        }
        SQLiteDatabase a2 = a();
        SQLiteDatabase sQLiteDatabase = a2;
        if (a2 != null) {
            sQLiteDatabase = a2;
            if (z) {
                CLog.b(f14398a, "forcing database upgrade!");
                b();
                sQLiteDatabase = a();
            }
        }
        return sQLiteDatabase;
    }

    private InputStream a(int i, int i2) {
        String format = String.format(this.h, Integer.valueOf(i), Integer.valueOf(i2));
        try {
            return CallAppApplication.get().getAssets().open(format);
        } catch (IOException e) {
            String str = f14398a;
            "missing database upgrade script: ".concat(String.valueOf(format));
            CLog.a(str);
            return null;
        }
    }

    private static ZipInputStream a(InputStream inputStream) throws FileNotFoundException, IOException {
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        if (nextEntry == null) {
            return null;
        }
        String str = f14398a;
        CLog.b(str, "extracting file: '" + nextEntry.getName() + "'...");
        return zipInputStream;
    }

    private void a(int i, int i2, int i3, ArrayList<String> arrayList) {
        int i4;
        int i5 = i3;
        int i6 = i2;
        do {
            if (a(i6, i5) != null) {
                arrayList.add(String.format(this.h, Integer.valueOf(i6), Integer.valueOf(i5)));
                i5 = i6;
                i4 = i6 - 1;
            } else {
                i4 = i6 - 1;
            }
            i6 = i4;
        } while (i4 >= i);
    }

    private static void a(ZipInputStream zipInputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = zipInputStream.read(bArr);
            if (read > 0) {
                outputStream.write(bArr, 0, read);
            } else {
                outputStream.flush();
                outputStream.close();
                zipInputStream.close();
                return;
            }
        }
    }

    private static String b(InputStream inputStream) {
        Scanner scanner = new Scanner(inputStream);
        try {
            return scanner.useDelimiter("\\A").next();
        } finally {
            IoUtils.a(scanner);
        }
    }

    private void b() throws SQLiteException {
        String str = f14398a;
        CLog.a(str);
        try {
            File file = new File(this.f + "/" + this.f14399b + ".zip");
            if (file.exists()) {
                ZipInputStream a2 = a(new FileInputStream(file));
                if (a2 != null) {
                    a(a2, new FileOutputStream(this.f + "/" + this.f14399b));
                    CLog.a(str);
                    return;
                }
                throw new SQLiteException("Archive is missing a SQLite database file");
            }
        } catch (FileNotFoundException e) {
            SQLiteException sQLiteException = new SQLiteException("Missing " + this.g + " file in assets or target folder not writable");
            sQLiteException.setStackTrace(e.getStackTrace());
            throw sQLiteException;
        } catch (IOException e2) {
            SQLiteException sQLiteException2 = new SQLiteException("Unable to extract " + this.g + " to data directory");
            sQLiteException2.setStackTrace(e2.getStackTrace());
            throw sQLiteException2;
        }
    }

    private boolean isDatabaseExists() {
        return new File(this.f + "/" + this.f14399b).exists();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.e) {
                SQLiteDatabase sQLiteDatabase = this.f14401d;
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    this.f14401d.close();
                    this.f14401d = null;
                }
            } else {
                throw new IllegalStateException("Closed during initialization");
            }
        }
    }

    protected abstract String getDBName();

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getReadableDatabase() {
        synchronized (this) {
            SQLiteDatabase sQLiteDatabase = this.f14401d;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                return this.f14401d;
            } else if (!this.e) {
                try {
                    return getWritableDatabase();
                } catch (SQLiteException e) {
                    if (this.f14399b != null) {
                        String str = f14398a;
                        CLog.b(str, "Couldn't open " + this.f14399b + " for writing (will try read-only):", e);
                        this.e = true;
                        String path = CallAppApplication.get().getDatabasePath(this.f14399b).getPath();
                        SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(path, null, 1);
                        if (openDatabase.getVersion() == this.f14400c) {
                            onOpen(openDatabase);
                            StringBuilder sb = new StringBuilder("Opened ");
                            sb.append(this.f14399b);
                            sb.append(" in read-only mode");
                            CLog.b(str, sb.toString());
                            this.f14401d = openDatabase;
                            this.e = false;
                            if (openDatabase != null) {
                            }
                            return openDatabase;
                        }
                        StringBuilder sb2 = new StringBuilder("Can't upgrade read-only database from version ");
                        sb2.append(openDatabase.getVersion());
                        sb2.append(" to ");
                        sb2.append(this.f14400c);
                        sb2.append(": ");
                        sb2.append(path);
                        throw new SQLiteException(sb2.toString());
                    }
                    throw e;
                }
            } else {
                throw new IllegalStateException("getReadableDatabase called recursively");
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getWritableDatabase() {
        synchronized (this) {
            SQLiteDatabase sQLiteDatabase = this.f14401d;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen() && !this.f14401d.isReadOnly()) {
                return this.f14401d;
            } else if (!this.e) {
                this.e = true;
                SQLiteDatabase a2 = a(false);
                int version = a2.getVersion();
                SQLiteDatabase sQLiteDatabase2 = a2;
                int i = version;
                if (version != 0) {
                    sQLiteDatabase2 = a2;
                    i = version;
                    if (version < this.i) {
                        sQLiteDatabase2 = a(true);
                        sQLiteDatabase2.setVersion(this.f14400c);
                        i = sQLiteDatabase2.getVersion();
                    }
                }
                if (i != this.f14400c) {
                    sQLiteDatabase2.beginTransaction();
                    try {
                        if (i == 0) {
                            onCreate(sQLiteDatabase2);
                        } else {
                            if (i > this.f14400c) {
                                String str = f14398a;
                                CLog.b(str, "Can't downgrade read-only database from version " + i + " to " + this.f14400c + ": " + sQLiteDatabase2.getPath());
                            }
                            onUpgrade(sQLiteDatabase2, i, this.f14400c);
                        }
                        sQLiteDatabase2.setVersion(this.f14400c);
                        sQLiteDatabase2.setTransactionSuccessful();
                        sQLiteDatabase2.endTransaction();
                    } catch (Throwable th) {
                        sQLiteDatabase2.endTransaction();
                        throw th;
                    }
                }
                onOpen(sQLiteDatabase2);
                this.e = false;
                SQLiteDatabase sQLiteDatabase3 = this.f14401d;
                if (sQLiteDatabase3 != null) {
                    try {
                        sQLiteDatabase3.close();
                    } catch (Exception e) {
                    }
                }
                this.f14401d = sQLiteDatabase2;
                return sQLiteDatabase2;
            } else {
                throw new IllegalStateException("getWritableDatabase called recursively");
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.enableWriteAheadLogging();
        } catch (SQLException e) {
        }
    }

    @Override // android.database.DatabaseErrorHandler
    public void onCorruption(SQLiteDatabase sQLiteDatabase) {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.DATABASE, "Database is corrupted", "Name: " + getDBName() + " Version: " + sQLiteDatabase.getVersion());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        String[] split;
        String str = f14398a;
        CLog.b(str, "Upgrading database " + this.f14399b + " from version " + i + " to " + i2 + "...");
        ArrayList<String> arrayList = new ArrayList<>();
        a(i, i2 - 1, i2, arrayList);
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                try {
                    CLog.b(f14398a, "processing upgrade: ".concat(String.valueOf(next)));
                    String b2 = b(CallAppApplication.get().getAssets().open(next));
                    if (b2 != null) {
                        for (String str2 : b2.split(";")) {
                            if (str2.trim().length() > 0) {
                                sQLiteDatabase.execSQL(str2);
                            }
                        }
                    }
                } catch (IOException e) {
                    CLog.a(SQLiteAssetHelper.class, e);
                }
            }
            CLog.b(f14398a, "Successfully upgraded database " + this.f14399b + " from version " + i + " to " + i2);
            return;
        }
        StringBuilder sb = new StringBuilder("no upgrade script path from ");
        sb.append(i);
        sb.append(" to ");
        sb.append(i2);
        CLog.a(str);
        throw new SQLiteException("no upgrade script path from " + i + " to " + i2);
    }

    public void setForcedUpgradeVersion(int i) {
        this.i = i;
    }
}
