package androidx.lifecycle;

import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/Transformations.class */
public class Transformations {

    /* renamed from: androidx.lifecycle.Transformations$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Transformations$1.class */
    final class C03791 implements Observer<X> {

        /* renamed from: a */
        final /* synthetic */ MediatorLiveData f4100a;

        /* renamed from: b */
        final /* synthetic */ Function f4101b;

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void mo6485a(@Nullable X x) {
            this.f4100a.mo18127o(this.f4101b.apply(x));
        }
    }

    /* renamed from: androidx.lifecycle.Transformations$2 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Transformations$2.class */
    final class C03802 implements Observer<X> {

        /* renamed from: a */
        LiveData<Y> f4102a;

        /* renamed from: b */
        final /* synthetic */ Function f4103b;

        /* renamed from: c */
        final /* synthetic */ MediatorLiveData f4104c;

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void mo6485a(@Nullable X x) {
            LiveData<Y> liveData = (LiveData) this.f4103b.apply(x);
            Object obj = this.f4102a;
            if (obj != liveData) {
                if (obj != null) {
                    this.f4104c.m18191q(obj);
                }
                this.f4102a = liveData;
                if (liveData != 0) {
                    this.f4104c.m18192p(liveData, new Observer<Y>() { // from class: androidx.lifecycle.Transformations.2.1
                        @Override // androidx.lifecycle.Observer
                        /* renamed from: a */
                        public void mo6485a(@Nullable Y y) {
                            C03802.this.f4104c.mo18127o(y);
                        }
                    });
                }
            }
        }
    }

    /* renamed from: androidx.lifecycle.Transformations$3 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Transformations$3.class */
    final class C03823 implements Observer<X> {

        /* renamed from: a */
        boolean f4106a;

        /* renamed from: b */
        final /* synthetic */ MediatorLiveData f4107b;

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void mo6485a(X x) {
            T e = this.f4107b.m18202e();
            if (this.f4106a || ((e == 0 && x != 0) || (e != 0 && !e.equals(x)))) {
                this.f4106a = false;
                this.f4107b.mo18127o(x);
            }
        }
    }

    private Transformations() {
    }
}
