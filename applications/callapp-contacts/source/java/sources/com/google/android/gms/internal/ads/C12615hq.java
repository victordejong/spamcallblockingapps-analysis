package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import com.appsflyer.share.Constants;
import com.explorestack.iab.utils.C9605o;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.AbstractC12669jq;
import com.google.android.gms.internal.ads.adh;
import com.google.android.gms.internal.ads.adt;
import com.google.android.gms.internal.ads.aen;
import com.google.android.gms.internal.ads.aeu;
import com.google.android.gms.internal.ads.aey;
import com.google.android.gms.internal.ads.aez;
import com.google.android.gms.internal.ads.afb;
import com.google.android.gms.internal.ads.eir;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.hq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hq.class */
public final class C12615hq<T extends eir & adh & adt & AbstractC12669jq & aen & aeu & aey & aez & afb> implements AbstractC12607hi<T> {

    /* renamed from: a */
    private final zza f49344a;

    /* renamed from: b */
    private final bli f49345b;

    /* renamed from: c */
    private final cty f49346c;

    /* renamed from: e */
    private final C12831pp f49348e;

    /* renamed from: f */
    private final brs f49349f;

    /* renamed from: g */
    private zzv f49350g = null;

    /* renamed from: d */
    private final C13090zc f49347d = new C13090zc();

    public C12615hq(zza zzaVar, C12831pp c12831pp, brs brsVar, bli bliVar, cty ctyVar) {
        this.f49344a = zzaVar;
        this.f49348e = c12831pp;
        this.f49349f = brsVar;
        this.f49345b = bliVar;
        this.f49346c = ctyVar;
    }

    /* renamed from: a */
    private static Uri m14617a(Context context, die dieVar, Uri uri, View view, Activity activity) {
        Uri uri2;
        if (dieVar == null) {
            return uri;
        }
        try {
            boolean z = false;
            if (dieVar.m16643a(uri)) {
                String[] strArr = die.f47084a;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    }
                    if (uri.getPath().endsWith(strArr[i])) {
                        z = true;
                        break;
                    }
                    i++;
                }
            }
            uri2 = uri;
            if (z) {
                uri2 = dieVar.m16642a(uri, context, view, activity);
            }
        } catch (zzeh e) {
            uri2 = uri;
        } catch (Exception e2) {
            zzr.zzkz().m13979a(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            uri2 = uri;
        }
        return uri2;
    }

    /* renamed from: a */
    private static Uri m14616a(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            zzd.zzc(valueOf.length() != 0 ? "Error adding click uptime parameter to url: ".concat(valueOf) : new String("Error adding click uptime parameter to url: "), e);
        }
        return uri;
    }

    /* renamed from: a */
    private final void m14612a(boolean z) {
        C12831pp c12831pp = this.f49348e;
        if (c12831pp != null) {
            c12831pp.m14254a(z);
        }
    }

    /* renamed from: a */
    private final boolean m14614a(T t, Context context, String str, String str2) {
        zzr.zzkv();
        boolean zzbd = zzj.zzbd(context);
        zzr.zzkv();
        zzbg zzbg = zzj.zzbg(context);
        bli bliVar = this.f49345b;
        if (bliVar != null) {
            bsc.m17623a(context, bliVar, this.f49346c, this.f49349f, str2, "offline_open");
        }
        T t2 = t;
        boolean z = t2.mo13724z().m18772d() && t2.mo13751d() == null;
        if (zzbd) {
            brs brsVar = this.f49349f;
            brsVar.m17628a(new css(brsVar, this.f49347d, str2) { // from class: com.google.android.gms.internal.ads.brw

                /* renamed from: a */
                private final brs f44585a;

                /* renamed from: b */
                private final C13090zc f44586b;

                /* renamed from: c */
                private final String f44587c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44585a = brsVar;
                    this.f44586b = c13090zc;
                    this.f44587c = str2;
                }

                @Override // com.google.android.gms.internal.ads.css
                /* renamed from: a */
                public final Object mo17263a(Object obj) {
                    this.f44585a.m17633a((SQLiteDatabase) obj, this.f44586b, this.f44587c);
                    return null;
                }
            });
            return false;
        }
        zzr.zzkv();
        if (zzj.zzbf(context) && zzbg != null && !z) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42873eX)).booleanValue()) {
                if (t2.mo13724z().m18772d()) {
                    bsc.m17624a(t2.mo13751d(), null, zzbg, this.f49349f, this.f49345b, this.f49346c, str2, str);
                } else {
                    t.mo13785a(zzbg, this.f49349f, this.f49345b, this.f49346c, str2, str, zzr.zzkx().zzzv());
                }
                bli bliVar2 = this.f49345b;
                if (bliVar2 != null) {
                    bsc.m17623a(context, bliVar2, this.f49346c, this.f49349f, str2, "dialog_impression");
                }
                t.onAdClicked();
                return true;
            }
        }
        this.f49349f.m17626a(str2);
        if (this.f49345b == null) {
            return false;
        }
        HashMap hashMap = new HashMap();
        zzr.zzkv();
        if (!zzj.zzbf(context)) {
            hashMap.put("dialog_not_shown_reason", "notifications_disabled");
        } else if (zzbg == null) {
            hashMap.put("dialog_not_shown_reason", "work_manager_unavailable");
        } else {
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42873eX)).booleanValue()) {
                hashMap.put("dialog_not_shown_reason", "notification_flow_disabled");
            } else if (z) {
                hashMap.put("dialog_not_shown_reason", "fullscreen_no_activity");
            }
        }
        bsc.m17622a(context, this.f49345b, this.f49346c, this.f49349f, str2, "dialog_not_shown", hashMap);
        return false;
    }

    /* renamed from: a */
    private static boolean m14613a(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    /* renamed from: b */
    private static int m14611b(Map<String, String> map) {
        String str = map.get(C9605o.f32625a);
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return 7;
            }
            if ("l".equalsIgnoreCase(str)) {
                return 6;
            }
            if (!Constants.URL_CAMPAIGN.equalsIgnoreCase(str)) {
                return -1;
            }
            return zzr.zzkx().zzzv();
        }
        return -1;
    }

    /* renamed from: a */
    public final void m14615a(EnumC12252bt enumC12252bt) {
        if (this.f49345b == null) {
            return;
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
            this.f49346c.mo17215a(ctz.m17226a("cct_action").m17225a("cct_open_status", enumC12252bt.toString()));
        } else {
            this.f49345b.m17765a().m17767a("action", "cct_action").m17767a("cct_open_status", enumC12252bt.toString()).m17771a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x035a, code lost:
        if (r0.m14608a(r13) != null) goto L102;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void mo14250a(java.lang.Object r13, java.util.Map r14) {
        /*
            Method dump skipped, instructions count: 1875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12615hq.mo14250a(java.lang.Object, java.util.Map):void");
    }
}
