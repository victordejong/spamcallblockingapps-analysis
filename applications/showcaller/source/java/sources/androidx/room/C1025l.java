package androidx.room;

import android.content.Context;
import android.util.Log;
import androidx.room.p012q.C1031a;
import androidx.room.p012q.C1033c;
import androidx.room.p012q.C1034d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import p020b.p070r.p071a.AbstractC1772b;
import p020b.p070r.p071a.AbstractC1773c;
/* renamed from: androidx.room.l */
/* loaded from: classes-dex2jar.jar:androidx/room/l.class */
class C1025l implements AbstractC1773c {

    /* renamed from: d */
    private final Context f4517d;

    /* renamed from: e */
    private final String f4518e;

    /* renamed from: f */
    private final File f4519f;

    /* renamed from: g */
    private final int f4520g;

    /* renamed from: h */
    private final AbstractC1773c f4521h;

    /* renamed from: i */
    private C0997a f4522i;

    /* renamed from: j */
    private boolean f4523j;

    public C1025l(Context context, String str, File file, int i, AbstractC1773c abstractC1773c) {
        this.f4517d = context;
        this.f4518e = str;
        this.f4519f = file;
        this.f4520g = i;
        this.f4521h = abstractC1773c;
    }

    /* renamed from: a */
    private void m31222a(File file) {
        FileChannel fileChannel;
        if (this.f4518e != null) {
            fileChannel = Channels.newChannel(this.f4517d.getAssets().open(this.f4518e));
        } else if (this.f4519f == null) {
            throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
        } else {
            fileChannel = new FileInputStream(this.f4519f).getChannel();
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f4517d.getCacheDir());
        createTempFile.deleteOnExit();
        C1034d.m31205a(fileChannel, new FileOutputStream(createTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        } else if (createTempFile.renameTo(file)) {
        } else {
            throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
        }
    }

    /* renamed from: f */
    private void m31220f() {
        String databaseName = getDatabaseName();
        File databasePath = this.f4517d.getDatabasePath(databaseName);
        C0997a c0997a = this.f4522i;
        C1031a c1031a = new C1031a(databaseName, this.f4517d.getFilesDir(), c0997a == null || c0997a.f4446j);
        try {
            c1031a.m31212b();
            if (!databasePath.exists()) {
                try {
                    m31222a(databasePath);
                    c1031a.m31211c();
                    return;
                } catch (IOException e) {
                    throw new RuntimeException("Unable to copy database file.", e);
                }
            } else if (this.f4522i == null) {
                c1031a.m31211c();
                return;
            } else {
                try {
                    int m31206c = C1033c.m31206c(databasePath);
                    int i = this.f4520g;
                    if (m31206c == i) {
                        c1031a.m31211c();
                        return;
                    } else if (this.f4522i.m31265a(m31206c, i)) {
                        c1031a.m31211c();
                        return;
                    } else {
                        if (this.f4517d.deleteDatabase(databaseName)) {
                            try {
                                m31222a(databasePath);
                            } catch (IOException e2) {
                                Log.w("ROOM", "Unable to copy database file.", e2);
                            }
                        } else {
                            Log.w("ROOM", "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                        }
                        c1031a.m31211c();
                        return;
                    }
                } catch (IOException e3) {
                    Log.w("ROOM", "Unable to read database version.", e3);
                    c1031a.m31211c();
                    return;
                }
            }
        } catch (Throwable th) {
            c1031a.m31211c();
            throw th;
        }
        c1031a.m31211c();
        throw th;
    }

    @Override // p020b.p070r.p071a.AbstractC1773c
    /* renamed from: K */
    public AbstractC1772b mo28907K() {
        AbstractC1772b mo28907K;
        synchronized (this) {
            if (!this.f4523j) {
                m31220f();
                this.f4523j = true;
            }
            mo28907K = this.f4521h.mo28907K();
        }
        return mo28907K;
    }

    @Override // p020b.p070r.p071a.AbstractC1773c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f4521h.close();
            this.f4523j = false;
        }
    }

    /* renamed from: e */
    public void m31221e(C0997a c0997a) {
        this.f4522i = c0997a;
    }

    @Override // p020b.p070r.p071a.AbstractC1773c
    public String getDatabaseName() {
        return this.f4521h.getDatabaseName();
    }

    @Override // p020b.p070r.p071a.AbstractC1773c
    public void setWriteAheadLoggingEnabled(boolean z) {
        this.f4521h.setWriteAheadLoggingEnabled(z);
    }
}
