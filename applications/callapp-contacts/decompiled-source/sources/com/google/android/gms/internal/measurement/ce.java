package com.google.android.gms.internal.measurement;

import com.mopub.common.Constants;
import io.objectbox.model.PropertyFlags;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ce.class */
public final class ce extends gl<ce, cd> implements hp {
    public static final /* synthetic */ int zza = 0;
    private static final ce zzaa;
    public long zzB;
    public int zzC;
    public boolean zzF;
    public int zzI;
    private int zzJ;
    private int zzK;
    public long zzM;
    public long zzN;
    public int zzQ;
    private cj zzS;
    public long zzU;
    private long zzV;
    private int zzY;
    private boolean zzZ;
    public int zze;
    public int zzf;
    public int zzg;
    public long zzj;
    public long zzk;
    public long zzl;
    public long zzm;
    public long zzn;
    public int zzs;
    public long zzw;
    public long zzx;
    public boolean zzz;
    public gs<bw> zzh = hy.d();
    public gs<cp> zzi = hy.d();
    public String zzo = "";
    public String zzp = "";
    public String zzq = "";
    public String zzr = "";
    public String zzt = "";
    public String zzu = "";
    public String zzv = "";
    public String zzy = "";
    public String zzA = "";
    public String zzD = "";
    public String zzE = "";
    public gs<br> zzG = hy.d();
    public String zzH = "";
    private String zzL = "";
    public String zzO = "";
    private String zzP = "";
    public String zzR = "";
    private gq zzT = gm.d();
    String zzW = "";
    public String zzX = "";

    static {
        ce ceVar = new ce();
        zzaa = ceVar;
        gl.a(ce.class, ceVar);
    }

