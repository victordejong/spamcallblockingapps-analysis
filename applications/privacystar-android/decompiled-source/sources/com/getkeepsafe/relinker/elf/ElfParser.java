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
import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/ElfParser.class */
public class ElfParser implements Closeable, Elf {
    private final int MAGIC = 1179403647;
    private final FileChannel channel;

    public ElfParser(File file) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.channel = new FileInputStream(file).getChannel();
    }

    private long offsetFromVma(Elf.Header header, long j, long j2) throws IOException {
        for (long j3 = 0; j3 < j; j3++) {
            Elf.ProgramHeader programHeader = header.getProgramHeader(j3);
            if (programHeader.type == 1 && programHeader.vaddr <= j2 && j2 <= programHeader.vaddr + programHeader.memsz) {
                return (j2 - programHeader.vaddr) + programHeader.offset;
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.channel.close();
    }

    public Elf.Header parseHeader() throws IOException {
        this.channel.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (readWord(allocate, 0L) != 1179403647) {
            throw new IllegalArgumentException("Invalid ELF Magic!");
        }
        short readByte = readByte(allocate, 4L);
        boolean z = readByte(allocate, 5L) == 2;
        if (readByte == 1) {
            return new Elf32Header(z, this);
        }
        if (readByte == 2) {
            return new Elf64Header(z, this);
        }
        throw new IllegalStateException("Invalid class type!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.elf.ElfParser] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> parseNeededDependencies() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getkeepsafe.relinker.elf.ElfParser.parseNeededDependencies():java.util.List");
    }

    protected void read(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int read = this.channel.read(byteBuffer, j + j2);
            if (read == -1) {
                throw new EOFException();
            }
            j2 += read;
        }
        byteBuffer.position(0);
    }

    protected short readByte(ByteBuffer byteBuffer, long j) throws IOException {
        read(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int readHalf(ByteBuffer byteBuffer, long j) throws IOException {
        read(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long readLong(ByteBuffer byteBuffer, long j) throws IOException {
        read(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    protected String readString(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            short readByte = readByte(byteBuffer, j);
            if (readByte == 0) {
                return sb.toString();
            }
            sb.append((char) readByte);
            j = 1 + j;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long readWord(ByteBuffer byteBuffer, long j) throws IOException {
        read(byteBuffer, j, 4);
        return byteBuffer.getInt() & BodyPartID.bodyIdMax;
    }
}
