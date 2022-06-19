package com.danikula.videocache.p227q;

import com.danikula.videocache.AbstractC4420a;
import com.danikula.videocache.ProxyCacheException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
/* renamed from: com.danikula.videocache.q.b */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/q/b.class */
public class C4446b implements AbstractC4420a {

    /* renamed from: a */
    private final AbstractC4445a f13570a;

    /* renamed from: b */
    public File f13571b;

    /* renamed from: c */
    private RandomAccessFile f13572c;

    public C4446b(File file, AbstractC4445a abstractC4445a) {
        File file2;
        try {
            if (abstractC4445a == null) {
                throw new NullPointerException();
            }
            this.f13570a = abstractC4445a;
            C4448d.m22441b(file.getParentFile());
            boolean exists = file.exists();
            if (exists) {
                file2 = file;
            } else {
                File parentFile = file.getParentFile();
                file2 = new File(parentFile, file.getName() + ".download");
            }
            this.f13571b = file2;
            this.f13572c = new RandomAccessFile(this.f13571b, exists ? "r" : "rw");
        } catch (IOException e) {
            throw new ProxyCacheException("Error using file " + file + " as disc cache", e);
        }
    }

    /* renamed from: f */
    private boolean m22443f(File file) {
        return file.getName().endsWith(".download");
    }

    @Override // com.danikula.videocache.AbstractC4420a
    /* renamed from: a */
    public void mo22448a() {
        synchronized (this) {
            if (mo22445d()) {
                return;
            }
            close();
            File file = new File(this.f13571b.getParentFile(), this.f13571b.getName().substring(0, this.f13571b.getName().length() - 9));
            if (!this.f13571b.renameTo(file)) {
                throw new ProxyCacheException("Error renaming file " + this.f13571b + " to " + file + " for completion!");
            }
            this.f13571b = file;
            try {
                this.f13572c = new RandomAccessFile(this.f13571b, "r");
                this.f13570a.mo22435a(this.f13571b);
            } catch (IOException e) {
                throw new ProxyCacheException("Error opening " + this.f13571b + " as disc cache", e);
            }
        }
    }

    @Override // com.danikula.videocache.AbstractC4420a
    /* renamed from: b */
    public long mo22447b() {
        long length;
        synchronized (this) {
            try {
                length = (int) this.f13572c.length();
            } catch (IOException e) {
                throw new ProxyCacheException("Error reading length of file " + this.f13571b, e);
            }
        }
        return length;
    }

    @Override // com.danikula.videocache.AbstractC4420a
    /* renamed from: c */
    public void mo22446c(byte[] bArr, int i) {
        synchronized (this) {
            try {
                if (mo22445d()) {
                    throw new ProxyCacheException("Error append cache: cache file " + this.f13571b + " is completed!");
                }
                this.f13572c.seek(mo22447b());
                this.f13572c.write(bArr, 0, i);
            } catch (IOException e) {
                throw new ProxyCacheException(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i), this.f13572c, Integer.valueOf(bArr.length)), e);
            }
        }
    }

    @Override // com.danikula.videocache.AbstractC4420a
    public void close() {
        synchronized (this) {
            try {
                this.f13572c.close();
                this.f13570a.mo22435a(this.f13571b);
            } catch (IOException e) {
                throw new ProxyCacheException("Error closing file " + this.f13571b, e);
            }
        }
    }

    @Override // com.danikula.videocache.AbstractC4420a
    /* renamed from: d */
    public boolean mo22445d() {
        boolean m22443f;
        synchronized (this) {
            m22443f = m22443f(this.f13571b);
        }
        return !m22443f;
    }

    @Override // com.danikula.videocache.AbstractC4420a
    /* renamed from: e */
    public int mo22444e(byte[] bArr, long j, int i) {
        int read;
        synchronized (this) {
            try {
                this.f13572c.seek(j);
                read = this.f13572c.read(bArr, 0, i);
            } catch (IOException e) {
                throw new ProxyCacheException(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i), Long.valueOf(j), Long.valueOf(mo22447b()), Integer.valueOf(bArr.length)), e);
            }
        }
        return read;
    }
}
