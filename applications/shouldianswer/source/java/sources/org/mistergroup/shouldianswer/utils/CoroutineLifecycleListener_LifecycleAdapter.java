package org.mistergroup.shouldianswer.utils;

import androidx.lifecycle.AbstractC0894e;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0903k;
import androidx.lifecycle.C0909o;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/CoroutineLifecycleListener_LifecycleAdapter.class */
public class CoroutineLifecycleListener_LifecycleAdapter implements AbstractC0894e {

    /* renamed from: a */
    final CoroutineLifecycleListener f8975a;

    CoroutineLifecycleListener_LifecycleAdapter(CoroutineLifecycleListener coroutineLifecycleListener) {
        this.f8975a = coroutineLifecycleListener;
    }

    @Override // androidx.lifecycle.AbstractC0894e
    /* renamed from: a */
    public void mo233a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a, boolean z, C0909o c0909o) {
        boolean z2 = c0909o != null;
        if (!z && enumC0897a == AbstractC0896g.EnumC0897a.ON_DESTROY) {
            if (z2 && !c0909o.m5085a("cancelCoroutine", 1)) {
                return;
            }
            this.f8975a.cancelCoroutine();
        }
    }
}