    private ce() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar) {
        ceVar.zze |= 1;
        ceVar.zzg = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, int i) {
        ceVar.e();
        ceVar.zzh.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, int i, bw bwVar) {
        bwVar.getClass();
        ceVar.e();
        ceVar.zzh.set(i, bwVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, int i, cp cpVar) {
        cpVar.getClass();
        ceVar.f();
        ceVar.zzi.set(i, cpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, long j) {
        ceVar.zze |= 2;
        ceVar.zzj = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, bw bwVar) {
        bwVar.getClass();
        ceVar.e();
        ceVar.zzh.add(bwVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, cj cjVar) {
        cjVar.getClass();
        ceVar.zzS = cjVar;
        ceVar.zzf |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, cp cpVar) {
        cpVar.getClass();
        ceVar.f();
        ceVar.zzi.add(cpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, Iterable iterable) {
        ceVar.e();
        ey.a(iterable, ceVar.zzh);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= 128;
        ceVar.zzp = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ce ceVar, boolean z) {
        ceVar.zze |= 131072;
        ceVar.zzz = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ce ceVar, int i) {
        ceVar.f();
        ceVar.zzi.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ce ceVar, long j) {
        ceVar.zze |= 4;
        ceVar.zzk = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ce ceVar, Iterable iterable) {
        ceVar.f();
        ey.a(iterable, ceVar.zzi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        ceVar.zzq = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ce ceVar, boolean z) {
        ceVar.zze |= 8388608;
        ceVar.zzF = z;
    }

    public static cd c() {
        return zzaa.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(ce ceVar) {
        ceVar.zze &= -17;
        ceVar.zzm = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(ce ceVar, int i) {
        ceVar.zze |= 1024;
        ceVar.zzs = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(ce ceVar, long j) {
        ceVar.zze |= 8;
        ceVar.zzl = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(ce ceVar, Iterable iterable) {
        gs<br> gsVar = ceVar.zzG;
        if (!gsVar.a()) {
            ceVar.zzG = gl.a(gsVar);
        }
        ey.a(iterable, ceVar.zzG);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= 512;
        ceVar.zzr = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(ce ceVar) {
        ceVar.zze &= -33;
        ceVar.zzn = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(ce ceVar, int i) {
        ceVar.zze |= 1048576;
        ceVar.zzC = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(ce ceVar, long j) {
        ceVar.zze |= 16;
        ceVar.zzm = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(ce ceVar, Iterable iterable) {
        gq gqVar = ceVar.zzT;
        if (!gqVar.a()) {
            int size = gqVar.size();
            ceVar.zzT = gqVar.b(size == 0 ? 10 : size + size);
        }
        ey.a(iterable, ceVar.zzT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= 2048;
        ceVar.zzt = str;
    }

    private final void e() {
        gs<bw> gsVar = this.zzh;
        if (!gsVar.a()) {
            this.zzh = gl.a(gsVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(ce ceVar) {
        ceVar.zze |= 64;
        ceVar.zzo = Constants.ANDROID_PLATFORM;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(ce ceVar, int i) {
        ceVar.zze |= 33554432;
        ceVar.zzI = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(ce ceVar, long j) {
        ceVar.zze |= 32;
        ceVar.zzn = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= 4096;
        ceVar.zzu = str;
    }

    private final void f() {
        gs<cp> gsVar = this.zzi;
        if (!gsVar.a()) {
            this.zzi = gl.a(gsVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void f(ce ceVar) {
        ceVar.zze |= 32768;
        ceVar.zzx = 39065L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void f(ce ceVar, int i) {
        ceVar.zzf |= 2;
        ceVar.zzQ = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void f(ce ceVar, long j) {
        ceVar.zze |= 16384;
        ceVar.zzw = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void f(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= PropertyFlags.UNSIGNED;
        ceVar.zzv = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void g(ce ceVar) {
        ceVar.zze &= -65537;
        ceVar.zzy = zzaa.zzy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void g(ce ceVar, long j) {
        ceVar.zze |= 524288;
        ceVar.zzB = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void g(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= 65536;
        ceVar.zzy = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void h(ce ceVar) {
        ceVar.zze &= -131073;
        ceVar.zzz = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void h(ce ceVar, long j) {
        ceVar.zze |= 536870912;
        ceVar.zzM = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void h(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= 262144;
        ceVar.zzA = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void i(ce ceVar) {
        ceVar.zze &= -262145;
        ceVar.zzA = zzaa.zzA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void i(ce ceVar, long j) {
        ceVar.zze |= 1073741824;
        ceVar.zzN = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void i(ce ceVar, String str) {
        ceVar.zze |= 2097152;
        ceVar.zzD = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void j(ce ceVar) {
        ceVar.zze &= -2097153;
        ceVar.zzD = zzaa.zzD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void j(ce ceVar, long j) {
        ceVar.zzf |= 16;
        ceVar.zzU = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void j(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= 4194304;
        ceVar.zzE = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void k(ce ceVar, long j) {
        ceVar.zzf |= 32;
        ceVar.zzV = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void k(ce ceVar, String str) {
        str.getClass();
        ceVar.zze |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        ceVar.zzH = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void l(ce ceVar) {
        ceVar.zze &= -268435457;
        ceVar.zzL = zzaa.zzL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void l(ce ceVar, String str) {
        str.getClass();
        ceVar.zzf |= 4;
        ceVar.zzR = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void m(ce ceVar) {
        ceVar.zze &= Integer.MAX_VALUE;
        ceVar.zzO = zzaa.zzO;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void m(ce ceVar, String str) {
        str.getClass();
        ceVar.zzf |= 64;
        ceVar.zzW = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void n(ce ceVar, String str) {
        str.getClass();
        ceVar.zzf |= 128;
        ceVar.zzX = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzaa, "\u0001.��\u0002\u00017.��\u0004��\u0001င��\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(7ဇ)", new Object[]{"zze", "zzf", "zzg", "zzh", bw.class, "zzi", cp.class, "zzj", "zzk", "zzl", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzm", "zzF", "zzG", br.class, "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", bp.zzb(), "zzZ"});
        } else if (i2 == 3) {
            return new ce();
        } else {
            if (i2 == 4) {
                return new cd(null);
            }
            if (i2 != 5) {
                return null;
            }
            return zzaa;
        }
    }

    public final boolean a() {
        return (this.zze & 8) != 0;
    }

    public final boolean b() {
        return (this.zzf & 2) != 0;
    }
}
