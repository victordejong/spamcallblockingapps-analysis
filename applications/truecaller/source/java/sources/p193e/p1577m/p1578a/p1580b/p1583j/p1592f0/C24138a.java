package p193e.p1577m.p1578a.p1580b.p1583j.p1592f0;

import android.util.SparseArray;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.EnumC23989d;
/* renamed from: e.m.a.b.j.f0.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/f0/a.class */
public final class C24138a {

    /* renamed from: a */
    public static SparseArray<EnumC23989d> f66840a = new SparseArray<>();

    /* renamed from: b */
    public static HashMap<EnumC23989d, Integer> f66841b;

    static {
        HashMap<EnumC23989d, Integer> hashMap = new HashMap<>();
        f66841b = hashMap;
        hashMap.put(EnumC23989d.DEFAULT, 0);
        f66841b.put(EnumC23989d.VERY_LOW, 1);
        f66841b.put(EnumC23989d.HIGHEST, 2);
        for (EnumC23989d enumC23989d : f66841b.keySet()) {
            f66840a.append(f66841b.get(enumC23989d).intValue(), enumC23989d);
        }
    }

    /* renamed from: a */
    public static int m5548a(EnumC23989d enumC23989d) {
        Integer num = f66841b.get(enumC23989d);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + enumC23989d);
    }

    /* renamed from: b */
    public static EnumC23989d m5547b(int i) {
        EnumC23989d enumC23989d = f66840a.get(i);
        if (enumC23989d != null) {
            return enumC23989d;
        }
        throw new IllegalArgumentException(C22128a.m8611i2("Unknown Priority for value ", i));
    }
}
