package p067d1;

import android.content.Context;
import android.os.Build;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import p088f1.C2708a;
import p088f1.C2709b;
import p099g1.AbstractC2795a;
import p099g1.AbstractC2796b;
/* renamed from: d1.i */
/* loaded from: classes-dex2jar.jar:d1/i.class */
public class C2159i implements AbstractC2796b {

    /* renamed from: a */
    public final Context f7902a;

    /* renamed from: b */
    public final String f7903b;

    /* renamed from: c */
    public final File f7904c;

    /* renamed from: d */
    public final int f7905d;

    /* renamed from: e */
    public final AbstractC2796b f7906e;

    /* renamed from: f */
    public C2140a f7907f;

    /* renamed from: g */
    public boolean f7908g;

    @Override // p099g1.AbstractC2796b
    /* renamed from: T */
    public AbstractC2795a mo2773T() {
        AbstractC2795a mo2773T;
        synchronized (this) {
            if (!this.f7908g) {
                m3801k();
                this.f7908g = true;
            }
            mo2773T = this.f7906e.mo2773T();
        }
        return mo2773T;
    }

    @Override // p099g1.AbstractC2796b, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f7906e.close();
            this.f7908g = false;
        }
    }

    /* renamed from: d */
    public final void m3802d(File file) throws IOException {
        FileChannel fileChannel;
        if (this.f7903b != null) {
            fileChannel = Channels.newChannel(this.f7902a.getAssets().open(this.f7903b));
        } else if (this.f7904c == null) {
            throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
        } else {
            fileChannel = new FileInputStream(this.f7904c).getChannel();
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f7902a.getCacheDir());
        createTempFile.deleteOnExit();
        FileChannel channel = new FileOutputStream(createTempFile).getChannel();
        try {
            if (Build.VERSION.SDK_INT <= 23) {
                InputStream newInputStream = Channels.newInputStream(fileChannel);
                OutputStream newOutputStream = Channels.newOutputStream(channel);
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = newInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    newOutputStream.write(bArr, 0, read);
                }
            } else {
                channel.transferFrom(fileChannel, 0L, Long.MAX_VALUE);
            }
            channel.force(false);
            fileChannel.close();
            channel.close();
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                StringBuilder m8752j = C0082b.m8752j("Failed to create directories for ");
                m8752j.append(file.getAbsolutePath());
                throw new IOException(m8752j.toString());
            } else if (createTempFile.renameTo(file)) {
            } else {
                StringBuilder m8752j2 = C0082b.m8752j("Failed to move intermediate file (");
                m8752j2.append(createTempFile.getAbsolutePath());
                m8752j2.append(") to destination (");
                m8752j2.append(file.getAbsolutePath());
                m8752j2.append(").");
                throw new IOException(m8752j2.toString());
            }
        } catch (Throwable th) {
            fileChannel.close();
            channel.close();
            throw th;
        }
    }

    @Override // p099g1.AbstractC2796b
    public String getDatabaseName() {
        return this.f7906e.getDatabaseName();
    }

    /* renamed from: k */
    public final void m3801k() {
        String databaseName = this.f7906e.getDatabaseName();
        File databasePath = this.f7902a.getDatabasePath(databaseName);
        C2708a c2708a = new C2708a(databaseName, this.f7902a.getFilesDir(), this.f7907f == null);
        try {
            c2708a.f9301b.lock();
            if (c2708a.f9302c) {
                try {
                    FileChannel channel = new FileOutputStream(c2708a.f9300a).getChannel();
                    c2708a.f9303d = channel;
                    channel.lock();
                } catch (IOException e) {
                    throw new IllegalStateException("Unable to grab copy lock.", e);
                }
            }
            if (!databasePath.exists()) {
                try {
                    m3802d(databasePath);
                    c2708a.m3218a();
                    return;
                } catch (IOException e2) {
                    throw new RuntimeException("Unable to copy database file.", e2);
                }
            } else if (this.f7907f == null) {
                c2708a.m3218a();
                return;
            } else {
                try {
                    int m3216b = C2709b.m3216b(databasePath);
                    int i = this.f7905d;
                    if (m3216b == i) {
                        c2708a.m3218a();
                        return;
                    } else if (this.f7907f.m3832a(m3216b, i)) {
                        c2708a.m3218a();
                        return;
                    } else {
                        if (this.f7902a.deleteDatabase(databaseName)) {
                            try {
                                m3802d(databasePath);
                            } catch (IOException e3) {
                                Log.w("ROOM", "Unable to copy database file.", e3);
                            }
                        } else {
                            Log.w("ROOM", "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                        }
                        c2708a.m3218a();
                        return;
                    }
                } catch (IOException e4) {
                    Log.w("ROOM", "Unable to read database version.", e4);
                    c2708a.m3218a();
                    return;
                }
            }
        } catch (Throwable th) {
            c2708a.m3218a();
            throw th;
        }
        c2708a.m3218a();
        throw th;
    }

    @Override // p099g1.AbstractC2796b
    public void setWriteAheadLoggingEnabled(boolean z) {
        this.f7906e.setWriteAheadLoggingEnabled(z);
    }
}
