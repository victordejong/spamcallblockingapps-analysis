package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.u */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/u.class */
public class C0647u extends C0641p {

    /* renamed from: q */
    public final /* synthetic */ C0648v f2541q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0647u(C0648v c0648v, Context context) {
        super(context);
        this.f2541q = c0648v;
    }

    @Override // androidx.recyclerview.widget.C0641p, androidx.recyclerview.widget.RecyclerView.AbstractC0589w
    /* renamed from: c */
    public void mo7537c(View view, RecyclerView.C0592x c0592x, RecyclerView.AbstractC0589w.C0590a c0590a) {
        C0648v c0648v = this.f2541q;
        int[] mo7535a = c0648v.mo7535a(c0648v.f2396a.getLayoutManager(), view);
        int i = mo7535a[0];
        int i2 = mo7535a[1];
        int ceil = (int) Math.ceil(mo7536g(Math.max(Math.abs(i), Math.abs(i2))) / 0.3356d);
        if (ceil > 0) {
            c0590a.m7746b(i, i2, ceil, this.f2530j);
        }
    }

    @Override // androidx.recyclerview.widget.C0641p
    /* renamed from: f */
    public float mo4590f(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.C0641p
    /* renamed from: g */
    public int mo7536g(int i) {
        return Math.min(100, super.mo7536g(i));
    }
}
