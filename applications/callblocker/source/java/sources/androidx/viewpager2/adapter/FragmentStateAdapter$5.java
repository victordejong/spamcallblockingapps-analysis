package androidx.viewpager2.adapter;

import android.os.Handler;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0867f;
import androidx.lifecycle.AbstractC0869h;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/FragmentStateAdapter$5.class */
class FragmentStateAdapter$5 implements AbstractC0867f {

    /* renamed from: a */
    final /* synthetic */ Handler f3840a;

    /* renamed from: b */
    final /* synthetic */ Runnable f3841b;

    @Override // androidx.lifecycle.AbstractC0867f
    /* renamed from: a */
    public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
        if (enumC0865a == AbstractC0864e.EnumC0865a.ON_DESTROY) {
            this.f3840a.removeCallbacks(this.f3841b);
            abstractC0869h.mo19203b().mo19214b(this);
        }
    }
}
