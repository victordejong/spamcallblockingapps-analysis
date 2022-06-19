package p028c3;

import android.util.SparseArray;
import java.util.HashMap;
import p007a6.C0033h;
import p218r2.EnumC4186d;
/* renamed from: c3.a */
/* loaded from: classes-dex2jar.jar:c3/a.class */
public final class C0816a {

    /* renamed from: a */
    public static SparseArray<EnumC4186d> f2995a = new SparseArray<>();

    /* renamed from: b */
    public static HashMap<EnumC4186d, Integer> f2996b;

    static {
        HashMap<EnumC4186d, Integer> hashMap = new HashMap<>();
        f2996b = hashMap;
        hashMap.put(EnumC4186d.DEFAULT, 0);
        f2996b.put(EnumC4186d.VERY_LOW, 1);
        f2996b.put(EnumC4186d.HIGHEST, 2);
        for (EnumC4186d enumC4186d : f2996b.keySet()) {
            f2995a.append(f2996b.get(enumC4186d).intValue(), enumC4186d);
        }
    }

    /* renamed from: a */
    public static int m7345a(EnumC4186d enumC4186d) {
        Integer num = f2996b.get(enumC4186d);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + enumC4186d);
    }

    /* renamed from: b */
    public static EnumC4186d m7344b(int i) {
        EnumC4186d enumC4186d = f2995a.get(i);
        if (enumC4186d != null) {
            return enumC4186d;
        }
        throw new IllegalArgumentException(C0033h.m8886k("Unknown Priority for value ", i));
    }
}
