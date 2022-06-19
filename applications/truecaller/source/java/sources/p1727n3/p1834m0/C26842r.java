package p1727n3.p1834m0;

import androidx.work.ListenableWorker;
import androidx.work.OverwritingInputMerger;
import p1727n3.p1834m0.AbstractC26858z;
/* renamed from: n3.m0.r */
/* loaded from: classes-dex2jar.jar:n3/m0/r.class */
public final class C26842r extends AbstractC26858z {

    /* renamed from: n3.m0.r$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/r$a.class */
    public static final class C26843a extends AbstractC26858z.AbstractC26859a<C26843a, C26842r> {
        public C26843a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.f75127c.f74905d = OverwritingInputMerger.class.getName();
        }

        @Override // p1727n3.p1834m0.AbstractC26858z.AbstractC26859a
        /* renamed from: c */
        public C26842r mo1271c() {
            if (!this.f75125a || !this.f75127c.f74911j.f75060c) {
                return new C26842r(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }

        @Override // p1727n3.p1834m0.AbstractC26858z.AbstractC26859a
        /* renamed from: d */
        public C26843a mo1270d() {
            return this;
        }
    }

    public C26842r(C26843a c26843a) {
        super(c26843a.f75126b, c26843a.f75127c, c26843a.f75128d);
    }
}
