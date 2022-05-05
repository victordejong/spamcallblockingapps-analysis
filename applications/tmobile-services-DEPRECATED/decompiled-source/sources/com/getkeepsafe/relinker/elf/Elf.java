package com.getkeepsafe.relinker.elf;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/Elf.class */
public interface Elf {

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/Elf$DynamicStructure.class */
    public static abstract class DynamicStructure {

        /* renamed from: a */
        public long f6494a;

        /* renamed from: b */
        public long f6495b;
    }

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/Elf$Header.class */
    public static abstract class Header {

        /* renamed from: a */
        public boolean f6496a;

        /* renamed from: b */
        public long f6497b;

        /* renamed from: c */
        public long f6498c;

        /* renamed from: d */
        public int f6499d;

        /* renamed from: e */
        public int f6500e;

        /* renamed from: f */
        public int f6501f;

        /* renamed from: a */
        public abstract DynamicStructure mo15573a(long j, int i) throws IOException;

        /* renamed from: b */
        public abstract ProgramHeader mo15572b(long j) throws IOException;

        /* renamed from: c */
        public abstract SectionHeader mo15571c(int i) throws IOException;
    }

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/Elf$ProgramHeader.class */
    public static abstract class ProgramHeader {

        /* renamed from: a */
        public long f6502a;

        /* renamed from: b */
        public long f6503b;

        /* renamed from: c */
        public long f6504c;

        /* renamed from: d */
        public long f6505d;
    }

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/elf/Elf$SectionHeader.class */
    public static abstract class SectionHeader {

        /* renamed from: a */
        public long f6506a;
    }
}
