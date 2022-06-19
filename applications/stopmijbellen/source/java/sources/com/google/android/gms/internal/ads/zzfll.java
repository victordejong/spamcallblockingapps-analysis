package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewParent;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfll.class */
public final class zzfll {
    private final HashMap<View, String> zza = new HashMap<>();
    private final HashMap<View, zzflk> zzb = new HashMap<>();
    private final HashMap<String, View> zzc = new HashMap<>();
    private final HashSet<View> zzd = new HashSet<>();
    private final HashSet<String> zze = new HashSet<>();
    private final HashSet<String> zzf = new HashSet<>();
    private final HashMap<String, String> zzg = new HashMap<>();
    private boolean zzh;

    public final View zza(String str) {
        return this.zzc.get(str);
    }

    public final zzflk zzb(View view) {
        zzflk zzflkVar = this.zzb.get(view);
        if (zzflkVar != null) {
            this.zzb.remove(view);
        }
        return zzflkVar;
    }

    public final String zzc(String str) {
        return this.zzg.get(str);
    }

    public final String zzd(View view) {
        if (this.zza.size() == 0) {
            return null;
        }
        String str = this.zza.get(view);
        if (str != null) {
            this.zza.remove(view);
        }
        return str;
    }

    public final HashSet<String> zze() {
        return this.zzf;
    }

    public final HashSet<String> zzf() {
        return this.zze;
    }

    public final void zzg() {
        this.zza.clear();
        this.zzb.clear();
        this.zzc.clear();
        this.zzd.clear();
        this.zze.clear();
        this.zzf.clear();
        this.zzg.clear();
        this.zzh = false;
    }

    public final void zzh() {
        this.zzh = true;
    }

    public final void zzi() {
        String str;
        zzfkp zza = zzfkp.zza();
        if (zza != null) {
            for (zzfke zzfkeVar : zza.zzb()) {
                View zzf = zzfkeVar.zzf();
                if (zzfkeVar.zzj()) {
                    String zzh = zzfkeVar.zzh();
                    if (zzf != null) {
                        if (zzf.hasWindowFocus()) {
                            HashSet hashSet = new HashSet();
                            View view = zzf;
                            while (true) {
                                View view2 = view;
                                if (view2 == null) {
                                    this.zzd.addAll(hashSet);
                                    str = null;
                                    break;
                                }
                                String zzb = zzflj.zzb(view2);
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
                            this.zza.put(zzf, zzh);
                            for (zzfks zzfksVar : zzfkeVar.zzi()) {
                                View view3 = zzfksVar.zzb().get();
                                if (view3 != null) {
                                    zzflk zzflkVar = this.zzb.get(view3);
                                    if (zzflkVar != null) {
                                        zzflkVar.zzc(zzfkeVar.zzh());
                                    } else {
                                        this.zzb.put(view3, new zzflk(zzfksVar, zzfkeVar.zzh()));
                                    }
                                }
                            }
                        } else {
                            this.zzf.add(zzh);
                            this.zzc.put(zzh, zzf);
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

    public final int zzj(View view) {
        if (this.zzd.contains(view)) {
            return 1;
        }
        return this.zzh ? 2 : 3;
    }
}
