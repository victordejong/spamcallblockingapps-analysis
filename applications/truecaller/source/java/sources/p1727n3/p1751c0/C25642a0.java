package p1727n3.p1751c0;

import android.content.Context;
import android.os.Build;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.util.Objects;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.p1754h0.C25652a;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.c0.a0 */
/* loaded from: classes-dex2jar.jar:n3/c0/a0.class */
public class C25642a0 implements AbstractC26148c, AbstractC25661i {

    /* renamed from: a */
    public final Context f71824a;

    /* renamed from: b */
    public final String f71825b;

    /* renamed from: c */
    public final File f71826c;

    /* renamed from: d */
    public final Callable<InputStream> f71827d;

    /* renamed from: e */
    public final int f71828e;

    /* renamed from: f */
    public final AbstractC26148c f71829f;

    /* renamed from: g */
    public C25651h f71830g;

    /* renamed from: h */
    public boolean f71831h;

    public C25642a0(Context context, String str, File file, Callable<InputStream> callable, int i, AbstractC26148c abstractC26148c) {
        this.f71824a = context;
        this.f71825b = str;
        this.f71826c = file;
        this.f71827d = callable;
        this.f71828e = i;
        this.f71829f = abstractC26148c;
    }

    @Override // p1727n3.p1751c0.AbstractC25661i
    /* renamed from: b */
    public AbstractC26148c mo3082b() {
        return this.f71829f;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f71829f.close();
            this.f71831h = false;
        }
    }

    /* renamed from: d */
    public final void m3099d(File file, boolean z) throws IOException {
        FileChannel fileChannel;
        if (this.f71825b != null) {
            fileChannel = Channels.newChannel(this.f71824a.getAssets().open(this.f71825b));
        } else if (this.f71826c != null) {
            fileChannel = new FileInputStream(this.f71826c).getChannel();
        } else {
            Callable<InputStream> callable = this.f71827d;
            if (callable == null) {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
            try {
                fileChannel = Channels.newChannel(callable.call());
            } catch (Exception e) {
                throw new IOException("inputStreamCallable exception on call", e);
            }
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f71824a.getCacheDir());
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
                channel.transferFrom(fileChannel, 0L, RecyclerView.FOREVER_NS);
            }
            channel.force(false);
            fileChannel.close();
            channel.close();
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                StringBuilder m8728C = C22128a.m8728C("Failed to create directories for ");
                m8728C.append(file.getAbsolutePath());
                throw new IOException(m8728C.toString());
            } else if (createTempFile.renameTo(file)) {
            } else {
                StringBuilder m8728C2 = C22128a.m8728C("Failed to move intermediate file (");
                m8728C2.append(createTempFile.getAbsolutePath());
                m8728C2.append(") to destination (");
                m8728C2.append(file.getAbsolutePath());
                m8728C2.append(").");
                throw new IOException(m8728C2.toString());
            }
        } catch (Throwable th) {
            fileChannel.close();
            channel.close();
            throw th;
        }
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c
    public String getDatabaseName() {
        return this.f71829f.getDatabaseName();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c
    public AbstractC26147b getWritableDatabase() {
        AbstractC26147b writableDatabase;
        synchronized (this) {
            if (!this.f71831h) {
                m3098j(true);
                this.f71831h = true;
            }
            writableDatabase = this.f71829f.getWritableDatabase();
        }
        return writableDatabase;
    }

    /* renamed from: j */
    public final void m3098j(boolean z) {
        boolean z2;
        String databaseName = getDatabaseName();
        File databasePath = this.f71824a.getDatabasePath(databaseName);
        C25651h c25651h = this.f71830g;
        if (c25651h != null) {
            Objects.requireNonNull(c25651h);
            z2 = false;
        } else {
            z2 = true;
        }
        C25652a c25652a = new C25652a(databaseName, this.f71824a.getFilesDir(), z2);
        try {
            c25652a.f71859b.lock();
            if (c25652a.f71860c) {
                try {
                    FileChannel channel = new FileOutputStream(c25652a.f71858a).getChannel();
                    c25652a.f71861d = channel;
                    channel.lock();
                } catch (IOException e) {
                    throw new IllegalStateException("Unable to grab copy lock.", e);
                }
            }
            if (!databasePath.exists()) {
                try {
                    m3099d(databasePath, z);
                } catch (IOException e2) {
                    throw new RuntimeException("Unable to copy database file.", e2);
                }
            } else if (this.f71830g == null) {
            } else {
                try {
                    int m3089c = C25653b.m3089c(databasePath);
                    int i = this.f71828e;
                    if (m3089c == i) {
                        return;
                    }
                    if (this.f71830g.m3093a(m3089c, i)) {
                        return;
                    }
                    if (this.f71824a.deleteDatabase(databaseName)) {
                        try {
                            m3099d(databasePath, z);
                        } catch (IOException e3) {
                        }
                    }
                } catch (IOException e4) {
                }
            }
        } finally {
            c25652a.m3092a();
        }
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c
    public void setWriteAheadLoggingEnabled(boolean z) {
        this.f71829f.setWriteAheadLoggingEnabled(z);
    }
}
