package p134j4;

import p291y.C4951d;
/* renamed from: j4.s0 */
/* loaded from: classes-dex2jar.jar:j4/s0.class */
public final /* synthetic */ class C3248s0 implements AbstractC3183a1 {

    /* renamed from: a */
    public int f10959a;

    /* renamed from: b */
    public final Object f10960b;

    public /* synthetic */ C3248s0() {
        this.f10960b = new int[10];
    }

    public /* synthetic */ C3248s0(C3187b1 c3187b1, int i) {
        this.f10960b = c3187b1;
        this.f10959a = i;
    }

    /* renamed from: a */
    public int m2511a() {
        return (this.f10959a & 128) != 0 ? ((int[]) this.f10960b)[7] : 65535;
    }

    /* renamed from: b */
    public C3248s0 m2510b(int i, int i2) {
        if (i >= 0) {
            Object obj = this.f10960b;
            if (i < ((int[]) obj).length) {
                this.f10959a = (1 << i) | this.f10959a;
                ((int[]) obj)[i] = i2;
            }
        }
        return this;
    }

    @Override // p134j4.AbstractC3183a1
    public Object zza() {
        C3187b1 c3187b1 = (C3187b1) this.f10960b;
        int i = this.f10959a;
        C3266y0 m2563a = c3187b1.m2563a(i);
        C3263x0 c3263x0 = m2563a.f11065c;
        if (C4951d.m184s(c3263x0.f11054d)) {
            c3187b1.f10730a.m2500c(c3263x0.f11051a, m2563a.f11064b, c3263x0.f11052b);
            C3263x0 c3263x02 = m2563a.f11065c;
            int i2 = c3263x02.f11054d;
            if (i2 != 5 && i2 != 6) {
                return null;
            }
            C3259w c3259w = c3187b1.f10730a;
            String str = c3263x02.f11051a;
            int i3 = m2563a.f11064b;
            long j = c3263x02.f11052b;
            if (!c3259w.m2489n(str, i3, j).exists()) {
                return null;
            }
            C3259w.m2493j(c3259w.m2489n(str, i3, j));
            return null;
        }
        throw new C3233n0(String.format("Could not safely delete session %d because it is not in a terminal state.", Integer.valueOf(i)), i);
    }
}
