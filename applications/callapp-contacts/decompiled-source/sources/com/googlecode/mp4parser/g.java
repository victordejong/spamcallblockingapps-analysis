package com.googlecode.mp4parser;

import com.googlecode.mp4parser.c.b;
import com.googlecode.mp4parser.c.f;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/g.class */
public class g implements e {

    /* renamed from: c  reason: collision with root package name */
    private static f f33185c = f.a(g.class);

    /* renamed from: a  reason: collision with root package name */
    FileChannel f33186a;

    /* renamed from: b  reason: collision with root package name */
    String f33187b;

    public g(File file) throws FileNotFoundException {
        this.f33186a = new FileInputStream(file).getChannel();
        this.f33187b = file.getName();
    }

    public g(String str) throws FileNotFoundException {
        File file = new File(str);
        this.f33186a = new FileInputStream(file).getChannel();
        this.f33187b = file.getName();
    }

    public g(FileChannel fileChannel) {
        this.f33186a = fileChannel;
        this.f33187b = "unknown";
    }

    public g(FileChannel fileChannel, String str) {
        this.f33186a = fileChannel;
        this.f33187b = str;
    }

    @Override // com.googlecode.mp4parser.e
    public final int a(ByteBuffer byteBuffer) throws IOException {
        int read;
        synchronized (this) {
            read = this.f33186a.read(byteBuffer);
        }
        return read;
    }

    @Override // com.googlecode.mp4parser.e
    public final long a() throws IOException {
        long size;
        synchronized (this) {
            size = this.f33186a.size();
        }
        return size;
    }

    @Override // com.googlecode.mp4parser.e
    public final ByteBuffer a(long j, long j2) throws IOException {
        ByteBuffer byteBuffer;
        synchronized (this) {
            ByteBuffer allocate = ByteBuffer.allocate(b.a(j2));
            this.f33186a.read(allocate, j);
            byteBuffer = (ByteBuffer) allocate.rewind();
        }
        return byteBuffer;
    }

    @Override // com.googlecode.mp4parser.e
    public final void a(long j) throws IOException {
        synchronized (this) {
            this.f33186a.position(j);
        }
    }

    @Override // com.googlecode.mp4parser.e
    public final long b() throws IOException {
        long position;
        synchronized (this) {
            position = this.f33186a.position();
        }
        return position;
    }

    @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33186a.close();
    }

    public String toString() {
        return this.f33187b;
    }
}
