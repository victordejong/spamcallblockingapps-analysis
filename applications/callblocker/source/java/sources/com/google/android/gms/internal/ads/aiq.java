package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aiq.class */
public final class aiq implements AbstractC2792app, aqi, arg, dxs {

    /* renamed from: a */
    private final Context f9747a;

    /* renamed from: b */
    private final chd f9748b;

    /* renamed from: c */
    private final cgr f9749c;

    /* renamed from: d */
    private final clj f9750d;

    /* renamed from: e */
    private final ctl f9751e;

    /* renamed from: f */
    private final View f9752f;
    @GuardedBy("this")

    /* renamed from: g */
    private boolean f9753g;
    @GuardedBy("this")

    /* renamed from: h */
    private boolean f9754h;

    public aiq(Context context, chd chdVar, cgr cgrVar, clj cljVar, View view, ctl ctlVar) {
        this.f9747a = context;
        this.f9748b = chdVar;
        this.f9749c = cgrVar;
        this.f9750d = cljVar;
        this.f9751e = ctlVar;
        this.f9752f = view;
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        synchronized (this) {
            if (this.f9753g) {
                ArrayList arrayList = new ArrayList(this.f9749c.f12982d);
                arrayList.addAll(this.f9749c.f12984f);
                this.f9750d.m11101a(this.f9748b, this.f9749c, true, null, arrayList);
            } else {
                this.f9750d.m11103a(this.f9748b, this.f9749c, this.f9749c.f12991m);
                this.f9750d.m11103a(this.f9748b, this.f9749c, this.f9749c.f12984f);
            }
            this.f9753g = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: a */
    public final void mo11421a(AbstractC3445qr abstractC3445qr, String str, String str2) {
        this.f9750d.m11102a(this.f9748b, this.f9749c, this.f9749c.f12986h, abstractC3445qr);
    }

    @Override // com.google.android.gms.internal.ads.aqi
    /* renamed from: b */
    public final void mo11652b() {
        String str = null;
        synchronized (this) {
            if (!this.f9754h) {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16437bq)).booleanValue()) {
                    str = this.f9751e.m10670a().mo11052a(this.f9747a, this.f9752f, (Activity) null);
                }
                this.f9750d.m11101a(this.f9748b, this.f9749c, false, str, this.f9749c.f12982d);
                this.f9754h = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: c */
    public final void mo11414c() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: d */
    public final void mo11413d() {
    }

    @Override // com.google.android.gms.internal.ads.dxs
    /* renamed from: e */
    public final void mo8200e() {
        this.f9750d.m11103a(this.f9748b, this.f9749c, this.f9749c.f12981c);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: f */
    public final void mo11412f() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: g */
    public final void mo11411g() {
        this.f9750d.m11103a(this.f9748b, this.f9749c, this.f9749c.f12985g);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: h */
    public final void mo11410h() {
        this.f9750d.m11103a(this.f9748b, this.f9749c, this.f9749c.f12987i);
    }
}
