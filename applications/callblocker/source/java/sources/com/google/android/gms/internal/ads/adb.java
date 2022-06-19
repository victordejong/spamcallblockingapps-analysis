package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.AbstractC2307i;
import com.google.android.gms.ads.internal.C2299a;
import com.google.android.gms.ads.internal.C2341q;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adb.class */
public final class adb {
    /* renamed from: a */
    public static act m13597a(Context context, aei aeiVar, String str, boolean z, boolean z2, ctl ctlVar, C3647yd c3647yd, C3373o c3373o, AbstractC2307i abstractC2307i, C2299a c2299a, dwi dwiVar, dvk dvkVar, boolean z3) {
        act actVar;
        edi.m7866a(context);
        if (C2826bc.f10916b.mo13599a().booleanValue()) {
            actVar = aep.m13498a(context, aeiVar, str, z, z2, ctlVar, c3647yd, null, abstractC2307i, c2299a, dwiVar, dvkVar, z3);
        } else {
            try {
                actVar = (act) C3626xj.m6820a(new cov(context, aeiVar, str, z, z2, ctlVar, c3647yd, null, abstractC2307i, c2299a, dwiVar, dvkVar, z3) { // from class: com.google.android.gms.internal.ads.add

                    /* renamed from: a */
                    private final Context f7880a;

                    /* renamed from: b */
                    private final aei f7881b;

                    /* renamed from: c */
                    private final String f7882c;

                    /* renamed from: d */
                    private final boolean f7883d;

                    /* renamed from: e */
                    private final boolean f7884e;

                    /* renamed from: f */
                    private final ctl f7885f;

                    /* renamed from: g */
                    private final C3647yd f7886g;

                    /* renamed from: h */
                    private final C3373o f7887h = null;

                    /* renamed from: i */
                    private final AbstractC2307i f7888i;

                    /* renamed from: j */
                    private final C2299a f7889j;

                    /* renamed from: k */
                    private final dwi f7890k;

                    /* renamed from: l */
                    private final dvk f7891l;

                    /* renamed from: m */
                    private final boolean f7892m;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7880a = context;
                        this.f7881b = aeiVar;
                        this.f7882c = str;
                        this.f7883d = z;
                        this.f7884e = z2;
                        this.f7885f = ctlVar;
                        this.f7886g = c3647yd;
                        this.f7888i = abstractC2307i;
                        this.f7889j = c2299a;
                        this.f7890k = dwiVar;
                        this.f7891l = dvkVar;
                        this.f7892m = z3;
                    }

                    @Override // com.google.android.gms.internal.ads.cov
                    /* renamed from: a */
                    public final Object mo7868a() {
                        Context context2 = this.f7880a;
                        aei aeiVar2 = this.f7881b;
                        String str2 = this.f7882c;
                        boolean z4 = this.f7883d;
                        boolean z5 = this.f7884e;
                        ctl ctlVar2 = this.f7885f;
                        C3647yd c3647yd2 = this.f7886g;
                        C3373o c3373o2 = this.f7887h;
                        AbstractC2307i abstractC2307i2 = this.f7888i;
                        C2299a c2299a2 = this.f7889j;
                        dwi dwiVar2 = this.f7890k;
                        ade adeVar = new ade(adj.m13582a(context2, aeiVar2, str2, z4, z5, ctlVar2, c3647yd2, c3373o2, abstractC2307i2, c2299a2, dwiVar2, this.f7891l, this.f7892m));
                        adeVar.setWebViewClient(C2341q.m14742e().mo6929a(adeVar, dwiVar2, z5));
                        adeVar.setWebChromeClient(new acl(adeVar));
                        return adeVar;
                    }
                });
            } catch (Throwable th) {
                throw new zzbew("Webview initialization failed.", th);
            }
        }
        return actVar;
    }

    /* renamed from: a */
    public static crt<act> m13596a(Context context, C3647yd c3647yd, String str, ctl ctlVar, C2299a c2299a) {
        return crg.m10782a(crg.m10778a((Object) null), new cqt(context, ctlVar, c3647yd, c2299a, str) { // from class: com.google.android.gms.internal.ads.ada

            /* renamed from: a */
            private final Context f7874a;

            /* renamed from: b */
            private final ctl f7875b;

            /* renamed from: c */
            private final C3647yd f7876c;

            /* renamed from: d */
            private final C2299a f7877d;

            /* renamed from: e */
            private final String f7878e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7874a = context;
                this.f7875b = ctlVar;
                this.f7876c = c3647yd;
                this.f7877d = c2299a;
                this.f7878e = str;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                Context context2 = this.f7874a;
                ctl ctlVar2 = this.f7875b;
                C3647yd c3647yd2 = this.f7876c;
                C2299a c2299a2 = this.f7877d;
                String str2 = this.f7878e;
                C2341q.m14743d();
                act m13597a = adb.m13597a(context2, aei.m13555a(), "", false, false, ctlVar2, c3647yd2, null, null, c2299a2, dwi.m8443a(), null, false);
                final C3659yp m6729a = C3659yp.m6729a(m13597a);
                m13597a.mo13426v().mo13528a(new aee(m6729a) { // from class: com.google.android.gms.internal.ads.adc

                    /* renamed from: a */
                    private final C3659yp f7879a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7879a = m6729a;
                    }

                    @Override // com.google.android.gms.internal.ads.aee
                    /* renamed from: a */
                    public final void mo11712a(boolean z) {
                        this.f7879a.m6730a();
                    }
                });
                m13597a.loadUrl(str2);
                return m6729a;
            }
        }, C3650yg.f17646e);
    }
}
