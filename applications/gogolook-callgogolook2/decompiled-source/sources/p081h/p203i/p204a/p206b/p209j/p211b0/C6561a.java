package p081h.p203i.p204a.p206b.p209j.p211b0;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import java.util.EnumMap;
import p081h.p203i.p204a.p206b.EnumC6495d;
/* renamed from: h.i.a.b.j.b0.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/b0/a.class */
public final class C6561a {

    /* renamed from: a */
    public static SparseArray<EnumC6495d> f16351a = new SparseArray<>();

    /* renamed from: b */
    public static EnumMap<EnumC6495d, Integer> f16352b = new EnumMap<>(EnumC6495d.class);

    static {
        f16352b.put((EnumMap<EnumC6495d, Integer>) EnumC6495d.DEFAULT, (EnumC6495d) 0);
        f16352b.put((EnumMap<EnumC6495d, Integer>) EnumC6495d.VERY_LOW, (EnumC6495d) 1);
        f16352b.put((EnumMap<EnumC6495d, Integer>) EnumC6495d.HIGHEST, (EnumC6495d) 2);
        for (EnumC6495d dVar : f16352b.keySet()) {
            f16351a.append(f16352b.get(dVar).intValue(), dVar);
        }
    }

    /* renamed from: a */
    public static int m22342a(@NonNull EnumC6495d dVar) {
        Integer num = f16352b.get(dVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + dVar);
    }

    @NonNull
    /* renamed from: a */
    public static EnumC6495d m22343a(int i) {
        EnumC6495d dVar = f16351a.get(i);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i);
    }
}
