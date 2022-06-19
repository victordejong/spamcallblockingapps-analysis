package androidx.viewpager2.adapter;

import android.os.Handler;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/FragmentStateAdapter$5.class */
class FragmentStateAdapter$5 implements AbstractC0795f {

    /* renamed from: d */
    final /* synthetic */ Handler f5133d;

    /* renamed from: e */
    final /* synthetic */ Runnable f5134e;

    @Override // androidx.lifecycle.AbstractC0795f
    /* renamed from: c */
    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.f5133d.removeCallbacks(this.f5134e);
            abstractC0797h.mo32372a().mo32396c(this);
        }
    }
}
