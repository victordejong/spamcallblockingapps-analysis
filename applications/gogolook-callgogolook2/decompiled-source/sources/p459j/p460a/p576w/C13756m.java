package p459j.p460a.p576w;

import com.appsflyer.share.Constants;
import gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject;
import p459j.p460a.p576w.p578o.C13794a;
import p459j.p460a.p576w.p578o.C13803i;
import p459j.p460a.p576w.p578o.C13804j;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.m */
/* loaded from: classes2-dex2jar.jar:j/a/w/m.class */
public final class C13756m {

    /* renamed from: a */
    public static final C13756m f30868a = new C13756m();

    /* renamed from: a */
    public final void m3510a(int i, int i2, String str, Integer num) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("ver", (Integer) 1);
        aVar.m1808a("old_state", Integer.valueOf(i));
        aVar.m1808a("new_state", Integer.valueOf(i2));
        if (str == null) {
            str = "none";
        }
        aVar.m1807a(Constants.URL_MEDIA_SOURCE, str);
        if (num == null) {
            num = -1;
        }
        aVar.m1808a("cancelled_reason", num);
        C14296p.m1830a("whoscall_iap_subscription_state", aVar.m1811a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004e, code lost:
        if (r6 != null) goto L_0x0057;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3509a(p459j.p460a.p576w.p578o.C13804j r6) {
        /*
            r5 = this;
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            j.a.w.o.i r0 = r0.m3401b()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0030
            r0 = r8
            java.lang.Long r0 = r0.m3406e()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0030
            r0 = r8
            long r0 = r0.longValue()
            r9 = r0
            j.a.w0.h2 r0 = p459j.p460a.p582w0.C14021h2.f31457a
            r1 = r9
            double r0 = r0.m2796a(r1)
            float r0 = (float) r0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            r8 = r0
            goto L_0x0035
        L_0x0030:
            r0 = 0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            r8 = r0
        L_0x0035:
            r0 = r7
            java.lang.String r1 = "af_price"
            r2 = r8
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r6
            j.a.w.o.i r0 = r0.m3401b()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0054
            r0 = r6
            java.lang.String r0 = r0.m3405f()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0054
            goto L_0x0057
        L_0x0054:
            java.lang.String r0 = ""
            r6 = r0
        L_0x0057:
            r0 = r7
            java.lang.String r1 = "af_currency"
            r2 = r6
            java.lang.Object r0 = r0.put(r1, r2)
            com.appsflyer.AppsFlyerLib r0 = com.appsflyer.AppsFlyerLib.getInstance()
            android.content.Context r1 = gogolook.callgogolook2.MyApplication.m29013o()
            java.lang.String r2 = "af_start_trial"
            r3 = r7
            r0.trackEvent(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.C13756m.m3509a(j.a.w.o.j):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0053, code lost:
        if (r11 != null) goto L_0x005d;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3508a(p459j.p460a.p576w.p578o.C13804j r7, gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject r8) {
        /*
            r6 = this;
            r0 = r7
            j.a.w.o.i r0 = r0.m3401b()
            r9 = r0
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0035
            r0 = r9
            java.lang.Long r0 = r0.m3406e()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0035
            r0 = r11
            long r0 = r0.longValue()
            r12 = r0
            j.a.w0.h2 r0 = p459j.p460a.p582w0.C14021h2.f31457a
            r1 = r12
            double r0 = r0.m2796a(r1)
            float r0 = (float) r0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            r11 = r0
            goto L_0x003b
        L_0x0035:
            r0 = 0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            r11 = r0
        L_0x003b:
            r0 = r10
            java.lang.String r1 = "af_revenue"
            r2 = r11
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r9
            if (r0 == 0) goto L_0x0059
            r0 = r9
            java.lang.String r0 = r0.m3405f()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0059
            goto L_0x005d
        L_0x0059:
            java.lang.String r0 = ""
            r11 = r0
        L_0x005d:
            r0 = r10
            java.lang.String r1 = "af_currency"
            r2 = r11
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r7
            java.lang.String r0 = r0.m3402a()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0077
            goto L_0x007b
        L_0x0077:
            java.lang.String r0 = ""
            r11 = r0
        L_0x007b:
            r0 = r10
            java.lang.String r1 = "af_content_id"
            r2 = r11
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r10
            java.lang.String r1 = "renewal"
            j.a.w0.h2 r2 = p459j.p460a.p582w0.C14021h2.f31457a
            r3 = r7
            r4 = r8
            boolean r2 = r2.m2791a(r3, r4)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            com.appsflyer.AppsFlyerLib r0 = com.appsflyer.AppsFlyerLib.getInstance()
            android.content.Context r1 = gogolook.callgogolook2.MyApplication.m29013o()
            java.lang.String r2 = "af_subscribe"
            r3 = r10
            r0.trackEvent(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.C13756m.m3508a(j.a.w.o.j, gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0042, code lost:
        if (r7 != null) goto L_0x004b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        if (r7 != null) goto L_0x0066;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3507b(p459j.p460a.p576w.p578o.C13804j r7) {
        /*
            r6 = this;
            r0 = r7
            j.a.w.o.i r0 = r0.m3401b()
            r8 = r0
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()
            com.facebook.appevents.g r0 = com.facebook.appevents.C2271g.m35329b(r0)
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x002c
            r0 = r8
            java.lang.Long r0 = r0.m3406e()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x002c
            r0 = r7
            long r0 = r0.longValue()
            r10 = r0
            j.a.w0.h2 r0 = p459j.p460a.p582w0.C14021h2.f31457a
            r1 = r10
            double r0 = r0.m2796a(r1)
            r12 = r0
            goto L_0x002f
        L_0x002c:
            r0 = 0
            r12 = r0
        L_0x002f:
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r14 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0048
            r0 = r8
            java.lang.String r0 = r0.m3408c()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0048
            goto L_0x004b
        L_0x0048:
            java.lang.String r0 = ""
            r7 = r0
        L_0x004b:
            r0 = r14
            java.lang.String r1 = "fb_order_id"
            r2 = r7
            r0.putString(r1, r2)
            r0 = r8
            if (r0 == 0) goto L_0x0063
            r0 = r8
            java.lang.String r0 = r0.m3405f()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0063
            goto L_0x0066
        L_0x0063:
            java.lang.String r0 = ""
            r7 = r0
        L_0x0066:
            r0 = r14
            java.lang.String r1 = "fb_currency"
            r2 = r7
            r0.putString(r1, r2)
            r0 = r9
            java.lang.String r1 = "StartTrial"
            r2 = r12
            r3 = r14
            r0.m35332a(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.C13756m.m3507b(j.a.w.o.j):void");
    }

    /* renamed from: b */
    public final void m3506b(C13804j jVar, SubscriptionStatusRealmObject subscriptionStatusRealmObject) {
        m3508a(jVar, subscriptionStatusRealmObject);
        m3505c(jVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0047, code lost:
        if (r9 != null) goto L_0x0050;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0067, code lost:
        if (r7 != null) goto L_0x0070;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3505c(p459j.p460a.p576w.p578o.C13804j r7) {
        /*
            r6 = this;
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()
            com.facebook.appevents.g r0 = com.facebook.appevents.C2271g.m35329b(r0)
            r8 = r0
            r0 = r7
            j.a.w.o.i r0 = r0.m3401b()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x002c
            r0 = r9
            java.lang.Long r0 = r0.m3406e()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x002c
            r0 = r9
            long r0 = r0.longValue()
            r10 = r0
            j.a.w0.h2 r0 = p459j.p460a.p582w0.C14021h2.f31457a
            r1 = r10
            double r0 = r0.m2796a(r1)
            r12 = r0
            goto L_0x002f
        L_0x002c:
            r0 = 0
            r12 = r0
        L_0x002f:
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r14 = r0
            r0 = r7
            j.a.w.o.i r0 = r0.m3401b()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x004d
            r0 = r9
            java.lang.String r0 = r0.m3408c()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x004d
            goto L_0x0050
        L_0x004d:
            java.lang.String r0 = ""
            r9 = r0
        L_0x0050:
            r0 = r14
            java.lang.String r1 = "fb_order_id"
            r2 = r9
            r0.putString(r1, r2)
            r0 = r7
            j.a.w.o.i r0 = r0.m3401b()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006d
            r0 = r7
            java.lang.String r0 = r0.m3405f()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006d
            goto L_0x0070
        L_0x006d:
            java.lang.String r0 = ""
            r7 = r0
        L_0x0070:
            r0 = r14
            java.lang.String r1 = "fb_currency"
            r2 = r7
            r0.putString(r1, r2)
            r0 = r8
            java.lang.String r1 = "Subscribe"
            r2 = r12
            r3 = r14
            r0.m35332a(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.C13756m.m3505c(j.a.w.o.j):void");
    }

    /* renamed from: c */
    public final void m3504c(C13804j jVar, SubscriptionStatusRealmObject subscriptionStatusRealmObject) {
        C13794a a;
        C15149k.m377b(jVar, "newStatus");
        C15149k.m377b(subscriptionStatusRealmObject, "oriStatus");
        if (1 == jVar.m3400c()) {
            m3506b(jVar, subscriptionStatusRealmObject);
        } else if (7 == jVar.m3400c()) {
            m3503d(jVar);
        }
        int status = subscriptionStatusRealmObject.getStatus();
        int c = jVar.m3400c();
        String a2 = jVar.m3402a();
        C13803i b = jVar.m3401b();
        m3510a(status, c, a2, (b == null || (a = b.m3410a()) == null) ? null : a.m3444a());
    }

    /* renamed from: d */
    public final void m3503d(C13804j jVar) {
        m3509a(jVar);
        m3507b(jVar);
    }
}
