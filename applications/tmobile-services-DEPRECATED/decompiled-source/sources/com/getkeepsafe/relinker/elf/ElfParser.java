package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/ElfParser.class */
public class ElfParser implements Closeable, Elf {

    /* renamed from: f */
    private final FileChannel f6509f;

    public ElfParser(File file) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.f6509f = new FileInputStream(file).getChannel();
    }

    /* renamed from: a */
    private long m15570a(Elf.Header header, long j, long j2) throws IOException {
        for (long j3 = 0; j3 < j; j3++) {
            Elf.ProgramHeader b = header.mo15572b(j3);
            if (b.f6502a == 1) {
                long j4 = b.f6504c;
                if (j4 <= j2 && j2 <= b.f6505d + j4) {
                    return (j2 - j4) + b.f6503b;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    /* renamed from: b */
    public Elf.Header m15569b() throws IOException {
        this.f6509f.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (m15562m(allocate, 0L) == 1179403647) {
            short h = m15566h(allocate, 4L);
            boolean z = m15566h(allocate, 5L) == 2;
            if (h == 1) {
                return new Elf32Header(z, this);
            }
            if (h == 2) {
                return new Elf64Header(z, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6509f.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.elf.ElfParser] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> m15568d() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getkeepsafe.relinker.elf.ElfParser.m15568d():java.util.List");
    }

    /* renamed from: e */
    protected void m15567e(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int read = this.f6509f.read(byteBuffer, j + j2);
            if (read != -1) {
                j2 += read;
            } else {
                throw new EOFException();
            }
        }
        byteBuffer.position(0);
    }

    /* renamed from: h */
    protected short m15566h(ByteBuffer byteBuffer, long j) throws IOException {
        m15567e(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: i */
    public int m15565i(ByteBuffer byteBuffer, long j) throws IOException {
        m15567e(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public long m15564k(ByteBuffer byteBuffer, long j) throws IOException {
        m15567e(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    /* renamed from: l */
    protected String m15563l(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            short h = m15566h(byteBuffer, j);
            if (h == 0) {
                return sb.toString();
            }
            sb.append((char) h);
            j = 1 + j;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public long m15562m(ByteBuffer byteBuffer, long j) throws IOException {
        m15567e(byteBuffer, j, 4);
        return byteBuffer.getInt() & 4294967295L;
    }
}
