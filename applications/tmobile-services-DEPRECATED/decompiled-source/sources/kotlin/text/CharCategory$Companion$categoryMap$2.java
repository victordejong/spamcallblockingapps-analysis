package kotlin.text;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "", "Lkotlin/text/CharCategory;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/CharCategory$Companion$categoryMap$2.class */
final class CharCategory$Companion$categoryMap$2 extends Lambda implements Function0<Map<Integer, ? extends CharCategory>> {

    /* renamed from: f */
    public static final CharCategory$Companion$categoryMap$2 f21016f = new CharCategory$Companion$categoryMap$2();

    CharCategory$Companion$categoryMap$2() {
        super(0);
    }

    @NotNull
    /* renamed from: b */
    public final Map<Integer, CharCategory> invoke() {
        int c;
        int b;
        CharCategory[] values = CharCategory.values();
        c = MapsKt__MapsJVMKt.m2088c(values.length);
        b = RangesKt___RangesKt.m1713b(c, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b);
        for (CharCategory charCategory : values) {
            linkedHashMap.put(Integer.valueOf(charCategory.getValue()), charCategory);
        }
        return linkedHashMap;
    }
}
