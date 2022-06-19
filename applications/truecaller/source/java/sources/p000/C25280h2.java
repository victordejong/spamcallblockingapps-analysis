package p000;

import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: h2 */
/* loaded from: classes4-dex2jar.jar:h2.class */
public final class C25280h2 extends m implements a<Boolean> {

    /* renamed from: c */
    public static final C25280h2 f70722c = new C25280h2(0);

    /* renamed from: d */
    public static final C25280h2 f70723d = new C25280h2(1);

    /* renamed from: e */
    public static final C25280h2 f70724e = new C25280h2(2);

    /* renamed from: b */
    public final /* synthetic */ int f70725b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25280h2(int i) {
        super(0);
        this.f70725b = i;
    }

    public final Object invoke() {
        int i = this.f70725b;
        if (i != 0) {
            boolean z = true;
            if (i == 1) {
                return Boolean.valueOf(C17422k.m16098T());
            }
            if (i != 2) {
                throw null;
            }
            if (C10480a.m25900s0() == null) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        return Boolean.valueOf(C15571h.m18636o("qaServer"));
    }
}
