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
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.p027ws.WebSocketProtocol;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.elf.Elf$Header] */
    private long offsetFromVma(Elf.Header header, long j, long j2) throws IOException {
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c < j) {
                Elf.ProgramHeader programHeader = header.getProgramHeader(c);
                if (programHeader.type == 1 && programHeader.vaddr <= j2 && j2 <= programHeader.vaddr + programHeader.memsz) {
                    return (j2 - programHeader.vaddr) + programHeader.offset;
                }
                r0 = c + 1;
            } else {
                throw new IllegalStateException("Could not map vma to file offset!");
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.channel.close();
    }

    public Elf.Header parseHeader() throws IOException {
        this.channel.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (readWord(allocate, 0L) == 1179403647) {
            short readByte = readByte(allocate, 4L);
            boolean z = readByte(allocate, 5L) == 2;
            if (readByte == 1) {
                return new Elf32Header(z, this);
            }
            if (readByte != 2) {
                throw new IllegalStateException("Invalid class type!");
            }
            return new Elf64Header(z, this);
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.getkeepsafe.relinker.elf.Elf$Header] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.elf.ElfParser] */
    public List<String> parseNeededDependencies() throws IOException {
        char c;
        Elf.DynamicStructure dynamicStructure;
        this.channel.position(0L);
        ArrayList arrayList = new ArrayList();
        ?? parseHeader = parseHeader();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(parseHeader.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        ?? r0 = parseHeader.phnum;
        int i = 0;
        char c2 = r0;
        if (r0 == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            c2 = parseHeader.getSectionHeader(0).info;
        }
        ?? r02 = 0;
        while (true) {
            char c3 = r02;
            if (c3 >= c2) {
                c = 0;
                break;
            }
            Elf.ProgramHeader programHeader = parseHeader.getProgramHeader(c3);
            if (programHeader.type == 2) {
                c = programHeader.offset;
                break;
            }
            r02 = c3 + 1;
        }
        if (c == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList<Long> arrayList2 = new ArrayList();
        char c4 = 0;
        do {
            dynamicStructure = parseHeader.getDynamicStructure(c, i);
            if (dynamicStructure.tag == 1) {
                arrayList2.add(Long.valueOf(dynamicStructure.val));
            } else if (dynamicStructure.tag == 5) {
                c4 = dynamicStructure.val;
            }
            i++;
        } while (dynamicStructure.tag != 0);
        if (c4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long offsetFromVma = offsetFromVma(parseHeader, c2, c4);
        for (Long l : arrayList2) {
            arrayList.add(readString(allocate, l.longValue() + offsetFromVma));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    protected void read(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c >= i) {
                byteBuffer.position(0);
                return;
            }
            int read = this.channel.read(byteBuffer, j + c);
            if (read == -1) {
                throw new EOFException();
            }
            r0 = c + read;
        }
    }

    protected short readByte(ByteBuffer byteBuffer, long j) throws IOException {
        read(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    public int readHalf(ByteBuffer byteBuffer, long j) throws IOException {
        read(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    public long readLong(ByteBuffer byteBuffer, long j) throws IOException {
        read(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.getkeepsafe.relinker.elf.ElfParser] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    protected String readString(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        ?? r7 = j;
        while (true) {
            short readByte = readByte(byteBuffer, r7);
            if (readByte != 0) {
                sb.append((char) readByte);
                r7 = 1 + r7;
            } else {
                return sb.toString();
            }
        }
    }

    public long readWord(ByteBuffer byteBuffer, long j) throws IOException {
        read(byteBuffer, j, 4);
        return byteBuffer.getInt() & 4294967295L;
    }
}
