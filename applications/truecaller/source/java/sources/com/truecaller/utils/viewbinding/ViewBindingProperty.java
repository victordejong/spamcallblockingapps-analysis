package com.truecaller.utils.viewbinding;

import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import p1727n3.p1806j0.AbstractC26410a;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
import s1.z.b.l;
import s1.z.c.f;
/* loaded from: classes15-dex2jar.jar:com/truecaller/utils/viewbinding/ViewBindingProperty.class */
public abstract class ViewBindingProperty<R, T extends AbstractC26410a> {

    /* renamed from: a */
    public T f15974a;

    /* renamed from: b */
    public final l<R, T> f15975b;

    /* renamed from: d */
    public static final C4717a f15973d = new C4717a(null);

    /* renamed from: c */
    public static final Handler f15972c = new Handler(Looper.getMainLooper());

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;", "Ln3/v/a0;", "Ln3/v/b0;", "owner", "Ls1/s;", "onDestroy", "(Ln3/v/b0;)V", "<init>", "(Lcom/truecaller/utils/viewbinding/ViewBindingProperty;)V", "utils_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes15-dex2jar.jar:com/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver.class */
    public final class ClearOnDestroyLifecycleObserver implements AbstractC26985a0 {

        /* renamed from: com.truecaller.utils.viewbinding.ViewBindingProperty$ClearOnDestroyLifecycleObserver$a */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver$a.class */
        public static final class RunnableC4716a implements Runnable {
            public RunnableC4716a() {
                ClearOnDestroyLifecycleObserver.this = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ViewBindingProperty.this.f15974a = null;
            }
        }

        public ClearOnDestroyLifecycleObserver() {
            ViewBindingProperty.this = r4;
        }

        @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_DESTROY)
        public final void onDestroy(AbstractC26992b0 abstractC26992b0) {
            s1.z.c.l.e(abstractC26992b0, "owner");
            C26994c0 c26994c0 = (C26994c0) abstractC26992b0.getLifecycle();
            c26994c0.m1020d("removeObserver");
            c26994c0.f75500b.mo3103e(this);
            Handler handler = ViewBindingProperty.f15972c;
            C4717a c4717a = ViewBindingProperty.f15973d;
            ViewBindingProperty.f15972c.post(new RunnableC4716a());
        }
    }

    /* renamed from: com.truecaller.utils.viewbinding.ViewBindingProperty$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/utils/viewbinding/ViewBindingProperty$a.class */
    public static final class C4717a {
        public C4717a(f fVar) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewBindingProperty(l<? super R, ? extends T> lVar) {
        s1.z.c.l.e(lVar, "viewBinder");
        this.f15975b = lVar;
    }

    /* renamed from: a */
    public abstract AbstractC26992b0 mo13419a(R r);

    /* renamed from: b */
    public T m34468b(R r, s1.a.l<?> lVar) {
        s1.z.c.l.e(r, "thisRef");
        s1.z.c.l.e(lVar, "property");
        T t = this.f15974a;
        if (t != null) {
            return t;
        }
        AbstractC27028u lifecycle = mo13419a(r).getLifecycle();
        s1.z.c.l.d(lifecycle, "getLifecycleOwner(thisRef).lifecycle");
        T t2 = (T) this.f15975b.d(r);
        if (((C26994c0) lifecycle).f75501c != AbstractC27028u.EnumC27030b.DESTROYED) {
            lifecycle.mo988a(new ClearOnDestroyLifecycleObserver());
            this.f15974a = t2;
        }
        return t2;
    }
}
