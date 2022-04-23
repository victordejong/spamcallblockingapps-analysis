package com.googlecode.mp4parser;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/f.class */
public class f implements e {

    /* renamed from: c  reason: collision with root package name */
    private static com.googlecode.mp4parser.c.f f33182c = com.googlecode.mp4parser.c.f.a(f.class);

    /* renamed from: a  reason: collision with root package name */
    FileChannel f33183a;

    /* renamed from: b  reason: collision with root package name */
    String f33184b;

    public f(File file) throws FileNotFoundException {
        this.f33183a = new FileInputStream(file).getChannel();
        this.f33184b = file.getName();
    }

    public f(String str) throws FileNotFoundException {
        File file = new File(str);
        this.f33183a = new FileInputStream(file).getChannel();
        this.f33184b = file.getName();
    }

    public f(FileChannel fileChannel) {
        this.f33183a = fileChannel;
        this.f33184b = "unknown";
    }

    public f(FileChannel fileChannel, String str) {
        this.f33183a = fileChannel;
        this.f33184b = str;
    }

    @Override // com.googlecode.mp4parser.e
    public final int a(ByteBuffer byteBuffer) throws IOException {
        int read;
        synchronized (this) {
            read = this.f33183a.read(byteBuffer);
        }
        return read;
    }

    @Override // com.googlecode.mp4parser.e
    public final long a() throws IOException {
        long size;
        synchronized (this) {
            size = this.f33183a.size();
        }
        return size;
    }

    @Override // com.googlecode.mp4parser.e
    public final ByteBuffer a(long j, long j2) throws IOException {
        MappedByteBuffer map;
        synchronized (this) {
            map = this.f33183a.map(FileChannel.MapMode.READ_ONLY, j, j2);
        }
        return map;
    }

    @Override // com.googlecode.mp4parser.e
    public final void a(long j) throws IOException {
        synchronized (this) {
            this.f33183a.position(j);
        }
    }

    @Override // com.googlecode.mp4parser.e
    public final long b() throws IOException {
        long position;
        synchronized (this) {
            position = this.f33183a.position();
        }
        return position;
    }

    @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33183a.close();
    }

    public String toString() {
        return this.f33184b;
    }
}
