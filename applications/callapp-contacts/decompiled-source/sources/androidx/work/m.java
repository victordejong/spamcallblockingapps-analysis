package androidx.work;

import android.os.Build;
import androidx.work.v;
/* loaded from: classes-dex2jar.jar:androidx/work/m.class */
public final class m extends v {

    /* loaded from: classes-dex2jar.jar:androidx/work/m$a.class */
    public static final class a extends v.a<a, m> {
        public a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.f6244c.inputMergerClassName = OverwritingInputMerger.class.getName();
        }

        @Override // androidx.work.v.a
        final /* bridge */ /* synthetic */ a a() {
            return this;
        }

        @Override // androidx.work.v.a
        final /* synthetic */ m b() {
            if (this.f6242a && Build.VERSION.SDK_INT >= 23 && this.f6244c.constraints.f5968d) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            } else if (!this.f6244c.runInForeground || Build.VERSION.SDK_INT < 23 || !this.f6244c.constraints.f5968d) {
                return new m(this);
            } else {
                throw new IllegalArgumentException("Cannot run in foreground with an idle mode constraint");
            }
        }
    }

    m(a aVar) {
        super(aVar.f6243b, aVar.f6244c, aVar.f6245d);
    }
}
