package com.google.android.gms.internal.measurement;

import com.mopub.common.Constants;
import io.objectbox.model.PropertyFlags;
import okhttp3.internal.http2.Http2Connection;
/* renamed from: com.google.android.gms.internal.measurement.ce */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ce.class */
public final class C13411ce extends AbstractC13526gl<C13411ce, C13410cd> implements AbstractC13557hp {
    public static final /* synthetic */ int zza = 0;
    private static final C13411ce zzaa;
    public long zzB;
    public int zzC;
    public boolean zzF;
    public int zzI;
    private int zzJ;
    private int zzK;
    public long zzM;
    public long zzN;
    public int zzQ;
    private C13416cj zzS;
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
    public AbstractC13533gs<C13402bw> zzh = C13566hy.m12660d();
    public AbstractC13533gs<C13422cp> zzi = C13566hy.m12660d();
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
    public AbstractC13533gs<C13397br> zzG = C13566hy.m12660d();
    public String zzH = "";
    private String zzL = "";
    public String zzO = "";
    private String zzP = "";
    public String zzR = "";
    private AbstractC13531gq zzT = C13527gm.m12756d();
    String zzW = "";
    public String zzX = "";

    static {
        C13411ce c13411ce = new C13411ce();
        zzaa = c13411ce;
        AbstractC13526gl.m12763a(C13411ce.class, c13411ce);
    }

