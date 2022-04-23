package p131c.p161d.p170b.p224d.p260i.p261a;

import android.net.Uri;
/* renamed from: c.d.b.d.i.a.o5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/o5.class */
public final class RunnableC4775o5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f17301a;

    /* renamed from: b */
    public final /* synthetic */ Uri f17302b;

    /* renamed from: c */
    public final /* synthetic */ String f17303c;

    /* renamed from: d */
    public final /* synthetic */ String f17304d;

    /* renamed from: e */
    public final /* synthetic */ C4748l5 f17305e;

    public RunnableC4775o5(C4748l5 l5Var, boolean z, Uri uri, String str, String str2) {
        this.f17305e = l5Var;
        this.f17301a = z;
        this.f17302b = uri;
        this.f17303c = str;
        this.f17304d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17305e.m24905a(this.f17301a, this.f17302b, this.f17303c, this.f17304d);
    }
}
