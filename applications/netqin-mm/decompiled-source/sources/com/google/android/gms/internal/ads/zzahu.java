package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbfy;
import com.google.android.gms.internal.ads.zzbhi;
import com.google.android.gms.internal.ads.zzbhl;
import com.google.android.gms.internal.ads.zzbhp;
import com.google.android.gms.internal.ads.zzbhq;
import com.google.android.gms.internal.ads.zzbhs;
import com.inmobi.p497a.C7998l;
import com.inmobi.p497a.C8003o;
import com.mopub.common.AdType;
import java.net.URISyntaxException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahu.class */
public final class zzahu<T extends zzbfy & zzbhi & zzbhl & zzbhp & zzbhq & zzbhs> implements zzahq<T> {

    /* renamed from: a */
    public final zza f24119a;

    /* renamed from: b */
    public final zzaqd f24120b;

    public zzahu(zza zzaVar, zzaqd zzaqdVar) {
        this.f24119a = zzaVar;
        this.f24120b = zzaqdVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Uri m16754a(Context context, zzeg zzegVar, Uri uri, View view, Activity activity) {
        if (zzegVar == null) {
            return uri;
        }
        Uri uri2 = uri;
        try {
            if (zzegVar.m12597c(uri)) {
                uri2 = zzegVar.m12601a(uri, context, view, activity);
            }
        } catch (zzef e) {
            uri2 = uri;
        } catch (Exception e2) {
            zzp.m17965g().m16188a(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            uri2 = uri;
        }
        return uri2;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Uri m16753a(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            zzbbq.m15855b(valueOf.length() != 0 ? "Error adding click uptime parameter to url: ".concat(valueOf) : new String("Error adding click uptime parameter to url: "), e);
        }
        return uri;
    }

    /* renamed from: a */
    public static boolean m16752a(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    /* renamed from: b */
    public static int m16750b(Map<String, String> map) {
        String str = map.get(C8003o.f31242b);
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            zzp.m17967e();
            return 7;
        } else if (C7998l.f31218d.equalsIgnoreCase(str)) {
            zzp.m17967e();
            return 6;
        } else if ("c".equalsIgnoreCase(str)) {
            return zzp.m17967e().mo16036a();
        } else {
            return -1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(Object obj, Map map) {
        zzbfy zzbfyVar = (zzbfy) obj;
        zzbhi zzbhiVar = (zzbhi) zzbfyVar;
        String a = zzaxh.m16219a((String) map.get("u"), zzbhiVar.getContext(), true);
        String str = (String) map.get("a");
        if (str == null) {
            zzbbq.m15852d("Action missing from an open GMSG.");
            return;
        }
        zza zzaVar = this.f24119a;
        if (zzaVar != null && !zzaVar.m17995c()) {
            this.f24119a.m17997a(a);
        } else if ("expand".equalsIgnoreCase(str)) {
            if (((zzbhl) zzbfyVar).mo15526e()) {
                zzbbq.m15852d("Cannot expand WebView that is already expanded.");
                return;
            }
            m16751a(false);
            ((zzbhp) zzbfyVar).mo15521a(m16752a(map), m16750b(map));
        } else if ("webapp".equalsIgnoreCase(str)) {
            m16751a(false);
            if (a != null) {
                ((zzbhp) zzbfyVar).mo15520a(m16752a(map), m16750b(map), a);
            } else {
                ((zzbhp) zzbfyVar).mo15519a(m16752a(map), m16750b(map), (String) map.get(AdType.HTML), (String) map.get("baseurl"));
            }
        } else if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
            m16751a(true);
            if (TextUtils.isEmpty(a)) {
                zzbbq.m15852d("Destination url cannot be empty.");
                return;
            }
            try {
                ((zzbhp) zzbfyVar).mo15522a(new zzb(new zzaht(zzbhiVar.getContext(), ((zzbhq) zzbfyVar).mo15518h(), ((zzbhs) zzbfyVar).getView()).m16755a(map)));
            } catch (ActivityNotFoundException e) {
                zzbbq.m15852d(e.getMessage());
            }
        } else if ("open_app".equalsIgnoreCase(str)) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23837j4)).booleanValue()) {
                m16751a(true);
                String str2 = (String) map.get("p");
                if (str2 == null) {
                    zzbbq.m15852d("Package name missing from open app action.");
                    return;
                }
                PackageManager packageManager = zzbhiVar.getContext().getPackageManager();
                if (packageManager == null) {
                    zzbbq.m15852d("Cannot get package manager from open app action.");
                    return;
                }
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str2);
                if (launchIntentForPackage != null) {
                    ((zzbhp) zzbfyVar).mo15522a(new zzb(launchIntentForPackage));
                }
            }
        } else {
            m16751a(true);
            String str3 = (String) map.get("intent_url");
            Intent intent = null;
            if (!TextUtils.isEmpty(str3)) {
                try {
                    intent = Intent.parseUri(str3, 0);
                } catch (URISyntaxException e2) {
                    String valueOf = String.valueOf(str3);
                    zzbbq.m15855b(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e2);
                    intent = null;
                }
            }
            if (!(intent == null || intent.getData() == null)) {
                Uri data = intent.getData();
                if (!Uri.EMPTY.equals(data)) {
                    Uri a2 = m16753a(m16754a(zzbhiVar.getContext(), ((zzbhq) zzbfyVar).mo15518h(), data, ((zzbhs) zzbfyVar).getView(), zzbhiVar.mo15528b()));
                    if (!TextUtils.isEmpty(intent.getType())) {
                        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23843k4)).booleanValue()) {
                            intent.setDataAndType(a2, intent.getType());
                        }
                    }
                    intent.setData(a2);
                }
            }
            if (intent != null) {
                ((zzbhp) zzbfyVar).mo15522a(new zzb(intent));
                return;
            }
            String str4 = a;
            if (!TextUtils.isEmpty(a)) {
                str4 = m16753a(m16754a(zzbhiVar.getContext(), ((zzbhq) zzbfyVar).mo15518h(), Uri.parse(a), ((zzbhs) zzbfyVar).getView(), zzbhiVar.mo15528b())).toString();
            }
            ((zzbhp) zzbfyVar).mo15522a(new zzb((String) map.get("i"), str4, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
        }
    }

    /* renamed from: a */
    public final void m16751a(boolean z) {
        zzaqd zzaqdVar = this.f24120b;
        if (zzaqdVar != null) {
            zzaqdVar.m16445a(z);
        }
    }
}
