package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.p023b.C0428a;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/anh.class */
public final class anh implements ash, atb {

    /* renamed from: a */
    private final Context f42467a;

    /* renamed from: b */
    private final adt f42468b;

    /* renamed from: c */
    private final cov f42469c;

    /* renamed from: d */
    private final zzbar f42470d;

    /* renamed from: e */
    private AbstractC12126b f42471e;

    /* renamed from: f */
    private boolean f42472f;

    public anh(Context context, adt adtVar, cov covVar, zzbar zzbarVar) {
        this.f42467a = context;
        this.f42468b = adtVar;
        this.f42469c = covVar;
        this.f42470d = zzbarVar;
    }

    /* renamed from: c */
    private final void m18538c() {
        EnumC12863qu enumC12863qu;
        EnumC12865qw enumC12865qw;
        synchronized (this) {
            if (!this.f42469c.f46234N) {
                return;
            }
            if (this.f42468b == null) {
                return;
            }
            if (!zzr.zzlk().m14225a(this.f42467a)) {
                return;
            }
            int i = this.f42470d.zzeka;
            int i2 = this.f42470d.zzekb;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String videoEventsOwner = this.f42469c.f46236P.getVideoEventsOwner();
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42765cV)).booleanValue()) {
                if (this.f42469c.f46236P.getMediaType() == OmidMediaType.VIDEO) {
                    enumC12863qu = EnumC12863qu.VIDEO;
                    enumC12865qw = EnumC12865qw.DEFINED_BY_JAVASCRIPT;
                } else {
                    enumC12863qu = EnumC12863qu.HTML_DISPLAY;
                    enumC12865qw = this.f42469c.f46258e == 1 ? EnumC12865qw.ONE_PIXEL : EnumC12865qw.BEGIN_TO_RENDER;
                }
                this.f42471e = zzr.zzlk().m14221a(sb2, this.f42468b.mo13732r(), "", "javascript", videoEventsOwner, enumC12865qw, enumC12863qu, this.f42469c.f46254ag);
            } else {
                this.f42471e = zzr.zzlk().m14222a(sb2, this.f42468b.mo13732r(), "", "javascript", videoEventsOwner);
            }
            View mo13731s = this.f42468b.mo13731s();
            if (this.f42471e != null) {
                zzr.zzlk().m14223a(this.f42471e, mo13731s);
                this.f42468b.mo13784a(this.f42471e);
                zzr.zzlk().m14224a(this.f42471e);
                this.f42472f = true;
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42767cX)).booleanValue()) {
                    this.f42468b.mo13770a("onSdkLoaded", new C0428a());
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        synchronized (this) {
            if (this.f42472f) {
                return;
            }
            m18538c();
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        adt adtVar;
        synchronized (this) {
            if (!this.f42472f) {
                m18538c();
            }
            if (this.f42469c.f46234N && this.f42471e != null && (adtVar = this.f42468b) != null) {
                adtVar.mo13770a("onSdkImpression", new C0428a());
            }
        }
    }
}
