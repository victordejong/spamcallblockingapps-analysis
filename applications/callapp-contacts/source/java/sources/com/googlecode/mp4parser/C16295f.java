package com.googlecode.mp4parser;

import com.googlecode.mp4parser.p425c.AbstractC16287f;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
/* renamed from: com.googlecode.mp4parser.f */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/f.class */
public class C16295f implements AbstractC16294e {

    /* renamed from: c */
    private static AbstractC16287f f57560c = AbstractC16287f.m7514a(C16295f.class);

    /* renamed from: a */
    FileChannel f57561a;

    /* renamed from: b */
    String f57562b;

    public C16295f(File file) throws FileNotFoundException {
        this.f57561a = new FileInputStream(file).getChannel();
        this.f57562b = file.getName();
    }

    public C16295f(String str) throws FileNotFoundException {
        File file = new File(str);
        this.f57561a = new FileInputStream(file).getChannel();
        this.f57562b = file.getName();
    }

    public C16295f(FileChannel fileChannel) {
        this.f57561a = fileChannel;
        this.f57562b = "unknown";
    }

    public C16295f(FileChannel fileChannel, String str) {
        this.f57561a = fileChannel;
        this.f57562b = str;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: a */
    public final int mo7486a(ByteBuffer byteBuffer) throws IOException {
        int read;
        synchronized (this) {
            read = this.f57561a.read(byteBuffer);
        }
        return read;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: a */
    public final long mo7489a() throws IOException {
        long size;
        synchronized (this) {
            size = this.f57561a.size();
        }
        return size;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: a */
    public final ByteBuffer mo7487a(long j, long j2) throws IOException {
        MappedByteBuffer map;
        synchronized (this) {
            map = this.f57561a.map(FileChannel.MapMode.READ_ONLY, j, j2);
        }
        return map;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: a */
    public final void mo7488a(long j) throws IOException {
        synchronized (this) {
            this.f57561a.position(j);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e
    /* renamed from: b */
    public final long mo7485b() throws IOException {
        long position;
        synchronized (this) {
            position = this.f57561a.position();
        }
        return position;
    }

    @Override // com.googlecode.mp4parser.AbstractC16294e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f57561a.close();
    }

    public String toString() {
        return this.f57562b;
    }
}
