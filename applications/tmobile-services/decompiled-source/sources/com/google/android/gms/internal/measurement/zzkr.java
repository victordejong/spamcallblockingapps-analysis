package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkr.class */
abstract class zzkr<T, B> {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract B mo12132a();

    /* renamed from: b */
    abstract T mo12131b(B b);

    /* renamed from: c */
    abstract void mo12130c(B b, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public abstract void mo12129d(B b, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract void mo12128e(B b, int i, zzgr zzgrVar);

    /* renamed from: f */
    abstract void mo12127f(B b, int i, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public abstract void mo12126g(T t, zzlo zzloVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public abstract void mo12125h(Object obj, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public abstract boolean mo12124i(zzka zzkaVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final boolean m12133j(B b, zzka zzkaVar) throws IOException {
        int zzb = zzkaVar.zzb();
        int i = zzb >>> 3;
        int i2 = zzb & 7;
        if (i2 == 0) {
            mo12129d(b, i, zzkaVar.mo12222q());
            return true;
        } else if (i2 == 1) {
            mo12122l(b, i, zzkaVar.mo12226l());
            return true;
        } else if (i2 == 2) {
            mo12128e(b, i, zzkaVar.mo12225m());
            return true;
        } else if (i2 == 3) {
            B a = mo12132a();
            while (zzkaVar.zza() != Integer.MAX_VALUE && m12133j(a, zzkaVar)) {
            }
            if ((4 | (i << 3)) == zzkaVar.zzb()) {
                mo12127f(b, i, mo12131b(a));
                return true;
            }
            throw zzih.m12381e();
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                mo12130c(b, i, zzkaVar.mo12221s());
                return true;
            }
            throw zzih.m12380f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public abstract T mo12123k(Object obj);

    /* renamed from: l */
    abstract void mo12122l(B b, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public abstract void mo12121m(T t, zzlo zzloVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public abstract void mo12120n(Object obj, B b);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public abstract B mo12119o(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public abstract T mo12118p(T t, T t2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public abstract void mo12117q(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public abstract int mo12116r(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public abstract int mo12115s(T t);
}
