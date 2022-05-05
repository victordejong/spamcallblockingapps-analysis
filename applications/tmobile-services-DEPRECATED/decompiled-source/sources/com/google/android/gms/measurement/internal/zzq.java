package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhz;
import com.google.android.gms.internal.measurement.zzmv;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzq.class */
public final class zzq {

    /* renamed from: a */
    private String f9752a;

    /* renamed from: b */
    private boolean f9753b;

    /* renamed from: c */
    private zzcd.zzi f9754c;

    /* renamed from: d */
    private BitSet f9755d;

    /* renamed from: e */
    private BitSet f9756e;

    /* renamed from: f */
    private Map<Integer, Long> f9757f;

    /* renamed from: g */
    private Map<Integer, List<Long>> f9758g;

    /* renamed from: h */
    private final /* synthetic */ zzo f9759h;

    private zzq(zzo zzoVar, String str) {
        this.f9759h = zzoVar;
        this.f9752a = str;
        this.f9753b = true;
        this.f9755d = new BitSet();
        this.f9756e = new BitSet();
        this.f9757f = new ArrayMap();
        this.f9758g = new ArrayMap();
    }

    private zzq(zzo zzoVar, String str, zzcd.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map<Integer, Long> map, Map<Integer, Long> map2) {
        this.f9759h = zzoVar;
        this.f9752a = str;
        this.f9755d = bitSet;
        this.f9756e = bitSet2;
        this.f9757f = map;
        this.f9758g = new ArrayMap();
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(map2.get(num));
                this.f9758g.put(num, arrayList);
            }
        }
        this.f9753b = false;
        this.f9754c = zziVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzq(zzo zzoVar, String str, zzcd.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, zzr zzrVar) {
        this(zzoVar, str, zziVar, bitSet, bitSet2, map, map2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzq(zzo zzoVar, String str, zzr zzrVar) {
        this(zzoVar, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ BitSet m10918b(zzq zzqVar) {
        return zzqVar.f9755d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: a */
    public final zzcd.zza m10919a(int i) {
        ArrayList arrayList;
        List list;
        zzcd.zza.C2485zza R = zzcd.zza.m13253R();
        R.m13250x(i);
        R.m13251A(this.f9753b);
        zzcd.zzi zziVar = this.f9754c;
        if (zziVar != null) {
            R.m13248z(zziVar);
        }
        zzcd.zzi.zza a0 = zzcd.zzi.m12868a0();
        a0.m12859D(zzks.m11031D(this.f9755d));
        a0.m12854z(zzks.m11031D(this.f9756e));
        if (this.f9757f != null) {
            ArrayList arrayList2 = new ArrayList(this.f9757f.size());
            Iterator<Integer> it = this.f9757f.keySet().iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                int intValue = it.next().intValue();
                zzcd.zzb.zza K = zzcd.zzb.m13239K();
                K.m13237x(intValue);
                K.m13236y(this.f9757f.get(Integer.valueOf(intValue)).longValue());
                arrayList2.add((zzcd.zzb) ((zzhz) K.mo12321k()));
            }
        } else {
            arrayList = null;
        }
        a0.m12858E(arrayList);
        if (this.f9758g != null) {
            ArrayList arrayList3 = new ArrayList(this.f9758g.size());
            Iterator<Integer> it2 = this.f9758g.keySet().iterator();
            while (true) {
                list = arrayList3;
                if (!it2.hasNext()) {
                    break;
                }
                Integer next = it2.next();
                zzcd.zzj.zza L = zzcd.zzj.m12844L();
                L.m12842x(next.intValue());
                List<Long> list2 = this.f9758g.get(next);
                if (list2 != null) {
                    Collections.sort(list2);
                    L.m12841y(list2);
                }
                arrayList3.add((zzcd.zzj) ((zzhz) L.mo12321k()));
            }
        } else {
            list = Collections.emptyList();
        }
        a0.m12857F(list);
        R.m13249y(a0);
        return (zzcd.zza) ((zzhz) R.mo12321k());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m10917c(@NonNull zzv zzvVar) {
        int a = zzvVar.mo10913a();
        Boolean bool = zzvVar.f9772c;
        if (bool != null) {
            this.f9756e.set(a, bool.booleanValue());
        }
        Boolean bool2 = zzvVar.f9773d;
        if (bool2 != null) {
            this.f9755d.set(a, bool2.booleanValue());
        }
        if (zzvVar.f9774e != null) {
            Long l = this.f9757f.get(Integer.valueOf(a));
            long longValue = zzvVar.f9774e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f9757f.put(Integer.valueOf(a), Long.valueOf(longValue));
            }
        }
        if (zzvVar.f9775f != null) {
            List<Long> list = this.f9758g.get(Integer.valueOf(a));
            List<Long> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.f9758g.put(Integer.valueOf(a), list2);
            }
            if (zzvVar.mo10905i()) {
                list2.clear();
            }
            if (zzmv.m11889a() && this.f9759h.m11311l().m10873y(this.f9752a, zzat.f8933c0) && zzvVar.mo10904j()) {
                list2.clear();
            }
            if (!zzmv.m11889a() || !this.f9759h.m11311l().m10873y(this.f9752a, zzat.f8933c0)) {
                list2.add(Long.valueOf(zzvVar.f9775f.longValue() / 1000));
                return;
            }
            long longValue2 = zzvVar.f9775f.longValue() / 1000;
            if (!list2.contains(Long.valueOf(longValue2))) {
                list2.add(Long.valueOf(longValue2));
            }
        }
    }
}
