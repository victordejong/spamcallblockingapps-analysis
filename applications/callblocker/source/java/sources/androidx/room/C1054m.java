package androidx.room;

import android.content.Context;
import android.util.Log;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.p042i.p043a.AbstractC0750c;
import androidx.room.p050b.C1013a;
import androidx.room.p050b.C1015c;
import androidx.room.p050b.C1016d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
/* renamed from: androidx.room.m */
/* loaded from: classes-dex2jar.jar:androidx/room/m.class */
class C1054m implements AbstractC0750c {

    /* renamed from: a */
    private final Context f3580a;

    /* renamed from: b */
    private final String f3581b;

    /* renamed from: c */
    private final File f3582c;

    /* renamed from: d */
    private final int f3583d;

    /* renamed from: e */
    private final AbstractC0750c f3584e;

    /* renamed from: f */
    private C1010a f3585f;

    /* renamed from: g */
    private boolean f3586g;

    public C1054m(Context context, String str, File file, int i, AbstractC0750c abstractC0750c) {
        this.f3580a = context;
        this.f3581b = str;
        this.f3582c = file;
        this.f3583d = i;
        this.f3584e = abstractC0750c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.nio.channels.ReadableByteChannel] */
    /* renamed from: a */
    private void m18245a(File file) {
        FileChannel channel;
        if (this.f3581b != null) {
            channel = Channels.newChannel(this.f3580a.getAssets().open(this.f3581b));
        } else if (this.f3582c == null) {
            throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
        } else {
            channel = new FileInputStream(this.f3582c).getChannel();
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f3580a.getCacheDir());
        createTempFile.deleteOnExit();
        C1016d.m18344a(channel, new FileOutputStream(createTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile == null || parentFile.exists() || parentFile.mkdirs()) {
            if (createTempFile.renameTo(file)) {
                return;
            }
            throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
        }
        throw new IOException("Failed to create directories for " + file.getAbsolutePath());
    }

    /* renamed from: c */
    private void m18242c() {
        String mo18247a = mo18247a();
        File databasePath = this.f3580a.getDatabasePath(mo18247a);
        C1013a c1013a = new C1013a(mo18247a, this.f3580a.getFilesDir(), this.f3585f == null || this.f3585f.f3445j);
        try {
            c1013a.m18352a();
            if (!databasePath.exists()) {
                try {
                    m18245a(databasePath);
                    c1013a.m18350b();
                    return;
                } catch (IOException e) {
                    throw new RuntimeException("Unable to copy database file.", e);
                }
            } else if (this.f3585f == null) {
                c1013a.m18350b();
                return;
            } else {
                try {
                    int m18345a = C1015c.m18345a(databasePath);
                    if (m18345a == this.f3583d) {
                        c1013a.m18350b();
                        return;
                    } else if (this.f3585f.m18354a(m18345a, this.f3583d)) {
                        c1013a.m18350b();
                        return;
                    } else {
                        if (this.f3580a.deleteDatabase(mo18247a)) {
                            try {
                                m18245a(databasePath);
                            } catch (IOException e2) {
                                Log.w("ROOM", "Unable to copy database file.", e2);
                            }
                        } else {
                            Log.w("ROOM", "Failed to delete database file (" + mo18247a + ") for a copy destructive migration.");
                        }
                        c1013a.m18350b();
                        return;
                    }
                } catch (IOException e3) {
                    Log.w("ROOM", "Unable to read database version.", e3);
                    c1013a.m18350b();
                    return;
                }
            }
        } catch (Throwable th) {
            c1013a.m18350b();
            throw th;
        }
        c1013a.m18350b();
        throw th;
    }

    @Override // androidx.p042i.p043a.AbstractC0750c
    /* renamed from: a */
    public String mo18247a() {
        return this.f3584e.mo18247a();
    }

    /* renamed from: a */
    public void m18246a(C1010a c1010a) {
        this.f3585f = c1010a;
    }

    @Override // androidx.p042i.p043a.AbstractC0750c
    /* renamed from: a */
    public void mo18244a(boolean z) {
        this.f3584e.mo18244a(z);
    }

    @Override // androidx.p042i.p043a.AbstractC0750c
    /* renamed from: b */
    public AbstractC0749b mo18243b() {
        AbstractC0749b mo18243b;
        synchronized (this) {
            if (!this.f3586g) {
                m18242c();
                this.f3586g = true;
            }
            mo18243b = this.f3584e.mo18243b();
        }
        return mo18243b;
    }

    @Override // androidx.p042i.p043a.AbstractC0750c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f3584e.close();
            this.f3586g = false;
        }
    }
}
