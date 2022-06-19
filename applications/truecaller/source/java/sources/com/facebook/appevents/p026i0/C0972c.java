package com.facebook.appevents.p026i0;

import com.facebook.appevents.p026i0.C0991m;
import com.facebook.internal.C1124c0;
import com.facebook.internal.p037u0.p040m.C1220a;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23271v0;
import s1.z.c.l;
/* renamed from: com.facebook.appevents.i0.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/c.class */
public final /* synthetic */ class C0972c implements C0991m.AbstractC0992a {

    /* renamed from: a */
    public final /* synthetic */ C1124c0 f2675a;

    /* renamed from: b */
    public final /* synthetic */ String f2676b;

    public /* synthetic */ C0972c(C1124c0 c1124c0, String str) {
        this.f2675a = c1124c0;
        this.f2676b = str;
    }

    /* renamed from: a */
    public final void m41955a() {
        C1124c0 c1124c0 = this.f2675a;
        String str = this.f2676b;
        if (C1220a.m41623b(C0980i.class)) {
            return;
        }
        try {
            l.e(str, "$appId");
            boolean z = true;
            boolean z2 = false;
            if (c1124c0 == null || !c1124c0.f3098h) {
                z = false;
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            C23271v0 c23271v0 = C23271v0.f64400a;
            if (!C1220a.m41623b(C23271v0.class)) {
                c23271v0.m7307d();
                z2 = C23271v0.f64407h.m7300a();
            }
            if (!z || !z2) {
                return;
            }
            C0980i.m41952a(str);
        } catch (Throwable th) {
            C1220a.m41624a(th, C0980i.class);
        }
    }
}
