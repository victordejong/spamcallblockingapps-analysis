package com.googlecode.mp4parser;

import com.googlecode.mp4parser.p425c.AbstractC16287f;
import com.googlecode.mp4parser.p425c.C16282b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* renamed from: com.googlecode.mp4parser.g */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/g.class */
public class C16296g implements AbstractC16294e {

    /* renamed from: c */
    private static AbstractC16287f f57563c = AbstractC16287f.m7514a(C16296g.class);

    /* renamed from: a */
    FileChannel f57564a;

    /* renamed from: b */
    String f57565b;

    public C16296g(File file) throws FileNotFoundException {
        this.f57564a = new FileInputStream(file).getChannel();
        this.f57565b = file.getName();
    }

    public C16296g(String str) throws FileNotFoundException {
        File file = new File(str);
        this.f57564a = new FileInputStream(file).getChannel();
        this.f57565b = file.getName();
    }

    public C16296g(FileChannel fileChannel) {
        this.f57564a = fileChannel;
        this.f57565b = "unknown";
    }

    public C16296g(FileChannel fileChannel, String str) {
        this.f57564a = fileChannel;
        this.f57565b = str;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: a */
    public final int mo7486a(ByteBuffer byteBuffer) throws IOException {
        int read;
        synchronized (this) {
            read = this.f57564a.read(byteBuffer);
        }
        return read;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: a */
    public final long mo7489a() throws IOException {
        long size;
        synchronized (this) {
            size = this.f57564a.size();
        }
        return size;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: a */
    public final ByteBuffer mo7487a(long j, long j2) throws IOException {
        ByteBuffer byteBuffer;
        synchronized (this) {
            ByteBuffer allocate = ByteBuffer.allocate(C16282b.m7517a(j2));
            this.f57564a.read(allocate, j);
            byteBuffer = (ByteBuffer) allocate.rewind();
        }
        return byteBuffer;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: a */
    public final void mo7488a(long j) throws IOException {
        synchronized (this) {
            this.f57564a.position(j);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: b */
    public final long mo7485b() throws IOException {
        long position;
        synchronized (this) {
            position = this.f57564a.position();
        }
        return position;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f57564a.close();
    }

    public String toString() {
        return this.f57565b;
    }
}
