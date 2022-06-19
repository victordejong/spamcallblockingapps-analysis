package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqe.class */
public final class bqe implements art, ash, avw, eir {

    /* renamed from: a */
    private final Context f44475a;

    /* renamed from: b */
    private final cpz f44476b;

    /* renamed from: c */
    private final cpk f44477c;

    /* renamed from: d */
    private final cov f44478d;

    /* renamed from: e */
    private final brs f44479e;

    /* renamed from: f */
    private Boolean f44480f;

    /* renamed from: g */
    private final boolean f44481g = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42889en)).booleanValue();

    /* renamed from: h */
    private final cty f44482h;

    /* renamed from: i */
    private final String f44483i;

    public bqe(Context context, cpz cpzVar, cpk cpkVar, cov covVar, brs brsVar, cty ctyVar, String str) {
        this.f44475a = context;
        this.f44476b = cpzVar;
        this.f44477c = cpkVar;
        this.f44478d = covVar;
        this.f44479e = brsVar;
        this.f44482h = ctyVar;
        this.f44483i = str;
    }

    /* renamed from: a */
    private final ctz m17681a(String str) {
        ctz m17225a = ctz.m17226a(str).m17227a(this.f44477c, (C13075yo) null).m17229a(this.f44478d).m17225a("request_id", this.f44483i);
        if (!this.f44478d.f46272s.isEmpty()) {
            m17225a.m17225a("ancn", this.f44478d.f46272s.get(0));
        }
        if (this.f44478d.f46251ad) {
            zzr.zzkv();
            m17225a.m17225a("device_connectivity", zzj.zzbd(this.f44475a) ? "online" : "offline");
            m17225a.m17225a("event_timestamp", String.valueOf(zzr.zzlc().mo19039a()));
            m17225a.m17225a("offline_ad", "1");
        }
        return m17225a;
    }

    /* renamed from: a */
    private final void m17684a(ctz ctzVar) {
        if (!this.f44478d.f46251ad) {
            this.f44482h.mo17215a(ctzVar);
            return;
        }
        this.f44479e.m17630a(new brz(zzr.zzlc().mo19039a(), this.f44477c.f46319b.f46314b.f46290b, this.f44482h.mo17214b(ctzVar), brp.f44573b));
    }

    /* renamed from: a */
    private static boolean m17680a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzr.zzkz().m13979a(e, "CsiActionsListener.isPatternMatched");
            return false;
        }
    }

    /* renamed from: c */
    private final boolean m17679c() {
        if (this.f44480f == null) {
            synchronized (this) {
                if (this.f44480f == null) {
                    AbstractC12172af<String> abstractC12172af = C12187aq.f42663aZ;
                    zzr.zzkv();
                    this.f44480f = Boolean.valueOf(m17680a((String) ekb.m14831e().m18571a(abstractC12172af), zzj.zzbb(this.f44475a)));
                }
            }
        }
        return this.f44480f.booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.avw
    /* renamed from: H_ */
    public final void mo17686H_() {
        if (!m17679c()) {
            return;
        }
        this.f44482h.mo17215a(m17681a("adapter_impression"));
    }

    @Override // com.google.android.gms.internal.ads.art
    /* renamed from: a */
    public final void mo17685a() {
        if (!this.f44481g) {
            return;
        }
        this.f44482h.mo17215a(m17681a("ifts").m17225a("reason", "blocked"));
    }

    @Override // com.google.android.gms.internal.ads.art
    /* renamed from: a */
    public final void mo17683a(zzcbq zzcbqVar) {
        if (!this.f44481g) {
            return;
        }
        ctz m17225a = m17681a("ifts").m17225a("reason", "exception");
        if (!TextUtils.isEmpty(zzcbqVar.getMessage())) {
            m17225a.m17225a("msg", zzcbqVar.getMessage());
        }
        this.f44482h.mo17215a(m17225a);
    }

    @Override // com.google.android.gms.internal.ads.art
    /* renamed from: a */
    public final void mo17682a(zzvh zzvhVar) {
        if (!this.f44481g) {
            return;
        }
        int i = zzvhVar.errorCode;
        String str = zzvhVar.zzchs;
        int i2 = i;
        String str2 = str;
        if (zzvhVar.zzcht.equals(MobileAds.ERROR_DOMAIN)) {
            i2 = i;
            str2 = str;
            if (zzvhVar.zzchu != null) {
                i2 = i;
                str2 = str;
                if (!zzvhVar.zzchu.zzcht.equals(MobileAds.ERROR_DOMAIN)) {
                    i2 = zzvhVar.zzchu.errorCode;
                    str2 = zzvhVar.zzchu.zzchs;
                }
            }
        }
        String m17344a = this.f44476b.m17344a(str2);
        ctz m17225a = m17681a("ifts").m17225a("reason", "adapter");
        if (i2 >= 0) {
            m17225a.m17225a("arec", String.valueOf(i2));
        }
        if (m17344a != null) {
            m17225a.m17225a("areec", m17344a);
        }
        this.f44482h.mo17215a(m17225a);
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        if (m17679c() || this.f44478d.f46251ad) {
            m17684a(m17681a("impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.avw
    /* renamed from: i */
    public final void mo17678i() {
        if (!m17679c()) {
            return;
        }
        this.f44482h.mo17215a(m17681a("adapter_shown"));
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        if (!this.f44478d.f46251ad) {
            return;
        }
        m17684a(m17681a("click"));
    }
}
