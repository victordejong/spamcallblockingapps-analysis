package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbes;
import com.google.android.gms.internal.ads.zzbuk;
import com.google.android.gms.internal.ads.zzcog;
import com.google.android.gms.internal.ads.zzcop;
import com.google.android.gms.internal.ads.zzcpm;
import com.google.android.gms.internal.ads.zzcpq;
import com.google.android.gms.internal.ads.zzcpu;
import com.google.android.gms.internal.ads.zzcpx;
import com.google.android.gms.internal.ads.zzcpz;
import com.google.android.gms.internal.ads.zzdmd;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p026c0.C0809q;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbse.class */
public final class zzbse<T extends zzbes & zzcog & zzcop & zzbuk & zzcpm & zzcpq & zzcpu & zzdmd & zzcpx & zzcpz> implements zzbrt<T> {
    private final zzb zza;
    private final zzdyz zzb;
    private final zzfio zzc;
    private final zzcak zze;
    private final zzehh zzf;
    private zzu zzg = null;
    private final zzcje zzd = new zzcje(null);

    public zzbse(zzb zzbVar, zzcak zzcakVar, zzehh zzehhVar, zzdyz zzdyzVar, zzfio zzfioVar) {
        this.zza = zzbVar;
        this.zze = zzcakVar;
        this.zzf = zzehhVar;
        this.zzb = zzdyzVar;
        this.zzc = zzfioVar;
    }

