package com.google.android.gms.internal.measurement;

import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import com.facebook.appevents.codeless.internal.Constants;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdj.class */
public final class zzdj extends zzhs<zzdj, zzdi> implements zziy {
    private static final zzdj zzZ;
    public static final /* synthetic */ int zza = 0;
    private long zzB;
    private int zzC;
    private boolean zzF;
    private int zzI;
    private int zzJ;
    private int zzK;
    private long zzM;
    private long zzN;
    private int zzQ;
    private zzdo zzS;
    private long zzU;
    private long zzV;
    private int zzY;
    private int zze;
    private int zzf;
    private int zzg;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private int zzs;
    private long zzw;
    private long zzx;
    private boolean zzz;
    private zzhz<zzdb> zzh = zzbE();
    private zzhz<zzdu> zzi = zzbE();
    private String zzo = "";
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";
    private String zzt = "";
    private String zzu = "";
    private String zzv = "";
    private String zzy = "";
    private String zzA = "";
    private String zzD = "";
    private String zzE = "";
    private zzhz<zzcx> zzG = zzbE();
    private String zzH = "";
    private String zzL = "";
    private String zzO = "";
    private String zzP = "";
    private String zzR = "";
    private zzhx zzT = zzbB();
    private String zzW = "";
    private String zzX = "";

    static {
        zzdj zzdjVar = new zzdj();
        zzZ = zzdjVar;
        zzhs.zzby(zzdj.class, zzdjVar);
    }

    private zzdj() {
    }

    public static /* synthetic */ void zzaA(zzdj zzdjVar, long j) {
        zzdjVar.zze |= 32;
        zzdjVar.zzn = j;
    }

    public static /* synthetic */ void zzaB(zzdj zzdjVar) {
        zzdjVar.zze &= -33;
        zzdjVar.zzn = 0L;
    }

    public static /* synthetic */ void zzaC(zzdj zzdjVar, String str) {
        zzdjVar.zze |= 64;
        zzdjVar.zzo = Constants.PLATFORM;
    }

    public static /* synthetic */ void zzaD(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 128;
        zzdjVar.zzp = str;
    }

    public static /* synthetic */ void zzaE(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 256;
        zzdjVar.zzq = str;
    }

    public static /* synthetic */ void zzaF(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 512;
        zzdjVar.zzr = str;
    }

    public static /* synthetic */ void zzaG(zzdj zzdjVar, int i) {
        zzdjVar.zze |= 1024;
        zzdjVar.zzs = i;
    }

    public static /* synthetic */ void zzaH(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 2048;
        zzdjVar.zzt = str;
    }

    public static /* synthetic */ void zzaI(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 4096;
        zzdjVar.zzu = str;
    }

    public static /* synthetic */ void zzaJ(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 8192;
        zzdjVar.zzv = str;
    }

    public static /* synthetic */ void zzaK(zzdj zzdjVar, long j) {
        zzdjVar.zze |= 16384;
        zzdjVar.zzw = j;
    }

    public static /* synthetic */ void zzaL(zzdj zzdjVar, long j) {
        zzdjVar.zze |= 32768;
        zzdjVar.zzx = 39000L;
    }

    public static /* synthetic */ void zzaM(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 65536;
        zzdjVar.zzy = str;
    }

    public static /* synthetic */ void zzaN(zzdj zzdjVar) {
        zzdjVar.zze &= -65537;
        zzdjVar.zzy = zzZ.zzy;
    }

    public static /* synthetic */ void zzaO(zzdj zzdjVar, boolean z) {
        zzdjVar.zze |= 131072;
        zzdjVar.zzz = z;
    }

    public static /* synthetic */ void zzaP(zzdj zzdjVar) {
        zzdjVar.zze &= -131073;
        zzdjVar.zzz = false;
    }

    public static /* synthetic */ void zzaQ(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 262144;
        zzdjVar.zzA = str;
    }

