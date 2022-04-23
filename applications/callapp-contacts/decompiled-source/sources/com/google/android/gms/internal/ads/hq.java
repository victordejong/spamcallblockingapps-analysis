package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import com.appsflyer.share.Constants;
import com.explorestack.iab.utils.o;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.adh;
import com.google.android.gms.internal.ads.adt;
import com.google.android.gms.internal.ads.aen;
import com.google.android.gms.internal.ads.aeu;
import com.google.android.gms.internal.ads.aey;
import com.google.android.gms.internal.ads.aez;
import com.google.android.gms.internal.ads.afb;
import com.google.android.gms.internal.ads.eir;
import com.google.android.gms.internal.ads.jq;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hq.class */
public final class hq<T extends eir & adh & adt & jq & aen & aeu & aey & aez & afb> implements hi<T> {

    /* renamed from: a  reason: collision with root package name */
    private final zza f28038a;

    /* renamed from: b  reason: collision with root package name */
    private final bli f28039b;

    /* renamed from: c  reason: collision with root package name */
    private final cty f28040c;
    private final pp e;
    private final brs f;
    private zzv g = null;

    /* renamed from: d  reason: collision with root package name */
    private final zc f28041d = new zc();

    public hq(zza zzaVar, pp ppVar, brs brsVar, bli bliVar, cty ctyVar) {
        this.f28038a = zzaVar;
        this.e = ppVar;
        this.f = brsVar;
        this.f28039b = bliVar;
        this.f28040c = ctyVar;
    }

    private static Uri a(Context context, die dieVar, Uri uri, View view, Activity activity) {
        Uri uri2;
        if (dieVar == null) {
            return uri;
        }
        try {
            boolean z = false;
            if (dieVar.a(uri)) {
                String[] strArr = die.f26843a;
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
                uri2 = dieVar.a(uri, context, view, activity);
            }
        } catch (zzeh e) {
            uri2 = uri;
        } catch (Exception e2) {
            zzr.zzkz().a(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            uri2 = uri;
        }
        return uri2;
    }

    private static Uri a(Uri uri) {
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

    private final void a(boolean z) {
        pp ppVar = this.e;
        if (ppVar != null) {
            ppVar.a(z);
        }
    }

    private final boolean a(T t, Context context, String str, final String str2) {
        zzr.zzkv();
        boolean zzbd = zzj.zzbd(context);
        zzr.zzkv();
        zzbg zzbg = zzj.zzbg(context);
        bli bliVar = this.f28039b;
        if (bliVar != null) {
            bsc.a(context, bliVar, this.f28040c, this.f, str2, "offline_open");
        }
        T t2 = t;
        boolean z = t2.z().d() && t2.d() == null;
        if (zzbd) {
            final brs brsVar = this.f;
            final zc zcVar = this.f28041d;
            brsVar.a(new css(brsVar, zcVar, str2) { // from class: com.google.android.gms.internal.ads.brw

                /* renamed from: a  reason: collision with root package name */
                private final brs f24969a;

                /* renamed from: b  reason: collision with root package name */
                private final zc f24970b;

                /* renamed from: c  reason: collision with root package name */
                private final String f24971c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24969a = brsVar;
                    this.f24970b = zcVar;
                    this.f24971c = str2;
                }

                @Override // com.google.android.gms.internal.ads.css
                public final Object a(Object obj) {
                    this.f24969a.a((SQLiteDatabase) obj, this.f24970b, this.f24971c);
                    return null;
                }
            });
            return false;
        }
        zzr.zzkv();
        if (zzj.zzbf(context) && zzbg != null && !z) {
            if (((Boolean) ekb.e().a(aq.eX)).booleanValue()) {
                if (t2.z().d()) {
                    bsc.a(t2.d(), null, zzbg, this.f, this.f28039b, this.f28040c, str2, str);
                } else {
                    t.a(zzbg, this.f, this.f28039b, this.f28040c, str2, str, zzr.zzkx().zzzv());
                }
                bli bliVar2 = this.f28039b;
                if (bliVar2 != null) {
                    bsc.a(context, bliVar2, this.f28040c, this.f, str2, "dialog_impression");
                }
                t.onAdClicked();
                return true;
            }
        }
        this.f.a(str2);
        if (this.f28039b == null) {
            return false;
        }
        HashMap hashMap = new HashMap();
        zzr.zzkv();
        if (!zzj.zzbf(context)) {
            hashMap.put("dialog_not_shown_reason", "notifications_disabled");
        } else if (zzbg == null) {
            hashMap.put("dialog_not_shown_reason", "work_manager_unavailable");
        } else {
            if (!((Boolean) ekb.e().a(aq.eX)).booleanValue()) {
                hashMap.put("dialog_not_shown_reason", "notification_flow_disabled");
            } else if (z) {
                hashMap.put("dialog_not_shown_reason", "fullscreen_no_activity");
            }
        }
        bsc.a(context, this.f28039b, this.f28040c, this.f, str2, "dialog_not_shown", hashMap);
        return false;
    }

    private static boolean a(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int b(Map<String, String> map) {
        String str = map.get(o.f19200a);
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            return 6;
        }
        if (Constants.URL_CAMPAIGN.equalsIgnoreCase(str)) {
            return zzr.zzkx().zzzv();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(bt btVar) {
        if (this.f28039b != null) {
            if (((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
                this.f28040c.a(ctz.a("cct_action").a("cct_open_status", btVar.toString()));
            } else {
                this.f28039b.a().a("action", "cct_action").a("cct_open_status", btVar.toString()).a();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x035a, code lost:
        if (r0.a(r13) != null) goto L_0x0400;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.hi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void a(java.lang.Object r13, java.util.Map r14) {
        /*
            Method dump skipped, instructions count: 1875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.hq.a(java.lang.Object, java.util.Map):void");
    }
}
