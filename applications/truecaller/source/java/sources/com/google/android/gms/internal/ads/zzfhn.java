package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewParent;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhn.class */
public final class zzfhn {
    private final HashMap<View, String> zza = new HashMap<>();
    private final HashMap<View, zzfhm> zzb = new HashMap<>();
    private final HashMap<String, View> zzc = new HashMap<>();
    private final HashSet<View> zzd = new HashSet<>();
    private final HashSet<String> zze = new HashSet<>();
    private final HashSet<String> zzf = new HashSet<>();
    private final HashMap<String, String> zzg = new HashMap<>();
    private boolean zzh;

    public final HashSet<String> zza() {
        return this.zze;
    }

    public final HashSet<String> zzb() {
        return this.zzf;
    }

    public final String zzc(String str) {
        return this.zzg.get(str);
    }

    public final void zzd() {
        String str;
        zzfgr zza = zzfgr.zza();
        if (zza != null) {
            for (zzfgg zzfggVar : zza.zzf()) {
                View zzi = zzfggVar.zzi();
                if (zzfggVar.zzj()) {
                    String zzh = zzfggVar.zzh();
                    if (zzi != null) {
                        if (zzi.hasWindowFocus()) {
                            HashSet hashSet = new HashSet();
                            View view = zzi;
                            while (true) {
                                View view2 = view;
                                if (view2 == null) {
                                    this.zzd.addAll(hashSet);
                                    str = null;
                                    break;
                                }
                                String zzb = zzfhl.zzb(view2);
                                if (zzb != null) {
                                    str = zzb;
                                    break;
                                }
                                hashSet.add(view2);
                                ViewParent parent = view2.getParent();
                                view = parent instanceof View ? (View) parent : null;
                            }
                        } else {
                            str = "noWindowFocus";
                        }
                        if (str == null) {
                            this.zze.add(zzh);
                            this.zza.put(zzi, zzh);
                            for (zzfgu zzfguVar : zzfggVar.zzf()) {
                                View view3 = zzfguVar.zza().get();
                                if (view3 != null) {
                                    zzfhm zzfhmVar = this.zzb.get(view3);
                                    if (zzfhmVar != null) {
                                        zzfhmVar.zza(zzfggVar.zzh());
                                    } else {
                                        this.zzb.put(view3, new zzfhm(zzfguVar, zzfggVar.zzh()));
                                    }
                                }
                            }
                        } else {
                            this.zzf.add(zzh);
                            this.zzc.put(zzh, zzi);
                            this.zzg.put(zzh, str);
                        }
                    } else {
                        this.zzf.add(zzh);
                        this.zzg.put(zzh, "noAdView");
                    }
                }
            }
        }
    }

    public final void zze() {
        this.zza.clear();
        this.zzb.clear();
        this.zzc.clear();
        this.zzd.clear();
        this.zze.clear();
        this.zzf.clear();
        this.zzg.clear();
        this.zzh = false;
    }

    public final void zzf() {
        this.zzh = true;
    }

    public final String zzg(View view) {
        if (this.zza.size() == 0) {
            return null;
        }
        String str = this.zza.get(view);
        if (str != null) {
            this.zza.remove(view);
        }
        return str;
    }

    public final View zzh(String str) {
        return this.zzc.get(str);
    }

    public final zzfhm zzi(View view) {
        zzfhm zzfhmVar = this.zzb.get(view);
        if (zzfhmVar != null) {
            this.zzb.remove(view);
        }
        return zzfhmVar;
    }

    public final int zzj(View view) {
        if (this.zzd.contains(view)) {
            return 1;
        }
        return this.zzh ? 2 : 3;
    }
}
