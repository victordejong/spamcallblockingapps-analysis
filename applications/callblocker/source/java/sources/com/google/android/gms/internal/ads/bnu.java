package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.p014a.C0392b;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C2317d;
import com.google.android.gms.ads.internal.overlay.C2327n;
import com.google.android.gms.common.util.C2716m;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bnu.class */
public final class bnu implements bmv<avq> {

    /* renamed from: a */
    private final Context f11629a;

    /* renamed from: b */
    private final awq f11630b;

    /* renamed from: c */
    private final Executor f11631c;

    /* renamed from: d */
    private final cgp f11632d;

    public bnu(Context context, Executor executor, awq awqVar, cgp cgpVar) {
        this.f11629a = context;
        this.f11630b = awqVar;
        this.f11631c = executor;
        this.f11632d = cgpVar;
    }

    /* renamed from: a */
    private static String m11749a(cgr cgrVar) {
        String str;
        try {
            str = cgrVar.f12997s.getString("tab_url");
        } catch (Exception e) {
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11750a(Uri uri, chd chdVar, cgr cgrVar, Object obj) {
        try {
            C0392b m21065a = new C0392b.C0393a().m21065a();
            m21065a.f1606a.setData(uri);
            C2317d c2317d = new C2317d(m21065a.f1606a);
            C3658yo c3658yo = new C3658yo();
            avs mo12372a = this.f11630b.mo12372a(new amy(chdVar, cgrVar, null), new avv(new awx(c3658yo) { // from class: com.google.android.gms.internal.ads.bnw

                /* renamed from: a */
                private final C3658yo f11635a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11635a = c3658yo;
                }

                @Override // com.google.android.gms.internal.ads.awx
                /* renamed from: a */
                public final void mo11680a(boolean z, Context context) {
                    C3658yo c3658yo2 = this.f11635a;
                    try {
                        C2341q.m14745b();
                        C2327n.m14751a(context, (AdOverlayInfoParcel) c3658yo2.get(), true);
                    } catch (Exception e) {
                    }
                }
            }));
            c3658yo.m6731b(new AdOverlayInfoParcel(c2317d, null, mo12372a.mo12402i(), null, new C3647yd(0, 0, false)));
            this.f11632d.m11367c();
            return crg.m10778a(mo12372a.mo12403h());
        } catch (Throwable th) {
            C3556uu.m6748c("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return (this.f11629a instanceof Activity) && C2716m.m13841b() && C3643y.m6757a(this.f11629a) && !TextUtils.isEmpty(m11749a(cgrVar));
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<avq> mo11688b(chd chdVar, cgr cgrVar) {
        String m11749a = m11749a(cgrVar);
        return crg.m10782a(crg.m10778a((Object) null), new cqt(this, m11749a != null ? Uri.parse(m11749a) : null, chdVar, cgrVar) { // from class: com.google.android.gms.internal.ads.bnx

            /* renamed from: a */
            private final bnu f11636a;

            /* renamed from: b */
            private final Uri f11637b;

            /* renamed from: c */
            private final chd f11638c;

            /* renamed from: d */
            private final cgr f11639d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11636a = this;
                this.f11637b = parse;
                this.f11638c = chdVar;
                this.f11639d = cgrVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11636a.m11750a(this.f11637b, this.f11638c, this.f11639d, obj);
            }
        }, this.f11631c);
    }
}
