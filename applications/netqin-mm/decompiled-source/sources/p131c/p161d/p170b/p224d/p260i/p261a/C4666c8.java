package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzmx;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzkr;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p012b.p035f.C0780a;
/* renamed from: c.d.b.d.i.a.c8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/c8.class */
public final class C4666c8 {

    /* renamed from: a */
    public String f17018a;

    /* renamed from: b */
    public boolean f17019b;

    /* renamed from: c */
    public zzcd.zzi f17020c;

    /* renamed from: d */
    public BitSet f17021d;

    /* renamed from: e */
    public BitSet f17022e;

    /* renamed from: f */
    public Map<Integer, Long> f17023f;

    /* renamed from: g */
    public Map<Integer, List<Long>> f17024g;

    /* renamed from: h */
    public final /* synthetic */ C4646a8 f17025h;

    public C4666c8(C4646a8 a8Var, String str) {
        this.f17025h = a8Var;
        this.f17018a = str;
        this.f17019b = true;
        this.f17021d = new BitSet();
        this.f17022e = new BitSet();
        this.f17023f = new C0780a();
        this.f17024g = new C0780a();
    }

    public /* synthetic */ C4666c8(C4646a8 a8Var, String str, C4876z7 z7Var) {
        this(a8Var, str);
    }

    public C4666c8(C4646a8 a8Var, String str, zzcd.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map<Integer, Long> map, Map<Integer, Long> map2) {
        this.f17025h = a8Var;
        this.f17018a = str;
        this.f17021d = bitSet;
        this.f17022e = bitSet2;
        this.f17023f = map;
        this.f17024g = new C0780a();
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(map2.get(num));
                this.f17024g.put(num, arrayList);
            }
        }
        this.f17019b = false;
        this.f17020c = zziVar;
    }

    public /* synthetic */ C4666c8(C4646a8 a8Var, String str, zzcd.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, C4876z7 z7Var) {
        this(a8Var, str, zziVar, bitSet, bitSet2, map, map2);
    }

    /* renamed from: a */
    public static /* synthetic */ BitSet m25036a(C4666c8 c8Var) {
        return c8Var.f17021d;
    }

    /* renamed from: a */
    public final zzcd.zza m25037a(int i) {
        ArrayList arrayList;
        List list;
        zzcd.zza.C10517zza v = zzcd.zza.m10299v();
        v.m10297a(i);
        v.m10294a(this.f17019b);
        zzcd.zzi zziVar = this.f17020c;
        if (zziVar != null) {
            v.m10295a(zziVar);
        }
        zzcd.zzi.zza A = zzcd.zzi.m9949A();
        A.m9916b(zzkr.m8756a(this.f17021d));
        A.m9918a(zzkr.m8756a(this.f17022e));
        if (this.f17023f != null) {
            ArrayList arrayList2 = new ArrayList(this.f17023f.size());
            Iterator<Integer> it = this.f17023f.keySet().iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                int intValue = it.next().intValue();
                zzcd.zzb.zza s = zzcd.zzb.m10286s();
                s.m10284a(intValue);
                s.m10283a(this.f17023f.get(Integer.valueOf(intValue)).longValue());
                arrayList2.add((zzcd.zzb) ((zzhy) s.mo9619b()));
            }
        } else {
            arrayList = null;
        }
        A.m9915c(arrayList);
        if (this.f17024g != null) {
            ArrayList arrayList3 = new ArrayList(this.f17024g.size());
            Iterator<Integer> it2 = this.f17024g.keySet().iterator();
            while (true) {
                list = arrayList3;
                if (!it2.hasNext()) {
                    break;
                }
                Integer next = it2.next();
                zzcd.zzj.zza s2 = zzcd.zzj.m9904s();
                s2.m9902a(next.intValue());
                List<Long> list2 = this.f17024g.get(next);
                if (list2 != null) {
                    Collections.sort(list2);
                    s2.m9901a(list2);
                }
                arrayList3.add((zzcd.zzj) ((zzhy) s2.mo9619b()));
            }
        } else {
            list = Collections.emptyList();
        }
        A.m9914d(list);
        v.m10296a(A);
        return (zzcd.zza) ((zzhy) v.mo9619b());
    }

    /* renamed from: a */
    public final void m25035a(AbstractC4676d8 d8Var) {
        int a = d8Var.mo25020a();
        Boolean bool = d8Var.f17044c;
        if (bool != null) {
            this.f17022e.set(a, bool.booleanValue());
        }
        Boolean bool2 = d8Var.f17045d;
        if (bool2 != null) {
            this.f17021d.set(a, bool2.booleanValue());
        }
        if (d8Var.f17046e != null) {
            Long l = this.f17023f.get(Integer.valueOf(a));
            long longValue = d8Var.f17046e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f17023f.put(Integer.valueOf(a), Long.valueOf(longValue));
            }
        }
        if (d8Var.f17047f != null) {
            List<Long> list = this.f17024g.get(Integer.valueOf(a));
            List<Long> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.f17024g.put(Integer.valueOf(a), list2);
            }
            if (d8Var.mo25018b()) {
                list2.clear();
            }
            if (zzmx.m9510a() && this.f17025h.m24897h().m9344d(this.f17018a, zzas.f29862c0) && d8Var.mo25017c()) {
                list2.clear();
            }
            if (!zzmx.m9510a() || !this.f17025h.m24897h().m9344d(this.f17018a, zzas.f29862c0)) {
                list2.add(Long.valueOf(d8Var.f17047f.longValue() / 1000));
                return;
            }
            long longValue2 = d8Var.f17047f.longValue() / 1000;
            if (!list2.contains(Long.valueOf(longValue2))) {
                list2.add(Long.valueOf(longValue2));
            }
        }
    }
}
