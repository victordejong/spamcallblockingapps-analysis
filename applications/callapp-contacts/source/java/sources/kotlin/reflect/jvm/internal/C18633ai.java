package kotlin.reflect.jvm.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0018\u0010��\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, m4298d2 = {"signature", "", "Ljava/lang/reflect/Method;", "getSignature", "(Ljava/lang/reflect/Method;)Ljava/lang/String;", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.ai */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ai.class */
public final class C18633ai {

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0002\b\u0003 \u0004*\b\u0012\u0002\b\u0003\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.ai$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ai$a.class */
    public static final class C18634a extends AbstractC18526r implements Function1<Class<?>, CharSequence> {

        /* renamed from: a */
        public static final C18634a f63703a = new C18634a();

        C18634a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(Class<?> cls) {
            Class<?> it2 = cls;
            C18524p.m3843b(it2, "it");
            return C19088b.m2653f(it2);
        }
    }

    /* renamed from: a */
    public static final String m3769a(Method method) {
        StringBuilder sb = new StringBuilder();
        sb.append(method.getName());
        Class<?>[] parameterTypes = method.getParameterTypes();
        C18524p.m3843b(parameterTypes, "parameterTypes");
        sb.append(C18273i.m4202a(parameterTypes, "", "(", ")", 0, (CharSequence) null, C18634a.f63703a, 24));
        Class<?> returnType = method.getReturnType();
        C18524p.m3843b(returnType, "returnType");
        sb.append(C19088b.m2653f(returnType));
        return sb.toString();
    }
}
