package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eag.class */
final class eag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ eah f27515a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eag(eah eahVar) {
        this.f27515a = eahVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eah eahVar = this.f27515a;
        if (!(eahVar.w || eahVar.n || eahVar.l == null || !eahVar.m)) {
            int size = eahVar.j.size();
            for (int i = 0; i < size; i++) {
                if (eahVar.j.valueAt(i).f27566c.e() == null) {
                    return;
                }
            }
            eahVar.g.b();
            ebg[] ebgVarArr = new ebg[size];
            eahVar.s = new boolean[size];
            eahVar.r = new boolean[size];
            eahVar.q = eahVar.l.b();
            for (int i2 = 0; i2 < size; i2++) {
                zzht e = eahVar.j.valueAt(i2).f27566c.e();
                ebgVarArr[i2] = new ebg(e);
                String str = e.zzaho;
                boolean z = true;
                if (!ecu.b(str)) {
                    z = ecu.a(str);
                }
                eahVar.s[i2] = z;
                eahVar.t = z | eahVar.t;
            }
            eahVar.p = new ebi(ebgVarArr);
            eahVar.n = true;
            eahVar.f27517b.a(new ebh(eahVar.q, eahVar.l.a()), null);
            eahVar.k.a((eas) eahVar);
        }
    }
}
