package kotlin.internal;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020��H\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a$\u0010\n\u001a\u00028��\"\n\b��\u0010\b\u0018\u0001*\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0083\b¢\u0006\u0004\b\n\u0010\u000b\u001a\u000f\u0010\f\u001a\u00020��H\u0002¢\u0006\u0004\b\f\u0010\r\"\u0016\u0010\u000f\u001a\u00020\u000e8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"", "major", "minor", "patch", "", "apiVersionIsAtLeast", "(III)Z", "", "T", "instance", "castToBaseType", "(Ljava/lang/Object;)Ljava/lang/Object;", "getJavaVersion", "()I", "Lkotlin/internal/PlatformImplementations;", "IMPLEMENTATIONS", "Lkotlin/internal/PlatformImplementations;", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/internal/PlatformImplementationsKt.class */
public final class PlatformImplementationsKt {
    @JvmField
    @NotNull

    /* renamed from: a */
    public static final PlatformImplementations f20672a;

    /* JADX WARN: Can't wrap try/catch for region: R(10:2|(4:54|4|53|(3:6|47|48)(2:8|9))|24|50|(4:57|26|56|(3:28|47|48)(2:30|31))|45|46|47|48|(1:(0))) */
    static {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementationsKt.m24373clinit():void");
    }

    /* renamed from: a */
    private static final int m1901a() {
        int T;
        int T2;
        String property = System.getProperty("java.specification.version");
        int i = 65542;
        if (property == null) {
            return 65542;
        }
        T = StringsKt__StringsKt.m1454T(property, '.', 0, false, 6, null);
        if (T < 0) {
            try {
                i = Integer.parseInt(property) * 65536;
            } catch (NumberFormatException e) {
            }
            return i;
        }
        int i2 = T + 1;
        T2 = StringsKt__StringsKt.m1454T(property, '.', i2, false, 4, null);
        int i3 = T2;
        if (T2 < 0) {
            i3 = property.length();
        }
        if (property != null) {
            String substring = property.substring(0, T);
            Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            if (property != null) {
                String substring2 = property.substring(i2, i3);
                Intrinsics.m1831d(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                try {
                    int parseInt = Integer.parseInt(substring);
                    i = (parseInt * 65536) + Integer.parseInt(substring2);
                } catch (NumberFormatException e2) {
                }
                return i;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }
}