    public static /* synthetic */ void zzaR(zzdj zzdjVar) {
        zzdjVar.zze &= -262145;
        zzdjVar.zzA = zzZ.zzA;
    }

    public static /* synthetic */ void zzaS(zzdj zzdjVar, long j) {
        zzdjVar.zze |= 524288;
        zzdjVar.zzB = j;
    }

    public static /* synthetic */ void zzaT(zzdj zzdjVar, int i) {
        zzdjVar.zze |= 1048576;
        zzdjVar.zzC = i;
    }

    public static /* synthetic */ void zzaU(zzdj zzdjVar, String str) {
        zzdjVar.zze |= 2097152;
        zzdjVar.zzD = str;
    }

    public static /* synthetic */ void zzaV(zzdj zzdjVar) {
        zzdjVar.zze &= -2097153;
        zzdjVar.zzD = zzZ.zzD;
    }

    public static /* synthetic */ void zzaW(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 4194304;
        zzdjVar.zzE = str;
    }

    public static /* synthetic */ void zzaX(zzdj zzdjVar, boolean z) {
        zzdjVar.zze |= 8388608;
        zzdjVar.zzF = z;
    }

    public static /* synthetic */ void zzaY(zzdj zzdjVar, Iterable iterable) {
        zzhz<zzcx> zzhzVar = zzdjVar.zzG;
        if (!zzhzVar.zza()) {
            zzdjVar.zzG = zzhs.zzbF(zzhzVar);
        }
        zzgb.zzbs(iterable, zzdjVar.zzG);
    }

    public static zzdi zzaj() {
        return zzZ.zzbt();
    }

    public static /* synthetic */ void zzal(zzdj zzdjVar, int i) {
        zzdjVar.zze |= 1;
        zzdjVar.zzg = 1;
    }

    public static /* synthetic */ void zzam(zzdj zzdjVar, int i, zzdb zzdbVar) {
        zzdbVar.getClass();
        zzdjVar.zzbI();
        zzdjVar.zzh.set(i, zzdbVar);
    }

    public static /* synthetic */ void zzan(zzdj zzdjVar, zzdb zzdbVar) {
        zzdbVar.getClass();
        zzdjVar.zzbI();
        zzdjVar.zzh.add(zzdbVar);
    }

    public static /* synthetic */ void zzao(zzdj zzdjVar, Iterable iterable) {
        zzdjVar.zzbI();
        zzgb.zzbs(iterable, zzdjVar.zzh);
    }

    public static /* synthetic */ void zzaq(zzdj zzdjVar, int i) {
        zzdjVar.zzbI();
        zzdjVar.zzh.remove(i);
    }

    public static /* synthetic */ void zzar(zzdj zzdjVar, int i, zzdu zzduVar) {
        zzduVar.getClass();
        zzdjVar.zzbJ();
        zzdjVar.zzi.set(i, zzduVar);
    }

    public static /* synthetic */ void zzas(zzdj zzdjVar, zzdu zzduVar) {
        zzduVar.getClass();
        zzdjVar.zzbJ();
        zzdjVar.zzi.add(zzduVar);
    }

    public static /* synthetic */ void zzat(zzdj zzdjVar, Iterable iterable) {
        zzdjVar.zzbJ();
        zzgb.zzbs(iterable, zzdjVar.zzi);
    }

    public static /* synthetic */ void zzau(zzdj zzdjVar, int i) {
        zzdjVar.zzbJ();
        zzdjVar.zzi.remove(i);
    }

    public static /* synthetic */ void zzav(zzdj zzdjVar, long j) {
        zzdjVar.zze |= 2;
        zzdjVar.zzj = j;
    }

    public static /* synthetic */ void zzaw(zzdj zzdjVar, long j) {
        zzdjVar.zze |= 4;
        zzdjVar.zzk = j;
    }

    public static /* synthetic */ void zzax(zzdj zzdjVar, long j) {
        zzdjVar.zze |= 8;
        zzdjVar.zzl = j;
    }