    public static int zzb(Map<String, String> map) {
        String str = map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return 7;
            }
            if ("l".equalsIgnoreCase(str)) {
                return 6;
            }
            if (!"c".equalsIgnoreCase(str)) {
                return -1;
            }
            return zzt.zzq().zzg();
        }
        return -1;
    }

    @VisibleForTesting
    public static Uri zzc(Context context, zzalt zzaltVar, Uri uri, View view, Activity activity) {
        if (zzaltVar == null) {
            return uri;
        }
        Uri uri2 = uri;
        try {
            if (zzaltVar.zze(uri)) {
                uri2 = zzaltVar.zza(uri, context, view, activity);
            }
        } catch (zzalu e) {
            uri2 = uri;
        } catch (Exception e2) {
            zzt.zzo().zzs(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            uri2 = uri;
        }
        return uri2;
    }

    @VisibleForTesting
    public static Uri zzd(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            zzciz.zzh(valueOf.length() != 0 ? "Error adding click uptime parameter to url: ".concat(valueOf) : new String("Error adding click uptime parameter to url: "), e);
        }
        return uri;
    }

    public static boolean zzf(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0190, code lost:
        if (com.google.android.gms.internal.ads.zzbsd.zzc(r0, r0, r0, r0) == null) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzh(T r7, java.util.Map<java.lang.String, java.lang.String> r8, boolean r9, java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbse.zzh(com.google.android.gms.internal.ads.zzbes, java.util.Map, boolean, java.lang.String, boolean):void");
    }

    private final void zzi(boolean z) {
        zzcak zzcakVar = this.zze;
        if (zzcakVar != null) {
            zzcakVar.zza(z);
        }
    }

    private final boolean zzj(T t, Context context, String str, String str2) {
        zzt.zzp();
        boolean zzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(context);
        zzt.zzp();
        zzbv zzE = com.google.android.gms.ads.internal.util.zzt.zzE(context);
        zzdyz zzdyzVar = this.zzb;
        if (zzdyzVar != null) {
            zzehp.zzc(context, zzdyzVar, this.zzc, this.zzf, str2, "offline_open");
        }
        T t2 = t;
        boolean z = t2.zzQ().zzi() && t2.zzk() == null;
        if (zzJ) {
            this.zzf.zzh(this.zzd, str2);
            return false;
        }
        zzt.zzp();
        if (new C0809q(context).m7349a() && zzE != null && !z) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgi)).booleanValue()) {
                if (t2.zzQ().zzi()) {
                    zzehp.zzh(t2.zzk(), null, zzE, this.zzf, this.zzb, this.zzc, str2, str);
                } else {
                    t.zzaG(zzE, this.zzf, this.zzb, this.zzc, str2, str, zzt.zzq().zzg());
                }
                zzdyz zzdyzVar2 = this.zzb;
                if (zzdyzVar2 != null) {
                    zzehp.zzc(context, zzdyzVar2, this.zzc, this.zzf, str2, "dialog_impression");
                }
                t.onAdClicked();
                return true;
            }
        }
        this.zzf.zzc(str2);
        if (this.zzb == null) {
            return false;
        }
        HashMap hashMap = new HashMap();
        zzt.zzp();
        if (!new C0809q(context).m7349a()) {
            hashMap.put("dialog_not_shown_reason", "notifications_disabled");
        } else if (zzE == null) {
            hashMap.put("dialog_not_shown_reason", "work_manager_unavailable");
        } else {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzgi)).booleanValue()) {
                hashMap.put("dialog_not_shown_reason", "notification_flow_disabled");
            } else if (z) {
                hashMap.put("dialog_not_shown_reason", "fullscreen_no_activity");
            }
        }
        zzehp.zzd(context, this.zzb, this.zzc, this.zzf, str2, "dialog_not_shown", hashMap);
        return false;
    }

    public final void zzk(int i) {
        if (this.zzb == null) {
            return;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
            zzfio zzfioVar = this.zzc;
            zzfin zzb = zzfin.zzb("cct_action");
            zzb.zza("cct_open_status", zzbmg.zza(i));
            zzfioVar.zzb(zzb);
            return;
        }
        zzdyy zza = this.zzb.zza();
        zza.zzb("action", "cct_action");
        zza.zzb("cct_open_status", zzbmg.zza(i));
        zza.zzf();
    }

    /* renamed from: zze */
    public final void zza(T t, Map<String, String> map) {
        boolean z;
        String str;
        boolean z2;
        T t2 = t;
        String zzc = zzchj.zzc(map.get("u"), t2.getContext(), true);
        String str2 = map.get("a");
        if (str2 == null) {
            zzciz.zzj("Action missing from an open GMSG.");
            return;
        }
        zzb zzbVar = this.zza;
        if (zzbVar != null && !zzbVar.zzc()) {
            this.zza.zzb(zzc);
            return;
        }
        zzfdn zzF = t2.zzF();
        zzfdq zzR = t2.zzR();
        if (zzF == null || zzR == null) {
            str = "";
            z = false;
        } else {
            z = zzF.zzag;
            str = zzR.zzb;
        }
        boolean z3 = !((Boolean) zzbgq.zzc().zzb(zzblj.zzhk)).booleanValue() || !map.containsKey("sc") || !map.get("sc").equals("0");
        if ("expand".equalsIgnoreCase(str2)) {
            if (t2.zzaC()) {
                zzciz.zzj("Cannot expand WebView that is already expanded.");
                return;
            }
            zzi(false);
            t.zzaH(zzf(map), zzb(map), z3);
        } else if ("webapp".equalsIgnoreCase(str2)) {
            zzi(false);
            if (zzc != null) {
                t.zzaI(zzf(map), zzb(map), zzc, z3);
            } else {
                t.zzaJ(zzf(map), zzb(map), map.get("html"), map.get("baseurl"), z3);
            }
        } else if ("chrome_custom_tab".equalsIgnoreCase(str2)) {
            Context context = t2.getContext();
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdc)).booleanValue()) {
                z2 = false;
            } else {
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdi)).booleanValue()) {
                    zze.zza("User opt out chrome custom tab.");
                    z2 = false;
                } else {
                    if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdg)).booleanValue()) {
                        z2 = true;
                    } else {
                        String str3 = (String) zzbgq.zzc().zzb(zzblj.zzdh);
                        z2 = false;
                        if (!str3.isEmpty()) {
                            if (context == null) {
                                z2 = false;
                            } else {
                                String packageName = context.getPackageName();
                                Iterator<String> it2 = zzfqp.zzc(zzfps.zzb(';')).zzd(str3).iterator();
                                do {
                                    z2 = false;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                } while (!it2.next().equals(packageName));
                                z2 = true;
                            }
                        }
                    }
                }
            }
            boolean zzg = zzbmh.zzg(t2.getContext());
            if (z2) {
                if (zzg) {
                    zzi(true);
                    if (TextUtils.isEmpty(zzc)) {
                        zzciz.zzj("Cannot open browser with null or empty url");
                        zzk(7);
                        return;
                    }
                    Uri zzd = zzd(zzc(t2.getContext(), t2.zzK(), Uri.parse(zzc), t2.zzH(), t2.zzk()));
                    if (z && this.zzf != null && zzj(t, t2.getContext(), zzd.toString(), str)) {
                        return;
                    }
                    this.zzg = new zzbsb(this);
                    t.zzaF(new zzc(null, zzd.toString(), null, null, null, null, null, null, ObjectWrapper.wrap(this.zzg).asBinder(), true), z3);
                    return;
                }
                zzk(4);
            }
            map.put("use_first_package", "true");
            map.put("use_running_process", "true");
            zzh(t, map, z, str, z3);
        } else if ("app".equalsIgnoreCase(str2) && "true".equalsIgnoreCase(map.get("system_browser"))) {
            zzh(t, map, z, str, z3);
        } else if ("open_app".equalsIgnoreCase(str2)) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfZ)).booleanValue()) {
                return;
            }
            zzi(true);
            String str4 = map.get("p");
            if (str4 == null) {
                zzciz.zzj("Package name missing from open app action.");
            } else if (z && this.zzf != null && zzj(t, t2.getContext(), str4, str)) {
            } else {
                PackageManager packageManager = t2.getContext().getPackageManager();
                if (packageManager == null) {
                    zzciz.zzj("Cannot get package manager from open app action.");
                    return;
                }
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str4);
                if (launchIntentForPackage == null) {
                    return;
                }
                t.zzaF(new zzc(launchIntentForPackage, this.zzg), z3);
            }
        } else {
            zzi(true);
            String str5 = map.get("intent_url");
            Intent intent = null;
            if (!TextUtils.isEmpty(str5)) {
                try {
                    intent = Intent.parseUri(str5, 0);
                } catch (URISyntaxException e) {
                    String valueOf = String.valueOf(str5);
                    zzciz.zzh(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
                    intent = null;
                }
            }
            if (intent != null && intent.getData() != null) {
                Uri data = intent.getData();
                if (!Uri.EMPTY.equals(data)) {
                    Uri zzd2 = zzd(zzc(t2.getContext(), t2.zzK(), data, t2.zzH(), t2.zzk()));
                    if (!TextUtils.isEmpty(intent.getType())) {
                        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzga)).booleanValue()) {
                            intent.setDataAndType(zzd2, intent.getType());
                        }
                    }
                    intent.setData(zzd2);
                }
            }
            boolean z4 = ((Boolean) zzbgq.zzc().zzb(zzblj.zzgm)).booleanValue() && "intent_async".equalsIgnoreCase(str2) && map.containsKey("event_id");
            HashMap hashMap = new HashMap();
            if (z4) {
                this.zzg = new zzbsc(this, z3, t, hashMap, map);
                z3 = false;
            }
            if (intent != null) {
                if (!z || this.zzf == null || !zzj(t, t2.getContext(), intent.getData().toString(), str)) {
                    t.zzaF(new zzc(intent, this.zzg), z3);
                    return;
                } else if (!z4) {
                    return;
                } else {
                    hashMap.put(map.get("event_id"), Boolean.TRUE);
                    t.zzd("openIntentAsync", hashMap);
                    return;
                }
            }
            String str6 = zzc;
            if (!TextUtils.isEmpty(zzc)) {
                str6 = zzd(zzc(t2.getContext(), t2.zzK(), Uri.parse(zzc), t2.zzH(), t2.zzk())).toString();
            }
            if (!z || this.zzf == null || !zzj(t, t2.getContext(), str6, str)) {
                t.zzaF(new zzc(map.get("i"), str6, map.get("m"), map.get("p"), map.get("c"), map.get("f"), map.get("e"), this.zzg), z3);
            } else if (!z4) {
            } else {
                hashMap.put(map.get("event_id"), Boolean.TRUE);
                t.zzd("openIntentAsync", hashMap);
            }
        }
    }
}
