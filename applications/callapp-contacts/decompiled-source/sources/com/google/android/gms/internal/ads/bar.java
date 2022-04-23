package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.b.a;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bar.class */
public final class bar implements zzp, atb {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24087a;

    /* renamed from: b  reason: collision with root package name */
    private final adt f24088b;

    /* renamed from: c  reason: collision with root package name */
    private final cov f24089c;

    /* renamed from: d  reason: collision with root package name */
    private final zzbar f24090d;
    private final eht.a.EnumC0477a e;
    private b f;

    public bar(Context context, adt adtVar, cov covVar, zzbar zzbarVar, eht.a.EnumC0477a aVar) {
        this.f24087a = context;
        this.f24088b = adtVar;
        this.f24089c = covVar;
        this.f24090d = zzbarVar;
        this.e = aVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        qu quVar;
        qw qwVar;
        if ((this.e == eht.a.EnumC0477a.REWARD_BASED_VIDEO_AD || this.e == eht.a.EnumC0477a.INTERSTITIAL || this.e == eht.a.EnumC0477a.APP_OPEN) && this.f24089c.N && this.f24088b != null && zzr.zzlk().a(this.f24087a)) {
            int i = this.f24090d.zzeka;
            int i2 = this.f24090d.zzekb;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String videoEventsOwner = this.f24089c.P.getVideoEventsOwner();
            if (((Boolean) ekb.e().a(aq.cV)).booleanValue()) {
                if (this.f24089c.P.getMediaType() == OmidMediaType.VIDEO) {
                    quVar = qu.VIDEO;
                    qwVar = qw.DEFINED_BY_JAVASCRIPT;
                } else {
                    qwVar = this.f24089c.S == 2 ? qw.UNSPECIFIED : qw.BEGIN_TO_RENDER;
                    quVar = qu.HTML_DISPLAY;
                }
                this.f = zzr.zzlk().a(sb2, this.f24088b.r(), "", "javascript", videoEventsOwner, qwVar, quVar, this.f24089c.ag);
            } else {
                this.f = zzr.zzlk().a(sb2, this.f24088b.r(), "", "javascript", videoEventsOwner);
            }
            if (this.f != null) {
                zzr.zzlk().a(this.f, this.f24088b.s());
                this.f24088b.a(this.f);
                zzr.zzlk().a(this.f);
                if (((Boolean) ekb.e().a(aq.cX)).booleanValue()) {
                    this.f24088b.a("onSdkLoaded", new a());
                }
            }
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
        this.f = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        adt adtVar;
        if (this.f != null && (adtVar = this.f24088b) != null) {
            adtVar.a("onSdkImpression", new a());
        }
    }
}
