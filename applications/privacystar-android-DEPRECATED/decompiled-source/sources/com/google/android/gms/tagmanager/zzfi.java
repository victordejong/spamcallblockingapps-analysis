package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzru;
import com.google.android.gms.internal.measurement.zzry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfi.class */
final class zzfi {
    private zzru zzbfl;
    private final Set<zzry> zzbex = new HashSet();
    private final Map<zzry, List<zzru>> zzbfh = new HashMap();
    private final Map<zzry, List<String>> zzbfj = new HashMap();
    private final Map<zzry, List<zzru>> zzbfi = new HashMap();
    private final Map<zzry, List<String>> zzbfk = new HashMap();

    public final void zza(zzry zzryVar) {
        this.zzbex.add(zzryVar);
    }

    public final void zza(zzry zzryVar, zzru zzruVar) {
        List<zzru> list = this.zzbfh.get(zzryVar);
        List<zzru> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.zzbfh.put(zzryVar, list2);
        }
        list2.add(zzruVar);
    }

    public final void zza(zzry zzryVar, String str) {
        List<String> list = this.zzbfj.get(zzryVar);
        List<String> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.zzbfj.put(zzryVar, list2);
        }
        list2.add(str);
    }

    public final void zzb(zzru zzruVar) {
        this.zzbfl = zzruVar;
    }

    public final void zzb(zzry zzryVar, zzru zzruVar) {
        List<zzru> list = this.zzbfi.get(zzryVar);
        List<zzru> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.zzbfi.put(zzryVar, list2);
        }
        list2.add(zzruVar);
    }

    public final void zzb(zzry zzryVar, String str) {
        List<String> list = this.zzbfk.get(zzryVar);
        List<String> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.zzbfk.put(zzryVar, list2);
        }
        list2.add(str);
    }

    public final Set<zzry> zzpn() {
        return this.zzbex;
    }

    public final Map<zzry, List<zzru>> zzpo() {
        return this.zzbfh;
    }

    public final Map<zzry, List<String>> zzpp() {
        return this.zzbfj;
    }

    public final Map<zzry, List<String>> zzpq() {
        return this.zzbfk;
    }

    public final Map<zzry, List<zzru>> zzpr() {
        return this.zzbfi;
    }

    public final zzru zzps() {
        return this.zzbfl;
    }
}
