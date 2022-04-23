package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.b.a;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/anh.class */
public final class anh implements ash, atb {

    /* renamed from: a  reason: collision with root package name */
    private final Context f23620a;

    /* renamed from: b  reason: collision with root package name */
    private final adt f23621b;

    /* renamed from: c  reason: collision with root package name */
    private final cov f23622c;

    /* renamed from: d  reason: collision with root package name */
    private final zzbar f23623d;
    private b e;
    private boolean f;

    public anh(Context context, adt adtVar, cov covVar, zzbar zzbarVar) {
        this.f23620a = context;
        this.f23621b = adtVar;
        this.f23622c = covVar;
        this.f23623d = zzbarVar;
    }

    private final void c() {
        qu quVar;
        qw qwVar;
        synchronized (this) {
            if (this.f23622c.N) {
                if (this.f23621b != null) {
                    if (zzr.zzlk().a(this.f23620a)) {
                        int i = this.f23623d.zzeka;
                        int i2 = this.f23623d.zzekb;
                        StringBuilder sb = new StringBuilder(23);
                        sb.append(i);
                        sb.append(".");
                        sb.append(i2);
                        String sb2 = sb.toString();
                        String videoEventsOwner = this.f23622c.P.getVideoEventsOwner();
                        if (((Boolean) ekb.e().a(aq.cV)).booleanValue()) {
                            if (this.f23622c.P.getMediaType() == OmidMediaType.VIDEO) {
                                quVar = qu.VIDEO;
                                qwVar = qw.DEFINED_BY_JAVASCRIPT;
                            } else {
                                quVar = qu.HTML_DISPLAY;
                                qwVar = this.f23622c.e == 1 ? qw.ONE_PIXEL : qw.BEGIN_TO_RENDER;
                            }
                            this.e = zzr.zzlk().a(sb2, this.f23621b.r(), "", "javascript", videoEventsOwner, qwVar, quVar, this.f23622c.ag);
                        } else {
                            this.e = zzr.zzlk().a(sb2, this.f23621b.r(), "", "javascript", videoEventsOwner);
                        }
                        View s = this.f23621b.s();
                        if (this.e != null) {
                            zzr.zzlk().a(this.e, s);
                            this.f23621b.a(this.e);
                            zzr.zzlk().a(this.e);
                            this.f = true;
                            if (((Boolean) ekb.e().a(aq.cX)).booleanValue()) {
                                this.f23621b.a("onSdkLoaded", new a());
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        synchronized (this) {
            if (!this.f) {
                c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        adt adtVar;
        synchronized (this) {
            if (!this.f) {
                c();
            }
            if (!(!this.f23622c.N || this.e == null || (adtVar = this.f23621b) == null)) {
                adtVar.a("onSdkImpression", new a());
            }
        }
    }
}