    public static /* synthetic */ void zzay(zzdj zzdjVar, long j) {
        zzdjVar.zze |= 16;
        zzdjVar.zzm = j;
    }

    public static /* synthetic */ void zzaz(zzdj zzdjVar) {
        zzdjVar.zze &= -17;
        zzdjVar.zzm = 0L;
    }

    private final void zzbI() {
        zzhz<zzdb> zzhzVar = this.zzh;
        if (!zzhzVar.zza()) {
            this.zzh = zzhs.zzbF(zzhzVar);
        }
    }

    private final void zzbJ() {
        zzhz<zzdu> zzhzVar = this.zzi;
        if (!zzhzVar.zza()) {
            this.zzi = zzhs.zzbF(zzhzVar);
        }
    }

    public static /* synthetic */ void zzba(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zze |= 16777216;
        zzdjVar.zzH = str;
    }

    public static /* synthetic */ void zzbb(zzdj zzdjVar, int i) {
        zzdjVar.zze |= 33554432;
        zzdjVar.zzI = i;
    }

    public static /* synthetic */ void zzbc(zzdj zzdjVar) {
        zzdjVar.zze &= -268435457;
        zzdjVar.zzL = zzZ.zzL;
    }

    public static /* synthetic */ void zzbd(zzdj zzdjVar, long j) {
        zzdjVar.zze |= 536870912;
        zzdjVar.zzM = j;
    }

    public static /* synthetic */ void zzbe(zzdj zzdjVar, long j) {
        zzdjVar.zze |= BasicMeasure.EXACTLY;
        zzdjVar.zzN = j;
    }

    public static /* synthetic */ void zzbf(zzdj zzdjVar) {
        zzdjVar.zze &= Integer.MAX_VALUE;
        zzdjVar.zzO = zzZ.zzO;
    }

    public static /* synthetic */ void zzbg(zzdj zzdjVar, int i) {
        zzdjVar.zzf |= 2;
        zzdjVar.zzQ = i;
    }

    public static /* synthetic */ void zzbh(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zzf |= 4;
        zzdjVar.zzR = str;
    }

    public static /* synthetic */ void zzbi(zzdj zzdjVar, zzdo zzdoVar) {
        zzdoVar.getClass();
        zzdjVar.zzS = zzdoVar;
        zzdjVar.zzf |= 8;
    }

    public static /* synthetic */ void zzbj(zzdj zzdjVar, Iterable iterable) {
        zzhx zzhxVar = zzdjVar.zzT;
        if (!zzhxVar.zza()) {
            int size = zzhxVar.size();
            zzdjVar.zzT = zzhxVar.zzf(size == 0 ? 10 : size + size);
        }
        zzgb.zzbs(iterable, zzdjVar.zzT);
    }

    public static /* synthetic */ void zzbk(zzdj zzdjVar, long j) {
        zzdjVar.zzf |= 16;
        zzdjVar.zzU = j;
    }

    public static /* synthetic */ void zzbl(zzdj zzdjVar, long j) {
        zzdjVar.zzf |= 32;
        zzdjVar.zzV = j;
    }

    public static /* synthetic */ void zzbm(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zzf |= 64;
        zzdjVar.zzW = str;
    }

    public static /* synthetic */ void zzbn(zzdj zzdjVar, String str) {
        str.getClass();
        zzdjVar.zzf |= 128;
        zzdjVar.zzX = str;
    }

    public final String zzA() {
        return this.zzu;
    }

    public final String zzB() {
        return this.zzv;
    }

    public final boolean zzC() {
        return (this.zze & 16384) != 0;
    }

    public final long zzD() {
        return this.zzw;
    }

    public final boolean zzE() {
        return (this.zze & 32768) != 0;
    }

    public final long zzF() {
        return this.zzx;
    }

    public final String zzG() {
        return this.zzy;
    }

    public final boolean zzH() {
        return (this.zze & 131072) != 0;
    }

