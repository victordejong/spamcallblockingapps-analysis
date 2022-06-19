package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.internal.measurement.zzfj;
import com.google.android.gms.internal.measurement.zzfk;
import com.google.android.gms.internal.measurement.zzfl;
import com.google.android.gms.internal.measurement.zzfm;
import com.google.android.gms.internal.measurement.zzgc;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzge;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzoa;
import com.google.android.gms.measurement.internal.zzaf;
import com.google.android.gms.measurement.internal.zzdt;
import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzkr;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p1727n3.p1788g.AbstractC26181g;
import p1727n3.p1788g.C26174a;
import p1727n3.p1788g.C26187h;
/* renamed from: e.m.a.f.l.a.e4 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/e4.class */
public final class C25046e4 {

    /* renamed from: a */
    public String f70059a;

    /* renamed from: b */
    public boolean f70060b;

    /* renamed from: c */
    public zzgd f70061c;

    /* renamed from: d */
    public BitSet f70062d;

    /* renamed from: e */
    public BitSet f70063e;

    /* renamed from: f */
    public Map f70064f;

    /* renamed from: g */
    public Map f70065g;

    /* renamed from: h */
    public final /* synthetic */ j4 f70066h;

    public /* synthetic */ C25046e4(j4 j4Var, String str) {
        this.f70066h = j4Var;
        this.f70059a = str;
        this.f70060b = true;
        this.f70062d = new BitSet();
        this.f70063e = new BitSet();
        this.f70064f = new C26174a();
        this.f70065g = new C26174a();
    }

    public /* synthetic */ C25046e4(j4 j4Var, String str, zzgd zzgdVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2) {
        this.f70066h = j4Var;
        this.f70059a = str;
        this.f70062d = bitSet;
        this.f70063e = bitSet2;
        this.f70064f = map;
        this.f70065g = new C26174a();
        Iterator it = ((AbstractC26181g.C26184c) ((C26174a) map2).keySet()).iterator();
        while (true) {
            AbstractC26181g.C26182a c26182a = (AbstractC26181g.C26182a) it;
            if (!c26182a.hasNext()) {
                this.f70060b = false;
                this.f70061c = zzgdVar;
                return;
            }
            Integer num = (Integer) c26182a.next();
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) ((C26187h) map2).get(num));
            this.f70065g.put(num, arrayList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.util.List] */
    /* renamed from: a */
    public final zzfk m4229a(int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        zzfj zzb = zzfk.zzb();
        zzb.zza(i);
        zzb.zzc(this.f70060b);
        zzgd zzgdVar = this.f70061c;
        if (zzgdVar != null) {
            zzb.zzd(zzgdVar);
        }
        zzgc zzf = zzgd.zzf();
        zzf.zzb(zzkr.B(this.f70062d));
        zzf.zzd(zzkr.B(this.f70063e));
        Map map = this.f70064f;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.size());
            for (Integer num : this.f70064f.keySet()) {
                int intValue = num.intValue();
                Long l = (Long) this.f70064f.get(Integer.valueOf(intValue));
                if (l != null) {
                    zzfl zzc = zzfm.zzc();
                    zzc.zzb(intValue);
                    zzc.zza(l.longValue());
                    arrayList.add((zzfm) zzc.zzay());
                }
            }
        }
        if (arrayList != null) {
            zzf.zza(arrayList);
        }
        Map map2 = this.f70065g;
        if (map2 == null) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(map2.size());
            for (Integer num2 : this.f70065g.keySet()) {
                zzge zzd = zzgf.zzd();
                zzd.zzb(num2.intValue());
                List list = (List) this.f70065g.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    zzd.zza(list);
                }
                arrayList2.add((zzgf) zzd.zzay());
            }
        }
        zzf.zzc(arrayList2);
        zzb.zzb(zzf);
        return (zzfk) zzb.zzay();
    }

    /* renamed from: b */
    public final void m4228b(AbstractC25063h4 abstractC25063h4) {
        int m4218a = abstractC25063h4.m4218a();
        Boolean bool = abstractC25063h4.f70125c;
        if (bool != null) {
            this.f70063e.set(m4218a, bool.booleanValue());
        }
        Boolean bool2 = abstractC25063h4.f70126d;
        if (bool2 != null) {
            this.f70062d.set(m4218a, bool2.booleanValue());
        }
        if (abstractC25063h4.f70127e != null) {
            Map map = this.f70064f;
            Integer valueOf = Integer.valueOf(m4218a);
            Long l = (Long) map.get(valueOf);
            long longValue = abstractC25063h4.f70127e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f70064f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (abstractC25063h4.f70128f != null) {
            Map map2 = this.f70065g;
            Integer valueOf2 = Integer.valueOf(m4218a);
            List list = (List) map2.get(valueOf2);
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                this.f70065g.put(valueOf2, arrayList);
            }
            if (abstractC25063h4.m4216c()) {
                arrayList.clear();
            }
            zzoa.zzc();
            zzaf zzafVar = ((v0) this.f70066h).a.g;
            String str = this.f70059a;
            zzdt zzdtVar = zzdu.f6307X;
            if (zzafVar.r(str, zzdtVar) && abstractC25063h4.m4217b()) {
                arrayList.clear();
            }
            zzoa.zzc();
            if (!((v0) this.f70066h).a.g.r(this.f70059a, zzdtVar)) {
                arrayList.add(Long.valueOf(abstractC25063h4.f70128f.longValue() / 1000));
                return;
            }
            Long valueOf3 = Long.valueOf(abstractC25063h4.f70128f.longValue() / 1000);
            if (arrayList.contains(valueOf3)) {
                return;
            }
            arrayList.add(valueOf3);
        }
    }
}
