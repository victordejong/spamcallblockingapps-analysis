package androidx.room;

import android.content.Context;
import android.util.Log;
import androidx.p042i.p043a.AbstractC0778b;
import androidx.p042i.p043a.AbstractC0779c;
import androidx.room.p050b.C1032a;
import androidx.room.p050b.C1034c;
import androidx.room.p050b.C1035d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
/* renamed from: androidx.room.n */
/* loaded from: classes-dex2jar.jar:androidx/room/n.class */
class C1073n implements AbstractC0779c {

    /* renamed from: a */
    private final Context f3370a;

    /* renamed from: b */
    private final String f3371b;

    /* renamed from: c */
    private final File f3372c;

    /* renamed from: d */
    private final int f3373d;

    /* renamed from: e */
    private final AbstractC0779c f3374e;

    /* renamed from: f */
    private C1029a f3375f;

    /* renamed from: g */
    private boolean f3376g;

    public C1073n(Context context, String str, File file, int i, AbstractC0779c abstractC0779c) {
        this.f3370a = context;
        this.f3371b = str;
        this.f3372c = file;
        this.f3373d = i;
        this.f3374e = abstractC0779c;
    }

    /* renamed from: a */
    private void m4401a(File file) {
        FileChannel fileChannel;
        if (this.f3371b != null) {
            fileChannel = Channels.newChannel(this.f3370a.getAssets().open(this.f3371b));
        } else {
            File file2 = this.f3372c;
            if (file2 == null) {
                throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
            }
            fileChannel = new FileInputStream(file2).getChannel();
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f3370a.getCacheDir());
        createTempFile.deleteOnExit();
        C1035d.m4492a(fileChannel, new FileOutputStream(createTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        } else if (createTempFile.renameTo(file)) {
        } else {
            throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
        }
    }

    /* renamed from: c */
    private void m4398c() {
        String mo4403a = mo4403a();
        File databasePath = this.f3370a.getDatabasePath(mo4403a);
        C1029a c1029a = this.f3375f;
        C1032a c1032a = new C1032a(mo4403a, this.f3370a.getFilesDir(), c1029a == null || c1029a.f3238j);
        try {
            c1032a.m4500a();
            if (!databasePath.exists()) {
                try {
                    m4401a(databasePath);
                    c1032a.m4498b();
                    return;
                } catch (IOException e) {
                    throw new RuntimeException("Unable to copy database file.", e);
                }
            } else if (this.f3375f == null) {
                c1032a.m4498b();
                return;
            } else {
                try {
                    int m4493a = C1034c.m4493a(databasePath);
                    if (m4493a == this.f3373d) {
                        c1032a.m4498b();
                        return;
                    } else if (this.f3375f.m4503a(m4493a, this.f3373d)) {
                        c1032a.m4498b();
                        return;
                    } else {
                        if (this.f3370a.deleteDatabase(mo4403a)) {
                            try {
                                m4401a(databasePath);
                            } catch (IOException e2) {
                                Log.w("ROOM", "Unable to copy database file.", e2);
                            }
                        } else {
                            Log.w("ROOM", "Failed to delete database file (" + mo4403a + ") for a copy destructive migration.");
                        }
                        c1032a.m4498b();
                        return;
                    }
                } catch (IOException e3) {
                    Log.w("ROOM", "Unable to read database version.", e3);
                    c1032a.m4498b();
                    return;
                }
            }
        } catch (Throwable th) {
            c1032a.m4498b();
            throw th;
        }
        c1032a.m4498b();
        throw th;
    }

    @Override // androidx.p042i.p043a.AbstractC0779c
    /* renamed from: a */
    public String mo4403a() {
        return this.f3374e.mo4403a();
    }

    /* renamed from: a */
    public void m4402a(C1029a c1029a) {
        this.f3375f = c1029a;
    }

    @Override // androidx.p042i.p043a.AbstractC0779c
    /* renamed from: a */
    public void mo4400a(boolean z) {
        this.f3374e.mo4400a(z);
    }

    @Override // androidx.p042i.p043a.AbstractC0779c
    /* renamed from: b */
    public AbstractC0778b mo4399b() {
        AbstractC0778b mo4399b;
        synchronized (this) {
            if (!this.f3376g) {
                m4398c();
                this.f3376g = true;
            }
            mo4399b = this.f3374e.mo4399b();
        }
        return mo4399b;
    }
}
