package p124i4;

import android.app.Activity;
import android.content.Context;
import android.content.IntentSender;
import android.os.Handler;
import android.os.Looper;
import p095f8.C2781i;
import p220r4.C4203l;
import p220r4.C4206o;
import p291y.C4951d;
/* renamed from: i4.h */
/* loaded from: classes-dex2jar.jar:i4/h.class */
public final class C3106h implements AbstractC3100b {

    /* renamed from: a */
    public final C3116r f10522a;

    /* renamed from: b */
    public final C3104f f10523b;

    /* renamed from: c */
    public final Context f10524c;

    public C3106h(C3116r c3116r, C3104f c3104f, Context context) {
        new Handler(Looper.getMainLooper());
        this.f10522a = c3116r;
        this.f10523b = c3104f;
        this.f10524c = context;
    }

    @Override // p124i4.AbstractC3100b
    /* renamed from: a */
    public final void mo2612a(C2781i c2781i) {
        synchronized (this) {
            C3104f c3104f = this.f10523b;
            synchronized (c3104f) {
                c3104f.f12626a.m1507e("unregisterListener", new Object[0]);
                C4951d.m187p(c2781i, "Unregistered Play Core listener should not be null.");
                c3104f.f12629d.remove(c2781i);
                c3104f.m1514b();
            }
        }
    }

    @Override // p124i4.AbstractC3100b
    /* renamed from: b */
    public final void mo2611b(C2781i c2781i) {
        synchronized (this) {
            C3104f c3104f = this.f10523b;
            synchronized (c3104f) {
                c3104f.f12626a.m1507e("registerListener", new Object[0]);
                C4951d.m187p(c2781i, "Registered Play Core listener should not be null.");
                c3104f.f12629d.add(c2781i);
                c3104f.m1514b();
            }
        }
    }

    @Override // p124i4.AbstractC3100b
    /* renamed from: c */
    public final C4206o mo2610c() {
        C4206o c4206o;
        C3116r c3116r = this.f10522a;
        String packageName = this.f10524c.getPackageName();
        if (c3116r.f10546a == null) {
            c4206o = C3116r.m2602c();
        } else {
            C3116r.f10544e.m1507e("completeUpdate(%s)", packageName);
            C4203l c4203l = new C4203l();
            c3116r.f10546a.m1748b(new C3112n(c3116r, c4203l, c4203l, packageName), c4203l);
            c4206o = c4203l.f13196a;
        }
        return c4206o;
    }

    @Override // p124i4.AbstractC3100b
    /* renamed from: d */
    public final C4206o mo2609d() {
        C4206o c4206o;
        C3116r c3116r = this.f10522a;
        String packageName = this.f10524c.getPackageName();
        if (c3116r.f10546a == null) {
            c4206o = C3116r.m2602c();
        } else {
            C3116r.f10544e.m1507e("requestUpdateInfo(%s)", packageName);
            C4203l c4203l = new C4203l();
            c3116r.f10546a.m1748b(new C3111m(c3116r, c4203l, packageName, c4203l), c4203l);
            c4206o = c4203l.f13196a;
        }
        return c4206o;
    }

    @Override // p124i4.AbstractC3100b
    /* renamed from: e */
    public final boolean mo2608e(C3099a c3099a, int i, Activity activity, int i2) throws IntentSender.SendIntentException {
        AbstractC3101c m2652c = AbstractC3101c.m2652c(i);
        if (activity == null) {
            return false;
        }
        boolean z = false;
        if (c3099a != null) {
            z = false;
            if (c3099a.m2654a(m2652c) != null) {
                if (c3099a.f10496i) {
                    z = false;
                } else {
                    c3099a.f10496i = true;
                    activity.startIntentSenderForResult(c3099a.m2654a(m2652c).getIntentSender(), i2, null, 0, 0, 0, null);
                    z = true;
                }
            }
        }
        return z;
    }
}