    public final boolean zzI() {
        return this.zzz;
    }

    public final String zzJ() {
        return this.zzA;
    }

    public final boolean zzK() {
        return (this.zze & 524288) != 0;
    }

    public final long zzL() {
        return this.zzB;
    }

    public final boolean zzM() {
        return (this.zze & 1048576) != 0;
    }

    public final int zzN() {
        return this.zzC;
    }

    public final String zzO() {
        return this.zzD;
    }

    public final String zzP() {
        return this.zzE;
    }

    public final boolean zzQ() {
        return (this.zze & 8388608) != 0;
    }

    public final boolean zzR() {
        return this.zzF;
    }

    public final List<zzcx> zzS() {
        return this.zzG;
    }

    public final String zzT() {
        return this.zzH;
    }

    public final boolean zzU() {
        return (this.zze & 33554432) != 0;
    }

    public final int zzV() {
        return this.zzI;
    }

    public final boolean zzW() {
        return (this.zze & 536870912) != 0;
    }

    public final long zzX() {
        return this.zzM;
    }

    public final boolean zzY() {
        return (this.zze & BasicMeasure.EXACTLY) != 0;
    }

    public final long zzZ() {
        return this.zzN;
    }

    public final boolean zza() {
        return (this.zze & 1) != 0;
    }

    public final String zzaa() {
        return this.zzO;
    }

    public final boolean zzab() {
        return (this.zzf & 2) != 0;
    }

    public final int zzac() {
        return this.zzQ;
    }

    public final String zzad() {
        return this.zzR;
    }

    public final boolean zzae() {
        return (this.zzf & 16) != 0;
    }

    public final long zzaf() {
        return this.zzU;
    }

    public final String zzag() {
        return this.zzW;
    }

    public final boolean zzah() {
        return (this.zzf & 128) != 0;
    }

    public final String zzai() {
        return this.zzX;
    }

    public final int zzb() {
        return this.zzg;
    }

    public final List<zzdb> zzc() {
        return this.zzh;
    }

    public final int zzd() {
        return this.zzh.size();
    }

    public final zzdb zze(int i) {
        return this.zzh.get(i);
    }

    public final List<zzdu> zzf() {
        return this.zzi;
    }

    public final int zzg() {
        return this.zzi.size();
    }

    public final zzdu zzh(int i) {
        return this.zzi.get(i);
    }

    public final boolean zzi() {
        return (this.zze & 2) != 0;
    }

    public final long zzj() {
        return this.zzj;
    }

    public final boolean zzk() {
        return (this.zze & 4) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzZ, "\u0001-��\u0002\u00015-��\u0004��\u0001င��\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(", new Object[]{"zze", "zzf", "zzg", "zzh", zzdb.class, "zzi", zzdu.class, "zzj", "zzk", "zzl", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzm", "zzF", "zzG", zzcx.class, "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", zzcv.zzb()});
            } else if (i2 == 3) {
                return new zzdj();
            } else {
                if (i2 == 4) {
                    return new zzdi(null);
                }
                if (i2 == 5) {
                    return zzZ;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    public final long zzm() {
        return this.zzk;
    }

    public final boolean zzn() {
        return (this.zze & 8) != 0;
    }

    public final long zzo() {
        return this.zzl;
    }

    public final boolean zzp() {
        return (this.zze & 16) != 0;
    }

    public final long zzq() {
        return this.zzm;
    }

    public final boolean zzr() {
        return (this.zze & 32) != 0;
    }

    public final long zzs() {
        return this.zzn;
    }

    public final String zzt() {
        return this.zzo;
    }

    public final String zzu() {
        return this.zzp;
    }

    public final String zzv() {
        return this.zzq;
    }

    public final String zzw() {
        return this.zzr;
    }

    public final boolean zzx() {
        return (this.zze & 1024) != 0;
    }

    public final int zzy() {
        return this.zzs;
    }

    public final String zzz() {
        return this.zzt;
    }
}
