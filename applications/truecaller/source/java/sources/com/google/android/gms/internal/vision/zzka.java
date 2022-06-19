package com.google.android.gms.internal.vision;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzka.class */
public class zzka extends Enum<zzka> {
    public static final zzka zzabm;
    public static final zzka zzabn;
    public static final zzka zzabo;
    public static final zzka zzabp;
    public static final zzka zzabq;
    public static final zzka zzabr;
    public static final zzka zzabs;
    public static final zzka zzabt;
    public static final zzka zzabu;
    public static final zzka zzabv;
    public static final zzka zzabw;
    public static final zzka zzabx;
    public static final zzka zzaby;
    public static final zzka zzabz;
    public static final zzka zzaca;
    public static final zzka zzacb;
    public static final zzka zzacc;
    public static final zzka zzacd;
    private static final /* synthetic */ zzka[] zzacg;
    private final zzkd zzace;
    private final int zzacf;

    static {
        zzka zzkaVar = new zzka("DOUBLE", 0, zzkd.DOUBLE, 1);
        zzabm = zzkaVar;
        zzka zzkaVar2 = new zzka("FLOAT", 1, zzkd.FLOAT, 5);
        zzabn = zzkaVar2;
        zzkd zzkdVar = zzkd.LONG;
        zzka zzkaVar3 = new zzka("INT64", 2, zzkdVar, 0);
        zzabo = zzkaVar3;
        zzka zzkaVar4 = new zzka("UINT64", 3, zzkdVar, 0);
        zzabp = zzkaVar4;
        zzkd zzkdVar2 = zzkd.INT;
        zzka zzkaVar5 = new zzka("INT32", 4, zzkdVar2, 0);
        zzabq = zzkaVar5;
        zzka zzkaVar6 = new zzka("FIXED64", 5, zzkdVar, 1);
        zzabr = zzkaVar6;
        zzka zzkaVar7 = new zzka("FIXED32", 6, zzkdVar2, 5);
        zzabs = zzkaVar7;
        zzka zzkaVar8 = new zzka("BOOL", 7, zzkd.BOOLEAN, 0);
        zzabt = zzkaVar8;
        zzka zzjzVar = new zzjz("STRING", 8, zzkd.STRING, 2);
        zzabu = zzjzVar;
        zzkd zzkdVar3 = zzkd.MESSAGE;
        zzka zzkcVar = new zzkc("GROUP", 9, zzkdVar3, 3);
        zzabv = zzkcVar;
        zzka zzkbVar = new zzkb("MESSAGE", 10, zzkdVar3, 2);
        zzabw = zzkbVar;
        zzka zzkeVar = new zzke("BYTES", 11, zzkd.BYTE_STRING, 2);
        zzabx = zzkeVar;
        zzka zzkaVar9 = new zzka("UINT32", 12, zzkdVar2, 0);
        zzaby = zzkaVar9;
        zzka zzkaVar10 = new zzka("ENUM", 13, zzkd.ENUM, 0);
        zzabz = zzkaVar10;
        zzka zzkaVar11 = new zzka("SFIXED32", 14, zzkdVar2, 5);
        zzaca = zzkaVar11;
        zzka zzkaVar12 = new zzka("SFIXED64", 15, zzkdVar, 1);
        zzacb = zzkaVar12;
        zzka zzkaVar13 = new zzka("SINT32", 16, zzkdVar2, 0);
        zzacc = zzkaVar13;
        zzka zzkaVar14 = new zzka("SINT64", 17, zzkdVar, 0);
        zzacd = zzkaVar14;
        zzacg = new zzka[]{zzkaVar, zzkaVar2, zzkaVar3, zzkaVar4, zzkaVar5, zzkaVar6, zzkaVar7, zzkaVar8, zzjzVar, zzkcVar, zzkbVar, zzkeVar, zzkaVar9, zzkaVar10, zzkaVar11, zzkaVar12, zzkaVar13, zzkaVar14};
    }

    private zzka(String str, int i, zzkd zzkdVar, int i2) {
        super(str, i);
        this.zzace = zzkdVar;
        this.zzacf = i2;
    }

    public /* synthetic */ zzka(String str, int i, zzkd zzkdVar, int i2, zzjx zzjxVar) {
        this(str, i, zzkdVar, i2);
    }

    public static zzka[] values() {
        return (zzka[]) zzacg.clone();
    }

    public final zzkd zzip() {
        return this.zzace;
    }

    public final int zziq() {
        return this.zzacf;
    }
}
