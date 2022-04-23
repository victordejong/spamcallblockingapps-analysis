package kotlin.c.b.a;

import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\bH\u0002\u001a\f\u0010\t\u001a\u00020\u0001*\u00020\bH\u0002\u001a\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b*\u00020\bH\u0001¢\u0006\u0002\u0010\r\u001a\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\bH\u0001¢\u0006\u0002\b\u0010\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"COROUTINES_DEBUG_METADATA_VERSION", "", "checkDebugMetadataVersion", "", "expected", "actual", "getDebugMetadataAnnotation", "Lkotlin/coroutines/jvm/internal/DebugMetadata;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "getLabel", "getSpilledVariableFieldMapping", "", "", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)[Ljava/lang/String;", "getStackTraceElementImpl", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "kotlin-stdlib"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/f.class */
public final class f {
    public static final StackTraceElement a(a getStackTraceElementImpl) {
        String str;
        p.d(getStackTraceElementImpl, "$this$getStackTraceElementImpl");
        e b2 = b(getStackTraceElementImpl);
        if (b2 == null) {
            return null;
        }
        a(b2.a());
        int c2 = c(getStackTraceElementImpl);
        int i = c2 < 0 ? -1 : b2.c()[c2];
        g gVar = g.f36633b;
        String a2 = g.a(getStackTraceElementImpl);
        if (a2 == null) {
            str = b2.e();
        } else {
            str = a2 + '/' + b2.e();
        }
        return new StackTraceElement(str, b2.d(), b2.b(), i);
    }

    private static final void a(int i) {
        if (i > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + i + ". Please update the Kotlin standard library.").toString());
        }
    }

    private static final e b(a aVar) {
        return (e) aVar.getClass().getAnnotation(e.class);
    }

    private static final int c(a aVar) {
        int i;
        try {
            Field field = aVar.getClass().getDeclaredField("label");
            p.b(field, "field");
            field.setAccessible(true);
            Object obj = field.get(aVar);
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
}