    private C13411ce() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13047a(C13411ce c13411ce) {
        c13411ce.zze |= 1;
        c13411ce.zzg = 1;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13046a(C13411ce c13411ce, int i) {
        c13411ce.m13017e();
        c13411ce.zzh.remove(i);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13045a(C13411ce c13411ce, int i, C13402bw c13402bw) {
        c13402bw.getClass();
        c13411ce.m13017e();
        c13411ce.zzh.set(i, c13402bw);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13044a(C13411ce c13411ce, int i, C13422cp c13422cp) {
        c13422cp.getClass();
        c13411ce.m13012f();
        c13411ce.zzi.set(i, c13422cp);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13043a(C13411ce c13411ce, long j) {
        c13411ce.zze |= 2;
        c13411ce.zzj = j;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13042a(C13411ce c13411ce, C13402bw c13402bw) {
        c13402bw.getClass();
        c13411ce.m13017e();
        c13411ce.zzh.add(c13402bw);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13041a(C13411ce c13411ce, C13416cj c13416cj) {
        c13416cj.getClass();
        c13411ce.zzS = c13416cj;
        c13411ce.zzf |= 8;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13040a(C13411ce c13411ce, C13422cp c13422cp) {
        c13422cp.getClass();
        c13411ce.m13012f();
        c13411ce.zzi.add(c13422cp);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13039a(C13411ce c13411ce, Iterable iterable) {
        c13411ce.m13017e();
        AbstractC13485ey.m12887a(iterable, c13411ce.zzh);
    }

    /* renamed from: a */
    public static /* synthetic */ void m13038a(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= 128;
        c13411ce.zzp = str;
    }

    /* renamed from: a */
    public static /* synthetic */ void m13037a(C13411ce c13411ce, boolean z) {
        c13411ce.zze |= 131072;
        c13411ce.zzz = z;
    }

    /* renamed from: b */
    public static /* synthetic */ void m13034b(C13411ce c13411ce, int i) {
        c13411ce.m13012f();
        c13411ce.zzi.remove(i);
    }

    /* renamed from: b */
    public static /* synthetic */ void m13033b(C13411ce c13411ce, long j) {
        c13411ce.zze |= 4;
        c13411ce.zzk = j;
    }

    /* renamed from: b */
    public static /* synthetic */ void m13032b(C13411ce c13411ce, Iterable iterable) {
        c13411ce.m13012f();
        AbstractC13485ey.m12887a(iterable, c13411ce.zzi);
    }

    /* renamed from: b */
    public static /* synthetic */ void m13031b(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        c13411ce.zzq = str;
    }

    /* renamed from: b */
    public static /* synthetic */ void m13030b(C13411ce c13411ce, boolean z) {
        c13411ce.zze |= 8388608;
        c13411ce.zzF = z;
    }

    /* renamed from: c */
    public static C13410cd m13029c() {
        return zzaa.m12759l();
    }

    /* renamed from: c */
    public static /* synthetic */ void m13028c(C13411ce c13411ce) {
        c13411ce.zze &= -17;
        c13411ce.zzm = 0L;
    }

    /* renamed from: c */
    public static /* synthetic */ void m13027c(C13411ce c13411ce, int i) {
        c13411ce.zze |= 1024;
        c13411ce.zzs = i;
    }

    /* renamed from: c */
    public static /* synthetic */ void m13026c(C13411ce c13411ce, long j) {
        c13411ce.zze |= 8;
        c13411ce.zzl = j;
    }

    /* renamed from: c */
    public static /* synthetic */ void m13025c(C13411ce c13411ce, Iterable iterable) {
        AbstractC13533gs<C13397br> abstractC13533gs = c13411ce.zzG;
        if (!abstractC13533gs.mo12750a()) {
            c13411ce.zzG = AbstractC13526gl.m12766a(abstractC13533gs);
        }
        AbstractC13485ey.m12887a(iterable, c13411ce.zzG);
    }

    /* renamed from: c */
    public static /* synthetic */ void m13024c(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= 512;
        c13411ce.zzr = str;
    }

    /* renamed from: d */
    public static /* synthetic */ void m13022d(C13411ce c13411ce) {
        c13411ce.zze &= -33;
        c13411ce.zzn = 0L;
    }

    /* renamed from: d */
    public static /* synthetic */ void m13021d(C13411ce c13411ce, int i) {
        c13411ce.zze |= 1048576;
        c13411ce.zzC = i;
    }

    /* renamed from: d */
    public static /* synthetic */ void m13020d(C13411ce c13411ce, long j) {
        c13411ce.zze |= 16;
        c13411ce.zzm = j;
    }

    /* renamed from: d */
    public static /* synthetic */ void m13019d(C13411ce c13411ce, Iterable iterable) {
        AbstractC13531gq abstractC13531gq = c13411ce.zzT;
        if (!abstractC13531gq.mo12750a()) {
            int size = abstractC13531gq.size();
            c13411ce.zzT = abstractC13531gq.mo12751b(size == 0 ? 10 : size + size);
        }
        AbstractC13485ey.m12887a(iterable, c13411ce.zzT);
    }

    /* renamed from: d */
    public static /* synthetic */ void m13018d(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= 2048;
        c13411ce.zzt = str;
    }

    /* renamed from: e */
    private final void m13017e() {
        AbstractC13533gs<C13402bw> abstractC13533gs = this.zzh;
        if (!abstractC13533gs.mo12750a()) {
            this.zzh = AbstractC13526gl.m12766a(abstractC13533gs);
        }
    }

    /* renamed from: e */
    public static /* synthetic */ void m13016e(C13411ce c13411ce) {
        c13411ce.zze |= 64;
        c13411ce.zzo = Constants.ANDROID_PLATFORM;
    }

    /* renamed from: e */
    public static /* synthetic */ void m13015e(C13411ce c13411ce, int i) {
        c13411ce.zze |= 33554432;
        c13411ce.zzI = i;
    }

    /* renamed from: e */
    public static /* synthetic */ void m13014e(C13411ce c13411ce, long j) {
        c13411ce.zze |= 32;
        c13411ce.zzn = j;
    }

    /* renamed from: e */
    public static /* synthetic */ void m13013e(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= 4096;
        c13411ce.zzu = str;
    }

    /* renamed from: f */
    private final void m13012f() {
        AbstractC13533gs<C13422cp> abstractC13533gs = this.zzi;
        if (!abstractC13533gs.mo12750a()) {
            this.zzi = AbstractC13526gl.m12766a(abstractC13533gs);
        }
    }

    /* renamed from: f */
    public static /* synthetic */ void m13011f(C13411ce c13411ce) {
        c13411ce.zze |= 32768;
        c13411ce.zzx = 39065L;
    }

    /* renamed from: f */
    public static /* synthetic */ void m13010f(C13411ce c13411ce, int i) {
        c13411ce.zzf |= 2;
        c13411ce.zzQ = i;
    }

    /* renamed from: f */
    public static /* synthetic */ void m13009f(C13411ce c13411ce, long j) {
        c13411ce.zze |= 16384;
        c13411ce.zzw = j;
    }

    /* renamed from: f */
    public static /* synthetic */ void m13008f(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= PropertyFlags.UNSIGNED;
        c13411ce.zzv = str;
    }

    /* renamed from: g */
    public static /* synthetic */ void m13007g(C13411ce c13411ce) {
        c13411ce.zze &= -65537;
        c13411ce.zzy = zzaa.zzy;
    }

    /* renamed from: g */
    public static /* synthetic */ void m13006g(C13411ce c13411ce, long j) {
        c13411ce.zze |= 524288;
        c13411ce.zzB = j;
    }

    /* renamed from: g */
    public static /* synthetic */ void m13005g(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= 65536;
        c13411ce.zzy = str;
    }

    /* renamed from: h */
    public static /* synthetic */ void m13004h(C13411ce c13411ce) {
        c13411ce.zze &= -131073;
        c13411ce.zzz = false;
    }

    /* renamed from: h */
    public static /* synthetic */ void m13003h(C13411ce c13411ce, long j) {
        c13411ce.zze |= 536870912;
        c13411ce.zzM = j;
    }

    /* renamed from: h */
    public static /* synthetic */ void m13002h(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= 262144;
        c13411ce.zzA = str;
    }

    /* renamed from: i */
    public static /* synthetic */ void m13001i(C13411ce c13411ce) {
        c13411ce.zze &= -262145;
        c13411ce.zzA = zzaa.zzA;
    }

    /* renamed from: i */
    public static /* synthetic */ void m13000i(C13411ce c13411ce, long j) {
        c13411ce.zze |= 1073741824;
        c13411ce.zzN = j;
    }

    /* renamed from: i */
    public static /* synthetic */ void m12999i(C13411ce c13411ce, String str) {
        c13411ce.zze |= 2097152;
        c13411ce.zzD = str;
    }

    /* renamed from: j */
    public static /* synthetic */ void m12998j(C13411ce c13411ce) {
        c13411ce.zze &= -2097153;
        c13411ce.zzD = zzaa.zzD;
    }

    /* renamed from: j */
    public static /* synthetic */ void m12997j(C13411ce c13411ce, long j) {
        c13411ce.zzf |= 16;
        c13411ce.zzU = j;
    }

    /* renamed from: j */
    public static /* synthetic */ void m12996j(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= 4194304;
        c13411ce.zzE = str;
    }

    /* renamed from: k */
    public static /* synthetic */ void m12994k(C13411ce c13411ce, long j) {
        c13411ce.zzf |= 32;
        c13411ce.zzV = j;
    }

    /* renamed from: k */
    public static /* synthetic */ void m12993k(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zze |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        c13411ce.zzH = str;
    }

    /* renamed from: l */
    public static /* synthetic */ void m12992l(C13411ce c13411ce) {
        c13411ce.zze &= -268435457;
        c13411ce.zzL = zzaa.zzL;
    }

    /* renamed from: l */
    public static /* synthetic */ void m12991l(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zzf |= 4;
        c13411ce.zzR = str;
    }

    /* renamed from: m */
    public static /* synthetic */ void m12990m(C13411ce c13411ce) {
        c13411ce.zze &= Integer.MAX_VALUE;
        c13411ce.zzO = zzaa.zzO;
    }

    /* renamed from: m */
    public static /* synthetic */ void m12989m(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zzf |= 64;
        c13411ce.zzW = str;
    }

    /* renamed from: n */
    public static /* synthetic */ void m12988n(C13411ce c13411ce, String str) {
        str.getClass();
        c13411ce.zzf |= 128;
        c13411ce.zzX = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzaa, "\u0001.��\u0002\u00017.��\u0004��\u0001င��\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(7ဇ)", new Object[]{"zze", "zzf", "zzg", "zzh", C13402bw.class, "zzi", C13422cp.class, "zzj", "zzk", "zzl", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzm", "zzF", "zzG", C13397br.class, "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", EnumC13395bp.zzb(), "zzZ"});
            } else if (i2 == 3) {
                return new C13411ce();
            } else {
                if (i2 == 4) {
                    return new C13410cd(null);
                }
                if (i2 == 5) {
                    return zzaa;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    /* renamed from: a */
    public final boolean m13048a() {
        return (this.zze & 8) != 0;
    }

    /* renamed from: b */
    public final boolean m13036b() {
        return (this.zzf & 2) != 0;
    }
}
