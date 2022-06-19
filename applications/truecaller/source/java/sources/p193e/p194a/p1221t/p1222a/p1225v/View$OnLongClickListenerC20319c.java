package p193e.p194a.p1221t.p1222a.p1225v;

import android.view.View;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1225v.C20316a;
/* renamed from: e.a.t.a.v.c */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/v/c.class */
public final class View$OnLongClickListenerC20319c implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ C20316a f57135a;

    /* renamed from: b */
    public final /* synthetic */ C20316a.C20317a f57136b;

    public View$OnLongClickListenerC20319c(C20316a c20316a, C20316a.C20317a c20317a) {
        this.f57135a = c20316a;
        this.f57136b = c20317a;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        boolean z;
        C20316a.C20317a c20317a = this.f57136b;
        C20309d c20309d = c20317a.f57131a;
        if (c20309d != null) {
            AbstractC20300o abstractC20300o = this.f57135a.f57130b;
            Boolean valueOf = abstractC20300o != null ? Boolean.valueOf(abstractC20300o.mo11245c(c20317a.f57132b, c20309d)) : null;
            if (valueOf != null) {
                z = valueOf.booleanValue();
                return z;
            }
        }
        z = false;
        return z;
    }
}
