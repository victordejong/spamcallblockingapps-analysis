package kotlinx.coroutines.internal;

import com.google.android.gms.common.api.Api;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u001f\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0002H��¢\u0006\u0004\b\u0004\u0010\u0005\u001a3\u0010\u0004\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006H��¢\u0006\u0004\b\u0004\u0010\t\u001a3\u0010\u0004\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\n2\b\b\u0002\u0010\b\u001a\u00020\nH��¢\u0006\u0004\b\u0004\u0010\u000b¨\u0006\f"}, d2 = {"", "propertyName", "", "defaultValue", "systemProp", "(Ljava/lang/String;Z)Z", "", "minValue", "maxValue", "(Ljava/lang/String;III)I", "", "(Ljava/lang/String;JJJ)J", "kotlinx-coroutines-core"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlinx/coroutines/internal/SystemPropsKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/SystemPropsKt__SystemProps_commonKt.class */
public final /* synthetic */ class SystemPropsKt__SystemProps_commonKt {
    /* renamed from: a */
    public static final int m434a(@NotNull String str, int i, int i2, int i3) {
        return (int) SystemPropsKt.m441c(str, i, i2, i3);
    }

    /* renamed from: b */
    public static final long m433b(@NotNull String str, long j, long j2, long j3) {
        Long k;
        String d = SystemPropsKt.m440d(str);
        if (d == null) {
            return j;
        }
        k = StringsKt__StringNumberConversionsKt.m1495k(d);
        if (k != null) {
            long longValue = k.longValue();
            if (j2 <= longValue && j3 >= longValue) {
                return longValue;
            }
            throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + longValue + '\'').toString());
        }
        throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + d + '\'').toString());
    }

    /* renamed from: c */
    public static final boolean m432c(@NotNull String str, boolean z) {
        String d = SystemPropsKt.m440d(str);
        if (d != null) {
            z = Boolean.parseBoolean(d);
        }
        return z;
    }

    /* renamed from: d */
    public static /* synthetic */ int m431d(String str, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = 1;
        }
        if ((i4 & 8) != 0) {
            i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        return SystemPropsKt.m442b(str, i, i2, i3);
    }

    /* renamed from: e */
    public static /* synthetic */ long m430e(String str, long j, long j2, long j3, int i, Object obj) {
        if ((i & 4) != 0) {
            j2 = 1;
        }
        if ((i & 8) != 0) {
            j3 = Long.MAX_VALUE;
        }
        return SystemPropsKt.m441c(str, j, j2, j3);
    }
}
