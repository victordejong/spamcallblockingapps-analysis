package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/Program32Header.class */
public class Program32Header extends Elf.ProgramHeader {
    public Program32Header(ElfParser elfParser, Elf.Header header, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(header.f6496a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = header.f6497b + (j * header.f6499d);
        this.f6502a = elfParser.m15562m(allocate, j2);
        this.f6503b = elfParser.m15562m(allocate, 4 + j2);
        this.f6504c = elfParser.m15562m(allocate, 8 + j2);
        this.f6505d = elfParser.m15562m(allocate, j2 + 20);
    }
}
