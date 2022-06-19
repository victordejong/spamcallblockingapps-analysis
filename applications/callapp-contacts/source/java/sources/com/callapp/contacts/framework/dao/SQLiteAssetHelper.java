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

    /* renamed from: a */
    private static final String f25171a = "SQLiteAssetHelper";

    /* renamed from: b */
    private final String f25172b;

    /* renamed from: c */
    private final int f25173c;

    /* renamed from: f */
    private String f25176f;

    /* renamed from: g */
    private String f25177g;

    /* renamed from: h */
    private String f25178h;

    /* renamed from: d */
    private SQLiteDatabase f25174d = null;

    /* renamed from: e */
    private boolean f25175e = false;

    /* renamed from: i */
    private int f25179i = 0;

    public SQLiteAssetHelper(String str, String str2, int i) {
        super(Singletons.get().getApplication(), str, (SQLiteDatabase.CursorFactory) null, i);
        if (i > 0) {
            if (str == null) {
                throw new IllegalArgumentException("Databse name cannot be null");
            }
            this.f25172b = str;
            this.f25173c = i;
            this.f25177g = "databases/" + str + ".zip";
            if (str2 != null) {
                this.f25176f = str2;
            } else {
                this.f25176f = CallAppApplication.get().getApplicationInfo().dataDir + "/databases";
            }
            this.f25178h = "databases/" + str + "_upgrade_%s-%s.sql";
            return;
        }
        throw new IllegalArgumentException("Version must be >= 1, was ".concat(String.valueOf(i)));
    }

    /* renamed from: a */
    private SQLiteDatabase m28996a() {
        try {
            SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(this.f25176f + "/" + this.f25172b, null, 0);
            String str = f25171a;
            new StringBuilder("successfully opened database ").append(this.f25172b);
            CLog.m27606a(str);
            return openDatabase;
        } catch (SQLiteException e) {
            String str2 = f25171a;
            StringBuilder sb = new StringBuilder("could not open database ");
            sb.append(this.f25172b);
            sb.append(" - ");
            sb.append(e.getMessage());
            CLog.m27606a(str2);
            return null;
        }
    }

    /* renamed from: a */
    private SQLiteDatabase m28991a(boolean z) throws SQLiteException {
        if (!isDatabaseExists()) {
            m28990b();
        }
        SQLiteDatabase m28996a = m28996a();
        SQLiteDatabase sQLiteDatabase = m28996a;
        if (m28996a != null) {
            sQLiteDatabase = m28996a;
            if (z) {
                CLog.m27592b(f25171a, "forcing database upgrade!");
                m28990b();
                sQLiteDatabase = m28996a();
            }
        }
        return sQLiteDatabase;
    }

    /* renamed from: a */
    private InputStream m28995a(int i, int i2) {
        String format = String.format(this.f25178h, Integer.valueOf(i), Integer.valueOf(i2));
        try {
            return CallAppApplication.get().getAssets().open(format);
        } catch (IOException e) {
            String str = f25171a;
            "missing database upgrade script: ".concat(String.valueOf(format));
            CLog.m27606a(str);
            return null;
        }
    }

    /* renamed from: a */
    private static ZipInputStream m28993a(InputStream inputStream) throws FileNotFoundException, IOException {
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        if (nextEntry != null) {
            String str = f25171a;
            CLog.m27592b(str, "extracting file: '" + nextEntry.getName() + "'...");
            return zipInputStream;
        }
        return null;
    }

    /* renamed from: a */
    private void m28994a(int i, int i2, int i3, ArrayList<String> arrayList) {
        int i4;
        int i5 = i3;
        int i6 = i2;
        do {
            if (m28995a(i6, i5) != null) {
                arrayList.add(String.format(this.f25178h, Integer.valueOf(i6), Integer.valueOf(i5)));
                i5 = i6;
                i4 = i6 - 1;
            } else {
                i4 = i6 - 1;
            }
            i6 = i4;
        } while (i4 >= i);
    }

    /* renamed from: a */
    private static void m28992a(ZipInputStream zipInputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = zipInputStream.read(bArr);
            if (read <= 0) {
                outputStream.flush();
                outputStream.close();
                zipInputStream.close();
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: b */
    private static String m28989b(InputStream inputStream) {
        Scanner scanner = new Scanner(inputStream);
        try {
            return scanner.useDelimiter("\\A").next();
        } finally {
            IoUtils.m27514a(scanner);
        }
    }

    /* renamed from: b */
    private void m28990b() throws SQLiteException {
        String str = f25171a;
        CLog.m27606a(str);
        try {
            File file = new File(this.f25176f + "/" + this.f25172b + ".zip");
            if (!file.exists()) {
                return;
            }
            ZipInputStream m28993a = m28993a(new FileInputStream(file));
            if (m28993a == null) {
                throw new SQLiteException("Archive is missing a SQLite database file");
            }
            m28992a(m28993a, new FileOutputStream(this.f25176f + "/" + this.f25172b));
            CLog.m27606a(str);
        } catch (FileNotFoundException e) {
            SQLiteException sQLiteException = new SQLiteException("Missing " + this.f25177g + " file in assets or target folder not writable");
            sQLiteException.setStackTrace(e.getStackTrace());
            throw sQLiteException;
        } catch (IOException e2) {
            SQLiteException sQLiteException2 = new SQLiteException("Unable to extract " + this.f25177g + " to data directory");
            sQLiteException2.setStackTrace(e2.getStackTrace());
            throw sQLiteException2;
        }
    }

    private boolean isDatabaseExists() {
        return new File(this.f25176f + "/" + this.f25172b).exists();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f25175e) {
                throw new IllegalStateException("Closed during initialization");
            }
            SQLiteDatabase sQLiteDatabase = this.f25174d;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                this.f25174d.close();
                this.f25174d = null;
            }
        }
    }

    protected abstract String getDBName();

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getReadableDatabase() {
        synchronized (this) {
            SQLiteDatabase sQLiteDatabase = this.f25174d;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                return this.f25174d;
            } else if (this.f25175e) {
                throw new IllegalStateException("getReadableDatabase called recursively");
            } else {
                try {
                    return getWritableDatabase();
                } catch (SQLiteException e) {
                    if (this.f25172b == null) {
                        throw e;
                    }
                    String str = f25171a;
                    CLog.m27591b(str, "Couldn't open " + this.f25172b + " for writing (will try read-only):", e);
                    this.f25175e = true;
                    String path = CallAppApplication.get().getDatabasePath(this.f25172b).getPath();
                    SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(path, null, 1);
                    if (openDatabase.getVersion() != this.f25173c) {
                        StringBuilder sb = new StringBuilder("Can't upgrade read-only database from version ");
                        sb.append(openDatabase.getVersion());
                        sb.append(" to ");
                        sb.append(this.f25173c);
                        sb.append(": ");
                        sb.append(path);
                        throw new SQLiteException(sb.toString());
                    }
                    onOpen(openDatabase);
                    StringBuilder sb2 = new StringBuilder("Opened ");
                    sb2.append(this.f25172b);
                    sb2.append(" in read-only mode");
                    CLog.m27592b(str, sb2.toString());
                    this.f25174d = openDatabase;
                    this.f25175e = false;
                    if (openDatabase != null) {
                    }
                    return openDatabase;
                }
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getWritableDatabase() {
        synchronized (this) {
            SQLiteDatabase sQLiteDatabase = this.f25174d;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen() && !this.f25174d.isReadOnly()) {
                return this.f25174d;
            } else if (this.f25175e) {
                throw new IllegalStateException("getWritableDatabase called recursively");
            } else {
                this.f25175e = true;
                SQLiteDatabase m28991a = m28991a(false);
                int version = m28991a.getVersion();
                SQLiteDatabase sQLiteDatabase2 = m28991a;
                int i = version;
                if (version != 0) {
                    sQLiteDatabase2 = m28991a;
                    i = version;
                    if (version < this.f25179i) {
                        sQLiteDatabase2 = m28991a(true);
                        sQLiteDatabase2.setVersion(this.f25173c);
                        i = sQLiteDatabase2.getVersion();
                    }
                }
                SQLiteDatabase sQLiteDatabase3 = sQLiteDatabase2;
                if (i != this.f25173c) {
                    SQLiteDatabase sQLiteDatabase4 = sQLiteDatabase2;
                    sQLiteDatabase2.beginTransaction();
                    try {
                        if (i == 0) {
                            onCreate(sQLiteDatabase2);
                        } else {
                            if (i > this.f25173c) {
                                String str = f25171a;
                                CLog.m27592b(str, "Can't downgrade read-only database from version " + i + " to " + this.f25173c + ": " + sQLiteDatabase2.getPath());
                            }
                            onUpgrade(sQLiteDatabase2, i, this.f25173c);
                        }
                        sQLiteDatabase2.setVersion(this.f25173c);
                        sQLiteDatabase2.setTransactionSuccessful();
                        SQLiteDatabase sQLiteDatabase5 = sQLiteDatabase2;
                        sQLiteDatabase2.endTransaction();
                    } catch (Throwable th) {
                        sQLiteDatabase2.endTransaction();
                        SQLiteDatabase sQLiteDatabase6 = sQLiteDatabase2;
                        throw th;
                    }
                }
                SQLiteDatabase sQLiteDatabase7 = sQLiteDatabase2;
                onOpen(sQLiteDatabase2);
                this.f25175e = false;
                SQLiteDatabase sQLiteDatabase8 = this.f25174d;
                if (sQLiteDatabase8 != null) {
                    try {
                        sQLiteDatabase8.close();
                    } catch (Exception e) {
                    }
                }
                this.f25174d = sQLiteDatabase2;
                return sQLiteDatabase2;
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
        analyticsManager.m28449a(Constants.DATABASE, "Database is corrupted", "Name: " + getDBName() + " Version: " + sQLiteDatabase.getVersion());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        String[] split;
        String str = f25171a;
        CLog.m27592b(str, "Upgrading database " + this.f25172b + " from version " + i + " to " + i2 + "...");
        ArrayList<String> arrayList = new ArrayList<>();
        m28994a(i, i2 - 1, i2, arrayList);
        if (arrayList.isEmpty()) {
            StringBuilder sb = new StringBuilder("no upgrade script path from ");
            sb.append(i);
            sb.append(" to ");
            sb.append(i2);
            CLog.m27606a(str);
            throw new SQLiteException("no upgrade script path from " + i + " to " + i2);
        }
        Collections.sort(arrayList);
        Iterator<String> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            try {
                CLog.m27592b(f25171a, "processing upgrade: ".concat(String.valueOf(next)));
                String m28989b = m28989b(CallAppApplication.get().getAssets().open(next));
                if (m28989b != null) {
                    for (String str2 : m28989b.split(";")) {
                        if (str2.trim().length() > 0) {
                            sQLiteDatabase.execSQL(str2);
                        }
                    }
                }
            } catch (IOException e) {
                CLog.m27609a(SQLiteAssetHelper.class, e);
            }
        }
        CLog.m27592b(f25171a, "Successfully upgraded database " + this.f25172b + " from version " + i + " to " + i2);
    }

    public void setForcedUpgradeVersion(int i) {
        this.f25179i = i;
    }
}
