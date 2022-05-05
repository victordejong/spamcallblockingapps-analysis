package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/Elf64Header.class */
public class Elf64Header extends Elf.Header {

    /* renamed from: g */
    private final ElfParser f6508g;

    public Elf64Header(boolean z, ElfParser elfParser) throws IOException {
        this.f6496a = z;
        this.f6508g = elfParser;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        elfParser.m15565i(allocate, 16L);
        this.f6497b = elfParser.m15564k(allocate, 32L);
        this.f6498c = elfParser.m15564k(allocate, 40L);
        this.f6499d = elfParser.m15565i(allocate, 54L);
        this.f6500e = elfParser.m15565i(allocate, 56L);
        this.f6501f = elfParser.m15565i(allocate, 58L);
        elfParser.m15565i(allocate, 60L);
        elfParser.m15565i(allocate, 62L);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    /* renamed from: a */
    public Elf.DynamicStructure mo15573a(long j, int i) throws IOException {
        return new Dynamic64Structure(this.f6508g, this, j, i);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    /* renamed from: b */
    public Elf.ProgramHeader mo15572b(long j) throws IOException {
        return new Program64Header(this.f6508g, this, j);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    /* renamed from: c */
    public Elf.SectionHeader mo15571c(int i) throws IOException {
        return new Section64Header(this.f6508g, this, i);
    }
}
