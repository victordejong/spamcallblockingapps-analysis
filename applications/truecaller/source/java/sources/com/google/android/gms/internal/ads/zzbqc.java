package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.amazon.device.ads.DtbConstants;
import com.amazon.device.ads.MraidExpandCommand;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.util.zzbu;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbsi;
import com.google.android.gms.internal.ads.zzcmc;
import com.google.android.gms.internal.ads.zzcml;
import com.google.android.gms.internal.ads.zzcni;
import com.google.android.gms.internal.ads.zzcnn;
import com.google.android.gms.internal.ads.zzcnr;
import com.google.android.gms.internal.ads.zzcnu;
import com.google.android.gms.internal.ads.zzcnw;
import com.google.android.gms.internal.ads.zzdio;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.common.AdType;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p1727n3.p1807k.p1808a.C26458x;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqc.class */
public final class zzbqc<T extends zzbcv & zzcmc & zzcml & zzbsi & zzcni & zzcnn & zzcnr & zzdio & zzcnu & zzcnw> implements zzbpr<T> {
    private final zzb zza;
    private final zzdvi zzb;
    private final zzffc zzc;
    private final zzbyj zze;
    private final zzedq zzf;
    private zzt zzg = null;
    private final zzcgy zzd = new zzcgy(null);

    public zzbqc(zzb zzbVar, zzbyj zzbyjVar, zzedq zzedqVar, zzdvi zzdviVar, zzffc zzffcVar) {
        this.zza = zzbVar;
        this.zze = zzbyjVar;
        this.zzf = zzedqVar;
        this.zzb = zzdviVar;
        this.zzc = zzffcVar;
    }

