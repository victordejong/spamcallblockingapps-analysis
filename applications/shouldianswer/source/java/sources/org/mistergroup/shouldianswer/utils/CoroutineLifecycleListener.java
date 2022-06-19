package org.mistergroup.shouldianswer.utils;

import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0902j;
import androidx.lifecycle.AbstractC0912r;
import kotlinx.coroutines.AbstractC1793ak;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/CoroutineLifecycleListener.class */
public final class CoroutineLifecycleListener implements AbstractC0902j {

    /* renamed from: a */
    private final AbstractC1793ak<?> f8974a;

    @AbstractC0912r(m5083a = AbstractC0896g.EnumC0897a.ON_DESTROY)
    public final void cancelCoroutine() {
        if (!this.f8974a.mo2755l()) {
            this.f8974a.mo2752o();
        }
    }
}
