package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.AbstractC2307i;
import com.google.android.gms.ads.internal.C2299a;
import com.google.android.gms.ads.internal.C2341q;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aep.class */
public final class aep {
    /* renamed from: a */
    public static act m13498a(Context context, aei aeiVar, String str, boolean z, boolean z2, ctl ctlVar, C3647yd c3647yd, C3373o c3373o, AbstractC2307i abstractC2307i, C2299a c2299a, dwi dwiVar, dvk dvkVar, boolean z3) {
        try {
            return (act) C3626xj.m6820a(new cov(context, aeiVar, str, z, z2, ctlVar, c3647yd, null, abstractC2307i, c2299a, dwiVar, dvkVar, z3) { // from class: com.google.android.gms.internal.ads.aes

                /* renamed from: a */
                private final Context f8065a;

                /* renamed from: b */
                private final aei f8066b;

                /* renamed from: c */
                private final String f8067c;

                /* renamed from: d */
                private final boolean f8068d;

                /* renamed from: e */
                private final boolean f8069e;

                /* renamed from: f */
                private final ctl f8070f;

                /* renamed from: g */
                private final C3647yd f8071g;

                /* renamed from: h */
                private final C3373o f8072h;

                /* renamed from: i */
                private final AbstractC2307i f8073i;

                /* renamed from: j */
                private final C2299a f8074j;

                /* renamed from: k */
                private final dwi f8075k;

                /* renamed from: l */
                private final dvk f8076l;

                /* renamed from: m */
                private final boolean f8077m;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8065a = context;
                    this.f8066b = aeiVar;
                    this.f8067c = str;
                    this.f8068d = z;
                    this.f8069e = z2;
                    this.f8070f = ctlVar;
                    this.f8071g = c3647yd;
                    this.f8072h = r11;
                    this.f8073i = abstractC2307i;
                    this.f8074j = c2299a;
                    this.f8075k = dwiVar;
                    this.f8076l = dvkVar;
                    this.f8077m = z3;
                }

                @Override // com.google.android.gms.internal.ads.cov
                /* renamed from: a */
                public final Object mo7868a() {
                    Context context2 = this.f8065a;
                    aei aeiVar2 = this.f8066b;
                    String str2 = this.f8067c;
                    boolean z4 = this.f8068d;
                    boolean z5 = this.f8069e;
                    ctl ctlVar2 = this.f8070f;
                    C3647yd c3647yd2 = this.f8071g;
                    C3373o c3373o2 = this.f8072h;
                    AbstractC2307i abstractC2307i2 = this.f8073i;
                    C2299a c2299a2 = this.f8074j;
                    dwi dwiVar2 = this.f8075k;
                    dvk dvkVar2 = this.f8076l;
                    boolean z6 = this.f8077m;
                    aem aemVar = new aem();
                    aer aerVar = new aer(new aek(context2), aemVar, aeiVar2, str2, z4, z5, ctlVar2, c3647yd2, c3373o2, abstractC2307i2, c2299a2, dwiVar2, dvkVar2, z6);
                    ade adeVar = new ade(aerVar);
                    aerVar.setWebChromeClient(new acl(adeVar));
                    aemVar.m13529a(adeVar, z5);
                    return adeVar;
                }
            });
        } catch (Throwable th) {
            C2341q.m14740g().m7095a(th, "AdWebViewFactory.newAdWebView2");
            throw new zzbew("Webview initialization failed.", th);
        }
    }
}