    public static boolean zzc(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    public static int zzd(Map<String, String> map) {
        String str = map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return 7;
            }
            if ("l".equalsIgnoreCase(str)) {
                return 6;
            }
            if (!AbstractC2405c.f7629a.equalsIgnoreCase(str)) {
                return -1;
            }
            return com.google.android.gms.ads.internal.zzt.zze().zzh();
        }
        return -1;
    }

    @VisibleForTesting
    public static Uri zze(Context context, zzaas zzaasVar, Uri uri, View view, Activity activity) {
        if (zzaasVar == null) {
            return uri;
        }
        Uri uri2 = uri;
        try {
            if (zzaasVar.zzf(uri)) {
                uri2 = zzaasVar.zze(uri, context, view, activity);
            }
        } catch (zzaat e) {
            uri2 = uri;
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.zzt.zzg().zzk(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            uri2 = uri;
        }
        return uri2;
    }

    @VisibleForTesting
    public static Uri zzf(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            zzcgt.zzg(valueOf.length() != 0 ? "Error adding click uptime parameter to url: ".concat(valueOf) : new String("Error adding click uptime parameter to url: "), e);
        }
        return uri;
    }

    private final boolean zzh(T t, Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzt.zzc();
        boolean zzI = zzs.zzI(context);
        com.google.android.gms.ads.internal.zzt.zzc();
        zzbu zzD = zzs.zzD(context);
        zzdvi zzdviVar = this.zzb;
        if (zzdviVar != null) {
            zzedy.zzd(context, zzdviVar, this.zzc, this.zzf, str2, "offline_open");
        }
        T t2 = t;
        boolean z = t2.zzP().zzg() && t2.zzj() == null;
        if (zzI) {
            this.zzf.zzc(this.zzd, str2);
            return false;
        }
        com.google.android.gms.ads.internal.zzt.zzc();
        if (new C26458x(context).m1817a() && zzD != null && !z) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzga)).booleanValue()) {
                if (t2.zzP().zzg()) {
                    zzedy.zzc(t2.zzj(), null, zzD, this.zzf, this.zzb, this.zzc, str2, str);
                } else {
                    t.zzaJ(zzD, this.zzf, this.zzb, this.zzc, str2, str, com.google.android.gms.ads.internal.zzt.zze().zzh());
                }
                zzdvi zzdviVar2 = this.zzb;
                if (zzdviVar2 != null) {
                    zzedy.zzd(context, zzdviVar2, this.zzc, this.zzf, str2, "dialog_impression");
                }
                t.onAdClicked();
                return true;
            }
        }
        this.zzf.zzd(str2);
        if (this.zzb == null) {
            return false;
        }
        HashMap hashMap = new HashMap();
        com.google.android.gms.ads.internal.zzt.zzc();
        if (!new C26458x(context).m1817a()) {
            hashMap.put("dialog_not_shown_reason", "notifications_disabled");
        } else if (zzD == null) {
            hashMap.put("dialog_not_shown_reason", "work_manager_unavailable");
        } else {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzga)).booleanValue()) {
                hashMap.put("dialog_not_shown_reason", "notification_flow_disabled");
            } else if (z) {
                hashMap.put("dialog_not_shown_reason", "fullscreen_no_activity");
            }
        }
        zzedy.zzh(context, this.zzb, this.zzc, this.zzf, str2, "dialog_not_shown", hashMap);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0195, code lost:
        if (com.google.android.gms.internal.ads.zzbqb.zzb(r0, r0, r0, r0) == null) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzi(T r7, java.util.Map<java.lang.String, java.lang.String> r8, boolean r9, java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbqc.zzi(com.google.android.gms.internal.ads.zzbcv, java.util.Map, boolean, java.lang.String, boolean):void");
    }

    private final void zzj(boolean z) {
        zzbyj zzbyjVar = this.zze;
        if (zzbyjVar != null) {
            zzbyjVar.zzb(z);
        }
    }

    public final void zzk(int i) {
        if (this.zzb == null) {
            return;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
            zzffc zzffcVar = this.zzc;
            zzffb zza = zzffb.zza("cct_action");
            zza.zzc("cct_open_status", zzbki.zza(i));
            zzffcVar.zza(zza);
            return;
        }
        zzdvh zzd = this.zzb.zzd();
        zzd.zzd("action", "cct_action");
        zzd.zzd("cct_open_status", zzbki.zza(i));
        zzd.zze();
    }

    /* renamed from: zzb */
    public final void zza(T t, Map<String, String> map) {
        boolean z;
        String str;
        boolean z2;
        Boolean bool = Boolean.TRUE;
        T t2 = t;
        String zza = zzcfc.zza(map.get("u"), t2.getContext(), true);
        String str2 = map.get("a");
        if (str2 == null) {
            zzcgt.zzi("Action missing from an open GMSG.");
            return;
        }
        zzb zzbVar = this.zza;
        if (zzbVar != null && !zzbVar.zzb()) {
            this.zza.zzc(zza);
            return;
        }
        zzezz zzF = t2.zzF();
        zzfac zzaB = t2.zzaB();
        if (zzF == null || zzaB == null) {
            str = "";
            z = false;
        } else {
            z = zzF.zzaf;
            str = zzaB.zzb;
        }
        boolean z3 = !((Boolean) zzbet.zzc().zzc(zzbjl.zzgZ)).booleanValue() || !map.containsKey("sc") || !map.get("sc").equals(DtbConstants.NETWORK_TYPE_UNKNOWN);
        if (MraidExpandCommand.NAME.equalsIgnoreCase(str2)) {
            if (t2.zzW()) {
                zzcgt.zzi("Cannot expand WebView that is already expanded.");
                return;
            }
            zzj(false);
            t.zzaG(zzc(map), zzd(map), z3);
        } else if ("webapp".equalsIgnoreCase(str2)) {
            zzj(false);
            if (zza != null) {
                t.zzaH(zzc(map), zzd(map), zza, z3);
            } else {
                t.zzaI(zzc(map), zzd(map), map.get(AdType.HTML), map.get("baseurl"), z3);
            }
        } else if ("chrome_custom_tab".equalsIgnoreCase(str2)) {
            Context context = t2.getContext();
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzcV)).booleanValue()) {
                z2 = false;
            } else {
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdb)).booleanValue()) {
                    zze.zza("User opt out chrome custom tab.");
                    z2 = false;
                } else {
                    if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzcZ)).booleanValue()) {
                        z2 = true;
                    } else {
                        String str3 = (String) zzbet.zzc().zzc(zzbjl.zzda);
                        z2 = false;
                        if (!str3.isEmpty()) {
                            if (context == null) {
                                z2 = false;
                            } else {
                                String packageName = context.getPackageName();
                                Iterator<String> it = zzfmg.zzb(zzflk.zzb(';')).zzd(str3).iterator();
                                do {
                                    z2 = false;
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                } while (!it.next().equals(packageName));
                                z2 = true;
                            }
                        }
                    }
                }
            }
            boolean zza2 = zzbkj.zza(t2.getContext());
            if (z2) {
                if (zza2) {
                    zzj(true);
                    if (TextUtils.isEmpty(zza)) {
                        zzcgt.zzi("Cannot open browser with null or empty url");
                        zzk(7);
                        return;
                    }
                    Uri zzf = zzf(zze(t2.getContext(), t2.zzU(), Uri.parse(zza), t2.zzH(), t2.zzj()));
                    if (z && this.zzf != null && zzh(t, t2.getContext(), zzf.toString(), str)) {
                        return;
                    }
                    this.zzg = new zzbpz(this);
                    t.zzaF(new zzc(null, zzf.toString(), null, null, null, null, null, null, new ObjectWrapper(this.zzg).asBinder(), true), z3);
                    return;
                }
                zzk(4);
            }
            map.put("use_first_package", "true");
            map.put("use_running_process", "true");
            zzi(t, map, z, str, z3);
        } else if ("app".equalsIgnoreCase(str2) && "true".equalsIgnoreCase(map.get("system_browser"))) {
            zzi(t, map, z, str, z3);
        } else if ("open_app".equalsIgnoreCase(str2)) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfS)).booleanValue()) {
                return;
            }
            zzj(true);
            String str4 = map.get("p");
            if (str4 == null) {
                zzcgt.zzi("Package name missing from open app action.");
            } else if (z && this.zzf != null && zzh(t, t2.getContext(), str4, str)) {
            } else {
                PackageManager packageManager = t2.getContext().getPackageManager();
                if (packageManager == null) {
                    zzcgt.zzi("Cannot get package manager from open app action.");
                    return;
                }
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str4);
                if (launchIntentForPackage == null) {
                    return;
                }
                t.zzaF(new zzc(launchIntentForPackage, this.zzg), z3);
            }
        } else {
            zzj(true);
            String str5 = map.get("intent_url");
            Intent intent = null;
            if (!TextUtils.isEmpty(str5)) {
                try {
                    intent = Intent.parseUri(str5, 0);
                } catch (URISyntaxException e) {
                    String valueOf = String.valueOf(str5);
                    zzcgt.zzg(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
                    intent = null;
                }
            }
            if (intent != null && intent.getData() != null) {
                Uri data = intent.getData();
                if (!Uri.EMPTY.equals(data)) {
                    Uri zzf2 = zzf(zze(t2.getContext(), t2.zzU(), data, t2.zzH(), t2.zzj()));
                    if (!TextUtils.isEmpty(intent.getType())) {
                        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfT)).booleanValue()) {
                            intent.setDataAndType(zzf2, intent.getType());
                        }
                    }
                    intent.setData(zzf2);
                }
            }
            boolean z4 = ((Boolean) zzbet.zzc().zzc(zzbjl.zzge)).booleanValue() && "intent_async".equalsIgnoreCase(str2) && map.containsKey("event_id");
            HashMap hashMap = new HashMap();
            if (z4) {
                this.zzg = new zzbqa(this, z3, t, hashMap, map);
                z3 = false;
            }
            if (intent != null) {
                if (!z || this.zzf == null || !zzh(t, t2.getContext(), intent.getData().toString(), str)) {
                    t.zzaF(new zzc(intent, this.zzg), z3);
                    return;
                } else if (!z4) {
                    return;
                } else {
                    hashMap.put(map.get("event_id"), bool);
                    t.zze("openIntentAsync", hashMap);
                    return;
                }
            }
            String uri = !TextUtils.isEmpty(zza) ? zzf(zze(t2.getContext(), t2.zzU(), Uri.parse(zza), t2.zzH(), t2.zzj())).toString() : zza;
            if (!z || this.zzf == null || !zzh(t, t2.getContext(), uri, str)) {
                t.zzaF(new zzc(map.get("i"), uri, map.get("m"), map.get("p"), map.get(AbstractC2405c.f7629a), map.get("f"), map.get("e"), this.zzg), z3);
            } else if (!z4) {
            } else {
                hashMap.put(map.get("event_id"), bool);
                t.zze("openIntentAsync", hashMap);
            }
        }
    }
}
