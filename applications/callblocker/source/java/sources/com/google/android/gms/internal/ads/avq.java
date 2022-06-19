package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/avq.class */
public final class avq extends amh {

    /* renamed from: c */
    private final Context f10422c;

    /* renamed from: d */
    private final WeakReference<act> f10423d;

    /* renamed from: e */
    private final aud f10424e;

    /* renamed from: f */
    private final awx f10425f;

    /* renamed from: g */
    private final anc f10426g;

    /* renamed from: h */
    private final cme f10427h;

    /* renamed from: i */
    private final apx f10428i;

    /* renamed from: j */
    private boolean f10429j = false;

    public avq(amk amkVar, Context context, @Nullable act actVar, aud audVar, awx awxVar, anc ancVar, cme cmeVar, apx apxVar) {
        super(amkVar);
        this.f10422c = context;
        this.f10423d = new WeakReference<>(actVar);
        this.f10424e = audVar;
        this.f10425f = awxVar;
        this.f10426g = ancVar;
        this.f10427h = cmeVar;
        this.f10428i = apxVar;
    }

    /* renamed from: a */
    public final boolean m12406a() {
        return this.f10426g.m12902e();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0071  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m12405a(boolean r5) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.ect<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.edi.f16372ae
            r6 = r0
            com.google.android.gms.internal.ads.ede r0 = com.google.android.gms.internal.ads.dyx.m8158e()
            r1 = r6
            java.lang.Object r0 = r0.m7876a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L60
            com.google.android.gms.internal.ads.ve r0 = com.google.android.gms.ads.internal.C2341q.m14744c()
            r0 = r4
            android.content.Context r0 = r0.f10422c
            boolean r0 = com.google.android.gms.internal.ads.C3567ve.m6952g(r0)
            if (r0 == 0) goto L60
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.internal.ads.C3556uu.m6745e(r0)
            r0 = r4
            com.google.android.gms.internal.ads.apx r0 = r0.f10428i
            r0.mo11961a()
            com.google.android.gms.internal.ads.ect<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.edi.f16373af
            r6 = r0
            com.google.android.gms.internal.ads.ede r0 = com.google.android.gms.internal.ads.dyx.m8158e()
            r1 = r6
            java.lang.Object r0 = r0.m7876a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L56
            r0 = r4
            com.google.android.gms.internal.ads.cme r0 = r0.f10427h
            r1 = r4
            com.google.android.gms.internal.ads.chd r1 = r1.f9997a
            com.google.android.gms.internal.ads.cha r1 = r1.f13035b
            com.google.android.gms.internal.ads.cgs r1 = r1.f13025b
            java.lang.String r1 = r1.f13006b
            r0.m11056a(r1)
        L56:
            r0 = 0
            r7 = r0
        L58:
            r0 = r7
            if (r0 != 0) goto L71
            r0 = 0
            r5 = r0
        L5e:
            r0 = r5
            return r0
        L60:
            r0 = r4
            boolean r0 = r0.f10429j
            if (r0 != 0) goto L6c
            r0 = 1
            r7 = r0
            goto L58
        L6c:
            r0 = 0
            r7 = r0
            goto L58
        L71:
            r0 = r4
            com.google.android.gms.internal.ads.aud r0 = r0.f10424e
            r0.mo12359a()
            r0 = r4
            com.google.android.gms.internal.ads.awx r0 = r0.f10425f     // Catch: com.google.android.gms.internal.ads.zzbxy -> L90
            r1 = r5
            r2 = r4
            android.content.Context r2 = r2.f10422c     // Catch: com.google.android.gms.internal.ads.zzbxy -> L90
            r0.mo11680a(r1, r2)     // Catch: com.google.android.gms.internal.ads.zzbxy -> L90
            r0 = r4
            r1 = 1
            r0.f10429j = r1
            r0 = 1
            r5 = r0
            goto L5e
        L90:
            r6 = move-exception
            r0 = r4
            com.google.android.gms.internal.ads.apx r0 = r0.f10428i
            r1 = r6
            r0.mo11959a(r1)
            r0 = 0
            r5 = r0
            goto L5e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.avq.m12405a(boolean):boolean");
    }

    public final void finalize() {
        try {
            act actVar = this.f10423d.get();
            if (((Boolean) dyx.m8158e().m7876a(edi.f16552dz)).booleanValue()) {
                if (!this.f10429j && actVar != null) {
                    crs crsVar = C3650yg.f17646e;
                    actVar.getClass();
                    crsVar.execute(avt.m12399a(actVar));
                }
            } else if (actVar != null) {
                actVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}
