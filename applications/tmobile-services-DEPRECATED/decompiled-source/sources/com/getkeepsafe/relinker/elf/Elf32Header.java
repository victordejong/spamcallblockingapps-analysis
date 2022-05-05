package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/Elf32Header.class */
public class Elf32Header extends Elf.Header {

    /* renamed from: g */
    private final ElfParser f6507g;

    public Elf32Header(boolean z, ElfParser elfParser) throws IOException {
        this.f6496a = z;
        this.f6507g = elfParser;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        elfParser.m15565i(allocate, 16L);
        this.f6497b = elfParser.m15562m(allocate, 28L);
        this.f6498c = elfParser.m15562m(allocate, 32L);
        this.f6499d = elfParser.m15565i(allocate, 42L);
        this.f6500e = elfParser.m15565i(allocate, 44L);
        this.f6501f = elfParser.m15565i(allocate, 46L);
        elfParser.m15565i(allocate, 48L);
        elfParser.m15565i(allocate, 50L);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    /* renamed from: a */
    public Elf.DynamicStructure mo15573a(long j, int i) throws IOException {
        return new Dynamic32Structure(this.f6507g, this, j, i);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    /* renamed from: b */
    public Elf.ProgramHeader mo15572b(long j) throws IOException {
        return new Program32Header(this.f6507g, this, j);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    /* renamed from: c */
    public Elf.SectionHeader mo15571c(int i) throws IOException {
        return new Section32Header(this.f6507g, this, i);
    }
}
