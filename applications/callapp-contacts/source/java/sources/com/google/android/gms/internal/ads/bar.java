package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.p023b.C0428a;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bar.class */
public final class bar implements zzp, atb {

    /* renamed from: a */
    private final Context f43407a;

    /* renamed from: b */
    private final adt f43408b;

    /* renamed from: c */
    private final cov f43409c;

    /* renamed from: d */
    private final zzbar f43410d;

    /* renamed from: e */
    private final eht.C12447a.EnumC12448a f43411e;

    /* renamed from: f */
    private AbstractC12126b f43412f;

    public bar(Context context, adt adtVar, cov covVar, zzbar zzbarVar, eht.C12447a.EnumC12448a enumC12448a) {
        this.f43407a = context;
        this.f43408b = adtVar;
        this.f43409c = covVar;
        this.f43410d = zzbarVar;
        this.f43411e = enumC12448a;
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        EnumC12863qu enumC12863qu;
        EnumC12865qw enumC12865qw;
        if ((this.f43411e == eht.C12447a.EnumC12448a.REWARD_BASED_VIDEO_AD || this.f43411e == eht.C12447a.EnumC12448a.INTERSTITIAL || this.f43411e == eht.C12447a.EnumC12448a.APP_OPEN) && this.f43409c.f46234N && this.f43408b != null && zzr.zzlk().m14225a(this.f43407a)) {
            int i = this.f43410d.zzeka;
            int i2 = this.f43410d.zzekb;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String videoEventsOwner = this.f43409c.f46236P.getVideoEventsOwner();
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42765cV)).booleanValue()) {
                if (this.f43409c.f46236P.getMediaType() == OmidMediaType.VIDEO) {
                    EnumC12863qu enumC12863qu2 = EnumC12863qu.VIDEO;
                    enumC12865qw = EnumC12865qw.DEFINED_BY_JAVASCRIPT;
                    enumC12863qu = enumC12863qu2;
                } else {
                    EnumC12865qw enumC12865qw2 = this.f43409c.f46239S == 2 ? EnumC12865qw.UNSPECIFIED : EnumC12865qw.BEGIN_TO_RENDER;
                    enumC12863qu = EnumC12863qu.HTML_DISPLAY;
                    enumC12865qw = enumC12865qw2;
                }
                this.f43412f = zzr.zzlk().m14221a(sb2, this.f43408b.mo13732r(), "", "javascript", videoEventsOwner, enumC12865qw, enumC12863qu, this.f43409c.f46254ag);
            } else {
                this.f43412f = zzr.zzlk().m14222a(sb2, this.f43408b.mo13732r(), "", "javascript", videoEventsOwner);
            }
            if (this.f43412f == null) {
                return;
            }
            zzr.zzlk().m14223a(this.f43412f, this.f43408b.mo13731s());
            this.f43408b.mo13784a(this.f43412f);
            zzr.zzlk().m14224a(this.f43412f);
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42767cX)).booleanValue()) {
                return;
            }
            this.f43408b.mo13770a("onSdkLoaded", new C0428a());
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        this.f43412f = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        adt adtVar;
        if (this.f43412f == null || (adtVar = this.f43408b) == null) {
            return;
        }
        adtVar.mo13770a("onSdkImpression", new C0428a());
    }
}
