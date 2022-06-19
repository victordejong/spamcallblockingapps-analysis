package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzvk.class */
public class zzvk extends Enum<zzvk> {
    public static final zzvk zza;
    public static final zzvk zzb;
    public static final zzvk zzc;
    public static final zzvk zzd;
    public static final zzvk zze;
    public static final zzvk zzf;
    public static final zzvk zzg;
    public static final zzvk zzh;
    public static final zzvk zzi;
    public static final zzvk zzj;
    public static final zzvk zzk;
    public static final zzvk zzl;
    public static final zzvk zzm;
    public static final zzvk zzn;
    public static final zzvk zzo;
    public static final zzvk zzp;
    public static final zzvk zzq;
    public static final zzvk zzr;
    private static final /* synthetic */ zzvk[] zzu;
    private final zzvr zzs;
    private final int zzt;

    static {
        zzvk zzvkVar = new zzvk("DOUBLE", 0, zzvr.DOUBLE, 1);
        zza = zzvkVar;
        zzvk zzvkVar2 = new zzvk("FLOAT", 1, zzvr.FLOAT, 5);
        zzb = zzvkVar2;
        zzvr zzvrVar = zzvr.LONG;
        zzvk zzvkVar3 = new zzvk("INT64", 2, zzvrVar, 0);
        zzc = zzvkVar3;
        zzvk zzvkVar4 = new zzvk("UINT64", 3, zzvrVar, 0);
        zzd = zzvkVar4;
        zzvr zzvrVar2 = zzvr.INT;
        zzvk zzvkVar5 = new zzvk("INT32", 4, zzvrVar2, 0);
        zze = zzvkVar5;
        zzvk zzvkVar6 = new zzvk("FIXED64", 5, zzvrVar, 1);
        zzf = zzvkVar6;
        zzvk zzvkVar7 = new zzvk("FIXED32", 6, zzvrVar2, 5);
        zzg = zzvkVar7;
        zzvk zzvkVar8 = new zzvk("BOOL", 7, zzvr.BOOLEAN, 0);
        zzh = zzvkVar8;
        zzvk zzvnVar = new zzvn("STRING", 8, zzvr.STRING, 2);
        zzi = zzvnVar;
        zzvr zzvrVar3 = zzvr.MESSAGE;
        zzvk zzvmVar = new zzvm("GROUP", 9, zzvrVar3, 3);
        zzj = zzvmVar;
        zzvk zzvpVar = new zzvp("MESSAGE", 10, zzvrVar3, 2);
        zzk = zzvpVar;
        zzvk zzvoVar = new zzvo("BYTES", 11, zzvr.BYTE_STRING, 2);
        zzl = zzvoVar;
        zzvk zzvkVar9 = new zzvk("UINT32", 12, zzvrVar2, 0);
        zzm = zzvkVar9;
        zzvk zzvkVar10 = new zzvk("ENUM", 13, zzvr.ENUM, 0);
        zzn = zzvkVar10;
        zzvk zzvkVar11 = new zzvk("SFIXED32", 14, zzvrVar2, 5);
        zzo = zzvkVar11;
        zzvk zzvkVar12 = new zzvk("SFIXED64", 15, zzvrVar, 1);
        zzp = zzvkVar12;
        zzvk zzvkVar13 = new zzvk("SINT32", 16, zzvrVar2, 0);
        zzq = zzvkVar13;
        zzvk zzvkVar14 = new zzvk("SINT64", 17, zzvrVar, 0);
        zzr = zzvkVar14;
        zzu = new zzvk[]{zzvkVar, zzvkVar2, zzvkVar3, zzvkVar4, zzvkVar5, zzvkVar6, zzvkVar7, zzvkVar8, zzvnVar, zzvmVar, zzvpVar, zzvoVar, zzvkVar9, zzvkVar10, zzvkVar11, zzvkVar12, zzvkVar13, zzvkVar14};
    }

    private zzvk(String str, int i, zzvr zzvrVar, int i2) {
        super(str, i);
        this.zzs = zzvrVar;
        this.zzt = i2;
    }

    public /* synthetic */ zzvk(String str, int i, zzvr zzvrVar, int i2, zzvl zzvlVar) {
        this(str, i, zzvrVar, i2);
    }

    public static zzvk[] values() {
        return (zzvk[]) zzu.clone();
    }

    public final zzvr zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
