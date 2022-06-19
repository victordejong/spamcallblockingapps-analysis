package p193o8;

import android.content.Context;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2779g;
/* renamed from: o8.w */
/* loaded from: classes2-dex2jar.jar:o8/w.class */
public final /* synthetic */ class C3970w implements View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ int f12477a;

    /* renamed from: b */
    public final /* synthetic */ Context f12478b;

    public /* synthetic */ C3970w(Context context, int i) {
        this.f12477a = i;
        this.f12478b = context;
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public final void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        switch (this.f12477a) {
            case 0:
                C2779g.m3132A(this.f12478b);
                return;
            default:
                Context context = this.f12478b;
                C2779g.m3127F(context, C2779g.m3105j(context), "");
                return;
        }
    }
}
