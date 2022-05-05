package kotlin.coroutines.jvm.internal;

import com.google.firebase.messaging.Constants;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u001f\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0015\u0010\b\u001a\u0004\u0018\u00010\u0007*\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\t\u001a\u0013\u0010\n\u001a\u00020��*\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000b\u001a\u001b\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f*\u00020\u0006H\u0001¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u0010*\u00020\u0006H\u0001¢\u0006\u0004\b\u0011\u0010\u0012\"\u0016\u0010\u0014\u001a\u00020��8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"", "expected", "actual", "", "checkDebugMetadataVersion", "(II)V", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lkotlin/coroutines/jvm/internal/DebugMetadata;", "getDebugMetadataAnnotation", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Lkotlin/coroutines/jvm/internal/DebugMetadata;", "getLabel", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)I", "", "", "getSpilledVariableFieldMapping", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)[Ljava/lang/String;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/StackTraceElement;", "getStackTraceElementImpl", "COROUTINES_DEBUG_METADATA_VERSION", "I", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/DebugMetadataKt.class */
public final class DebugMetadataKt {
    /* renamed from: a */
    private static final void m1910a(int i, int i2) {
        if (i2 > i) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i + ", got " + i2 + ". Please update the Kotlin standard library.").toString());
        }
    }

    /* renamed from: b */
    private static final DebugMetadata m1909b(BaseContinuationImpl baseContinuationImpl) {
        return (DebugMetadata) baseContinuationImpl.getClass().getAnnotation(DebugMetadata.class);
    }

    /* renamed from: c */
    private static final int m1908c(BaseContinuationImpl baseContinuationImpl) {
        int i;
        try {
            Field field = baseContinuationImpl.getClass().getDeclaredField(Constants.ScionAnalytics.PARAM_LABEL);
            Intrinsics.m1831d(field, "field");
            field.setAccessible(true);
            Object obj = field.get(baseContinuationImpl);
            Object obj2 = obj;
            if (!(obj instanceof Integer)) {
                obj2 = null;
            }
            Integer num = (Integer) obj2;
            i = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception e) {
            i = -1;
        }
        return i;
    }

    @SinceKotlin
    @JvmName
    @Nullable
    /* renamed from: d */
    public static final StackTraceElement m1907d(@NotNull BaseContinuationImpl getStackTraceElementImpl) {
        String str;
        Intrinsics.m1830e(getStackTraceElementImpl, "$this$getStackTraceElementImpl");
        DebugMetadata b = m1909b(getStackTraceElementImpl);
        if (b == null) {
            return null;
        }
        m1910a(1, b.m1911v());
        int c = m1908c(getStackTraceElementImpl);
        int i = c < 0 ? -1 : b.m1913l()[c];
        String b2 = ModuleNameRetriever.f20665c.m1902b(getStackTraceElementImpl);
        if (b2 == null) {
            str = b.m1915c();
        } else {
            str = b2 + '/' + b.m1915c();
        }
        return new StackTraceElement(str, b.m1912m(), b.m1914f(), i);
    }
}
