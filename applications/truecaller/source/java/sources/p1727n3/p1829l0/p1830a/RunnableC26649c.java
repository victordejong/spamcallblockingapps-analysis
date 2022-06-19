package p1727n3.p1829l0.p1830a;

import androidx.viewpager2.adapter.FragmentStateAdapter;
/* renamed from: n3.l0.a.c */
/* loaded from: classes-dex2jar.jar:n3/l0/a/c.class */
public class RunnableC26649c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ FragmentStateAdapter f74591a;

    public RunnableC26649c(FragmentStateAdapter fragmentStateAdapter) {
        this.f74591a = fragmentStateAdapter;
    }

    @Override // java.lang.Runnable
    public void run() {
        FragmentStateAdapter fragmentStateAdapter = this.f74591a;
        fragmentStateAdapter.f1510g = false;
        fragmentStateAdapter.m42631i();
    }
}
