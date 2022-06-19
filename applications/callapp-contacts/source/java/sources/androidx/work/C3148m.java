package androidx.work;

import android.os.Build;
import androidx.work.AbstractC3166v;
/* renamed from: androidx.work.m */
/* loaded from: classes-dex2jar.jar:androidx/work/m.class */
public final class C3148m extends AbstractC3166v {

    /* renamed from: androidx.work.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/m$a.class */
    public static final class C3149a extends AbstractC3166v.AbstractC3167a<C3149a, C3148m> {
        public C3149a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.f11524c.inputMergerClassName = OverwritingInputMerger.class.getName();
        }

        @Override // androidx.work.AbstractC3166v.AbstractC3167a
        /* renamed from: a */
        final /* bridge */ /* synthetic */ C3149a mo39260a() {
            return this;
        }

        @Override // androidx.work.AbstractC3166v.AbstractC3167a
        /* renamed from: b */
        final /* synthetic */ C3148m mo39255b() {
            if (!this.f11522a || Build.VERSION.SDK_INT < 23 || !this.f11524c.constraints.f11132d) {
                if (this.f11524c.runInForeground && Build.VERSION.SDK_INT >= 23 && this.f11524c.constraints.f11132d) {
                    throw new IllegalArgumentException("Cannot run in foreground with an idle mode constraint");
                }
                return new C3148m(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }
    }

    C3148m(C3149a c3149a) {
        super(c3149a.f11523b, c3149a.f11524c, c3149a.f11525d);
    }
}
