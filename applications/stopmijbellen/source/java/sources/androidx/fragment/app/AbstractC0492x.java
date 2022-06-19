package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import p124i4.C3102d;
/* renamed from: androidx.fragment.app.x */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/x.class */
public abstract class AbstractC0492x<E> extends AbstractC0477t {

    /* renamed from: a */
    public final Activity f1981a;

    /* renamed from: b */
    public final Context f1982b;

    /* renamed from: c */
    public final Handler f1983c;

    /* renamed from: d */
    public final AbstractC0397a0 f1984d = new C0415b0();

    public AbstractC0492x(ActivityC0455o activityC0455o) {
        Handler handler = new Handler();
        this.f1981a = activityC0455o;
        C3102d.m2628k(activityC0455o, "context == null");
        this.f1982b = activityC0455o;
        this.f1983c = handler;
    }

    /* renamed from: e */
    public abstract E mo8035e();

    /* renamed from: f */
    public abstract LayoutInflater mo8034f();

    /* renamed from: g */
    public abstract boolean mo8033g(Fragment fragment);

    /* renamed from: h */
    public abstract boolean mo8032h(String str);

    /* renamed from: j */
    public abstract void mo8031j();
}
