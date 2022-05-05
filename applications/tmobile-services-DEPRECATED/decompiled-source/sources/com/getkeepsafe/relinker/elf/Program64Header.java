package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/Program64Header.class */
public class Program64Header extends Elf.ProgramHeader {
    public Program64Header(ElfParser elfParser, Elf.Header header, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(header.f6496a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = header.f6497b + (j * header.f6499d);
        this.f6502a = elfParser.m15562m(allocate, j2);
        this.f6503b = elfParser.m15564k(allocate, 8 + j2);
        this.f6504c = elfParser.m15564k(allocate, 16 + j2);
        this.f6505d = elfParser.m15564k(allocate, j2 + 40);
    }
}
