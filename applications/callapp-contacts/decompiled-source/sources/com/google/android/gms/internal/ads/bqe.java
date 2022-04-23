package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqe.class */
public final class bqe implements art, ash, avw, eir {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24878a;

    /* renamed from: b  reason: collision with root package name */
    private final cpz f24879b;

    /* renamed from: c  reason: collision with root package name */
    private final cpk f24880c;

    /* renamed from: d  reason: collision with root package name */
    private final cov f24881d;
    private final brs e;
    private Boolean f;
    private final boolean g = ((Boolean) ekb.e().a(aq.en)).booleanValue();
    private final cty h;
    private final String i;

    public bqe(Context context, cpz cpzVar, cpk cpkVar, cov covVar, brs brsVar, cty ctyVar, String str) {
        this.f24878a = context;
        this.f24879b = cpzVar;
        this.f24880c = cpkVar;
        this.f24881d = covVar;
        this.e = brsVar;
        this.h = ctyVar;
        this.i = str;
    }

    private final ctz a(String str) {
        ctz a2 = ctz.a(str).a(this.f24880c, (yo) null).a(this.f24881d).a("request_id", this.i);
        if (!this.f24881d.s.isEmpty()) {
            a2.a("ancn", this.f24881d.s.get(0));
        }
        if (this.f24881d.ad) {
            zzr.zzkv();
            a2.a("device_connectivity", zzj.zzbd(this.f24878a) ? "online" : "offline");
            a2.a("event_timestamp", String.valueOf(zzr.zzlc().a()));
            a2.a("offline_ad", "1");
        }
        return a2;
    }

    private final void a(ctz ctzVar) {
        if (this.f24881d.ad) {
            this.e.a(new brz(zzr.zzlc().a(), this.f24880c.f26222b.f26217b.f26197b, this.h.b(ctzVar), brp.f24957b));
            return;
        }
        this.h.a(ctzVar);
    }

    private static boolean a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzr.zzkz().a(e, "CsiActionsListener.isPatternMatched");
            return false;
        }
    }

    private final boolean c() {
        if (this.f == null) {
            synchronized (this) {
                if (this.f == null) {
                    af<String> afVar = aq.aZ;
                    zzr.zzkv();
                    this.f = Boolean.valueOf(a((String) ekb.e().a(afVar), zzj.zzbb(this.f24878a)));
                }
            }
        }
        return this.f.booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.avw
    public final void H_() {
        if (c()) {
            this.h.a(a("adapter_impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a() {
        if (this.g) {
            this.h.a(a("ifts").a("reason", "blocked"));
        }
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a(zzcbq zzcbqVar) {
        if (this.g) {
            ctz a2 = a("ifts").a("reason", "exception");
            if (!TextUtils.isEmpty(zzcbqVar.getMessage())) {
                a2.a("msg", zzcbqVar.getMessage());
            }
            this.h.a(a2);
        }
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a(zzvh zzvhVar) {
        if (this.g) {
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
            String a2 = this.f24879b.a(str2);
            ctz a3 = a("ifts").a("reason", "adapter");
            if (i2 >= 0) {
                a3.a("arec", String.valueOf(i2));
            }
            if (a2 != null) {
                a3.a("areec", a2);
            }
            this.h.a(a3);
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        if (c() || this.f24881d.ad) {
            a(a("impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.avw
    public final void i() {
        if (c()) {
            this.h.a(a("adapter_shown"));
        }
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        if (this.f24881d.ad) {
            a(a("click"));
        }
    }
}
