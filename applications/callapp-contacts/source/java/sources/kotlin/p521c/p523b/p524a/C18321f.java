package kotlin.p521c.p523b.p524a;

import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\bH\u0002\u001a\f\u0010\t\u001a\u00020\u0001*\u00020\bH\u0002\u001a\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b*\u00020\bH\u0001¢\u0006\u0002\u0010\r\u001a\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\bH\u0001¢\u0006\u0002\b\u0010\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"COROUTINES_DEBUG_METADATA_VERSION", "", "checkDebugMetadataVersion", "", "expected", "actual", "getDebugMetadataAnnotation", "Lkotlin/coroutines/jvm/internal/DebugMetadata;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "getLabel", "getSpilledVariableFieldMapping", "", "", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)[Ljava/lang/String;", "getStackTraceElementImpl", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "kotlin-stdlib"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.b.a.f */
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/f.class */
public final class C18321f {
    /* renamed from: a */
    public static final StackTraceElement m4084a(AbstractC18316a getStackTraceElementImpl) {
        String str;
        C18524p.m3840d(getStackTraceElementImpl, "$this$getStackTraceElementImpl");
        AbstractC18320e m4083b = m4083b(getStackTraceElementImpl);
        if (m4083b == null) {
            return null;
        }
        m4085a(m4083b.m4090a());
        int m4082c = m4082c(getStackTraceElementImpl);
        int i = m4082c < 0 ? -1 : m4083b.m4088c()[m4082c];
        C18322g c18322g = C18322g.f63426b;
        String m4081a = C18322g.m4081a(getStackTraceElementImpl);
        if (m4081a == null) {
            str = m4083b.m4086e();
        } else {
            str = m4081a + '/' + m4083b.m4086e();
        }
        return new StackTraceElement(str, m4083b.m4087d(), m4083b.m4089b(), i);
    }

    /* renamed from: a */
    private static final void m4085a(int i) {
        if (i <= 1) {
            return;
        }
        throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + i + ". Please update the Kotlin standard library.").toString());
    }

    /* renamed from: b */
    private static final AbstractC18320e m4083b(AbstractC18316a abstractC18316a) {
        return (AbstractC18320e) abstractC18316a.getClass().getAnnotation(AbstractC18320e.class);
    }

    /* renamed from: c */
    private static final int m4082c(AbstractC18316a abstractC18316a) {
        int i;
        try {
            Field field = abstractC18316a.getClass().getDeclaredField("label");
            C18524p.m3843b(field, "field");
            field.setAccessible(true);
            Object obj = field.get(abstractC18316a);
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
