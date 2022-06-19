package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/h.class */
public final class C19782h {

    /* renamed from: a */
    public static final C19782h f65967a = new C19782h();

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/h$a.class */
    public static final class C19783a extends AbstractC18526r implements Function1<AbstractC18999ab, KotlinType> {

        /* renamed from: a */
        final /* synthetic */ KotlinType f65968a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19783a(KotlinType kotlinType) {
            super(1);
            this.f65968a = kotlinType;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(AbstractC18999ab abstractC18999ab) {
            AbstractC18999ab it2 = abstractC18999ab;
            C18524p.m3840d(it2, "it");
            return this.f65968a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/h$b.class */
    public static final class C19784b extends AbstractC18526r implements Function1<AbstractC18999ab, KotlinType> {

        /* renamed from: a */
        final /* synthetic */ EnumC18946h f65969a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19784b(EnumC18946h enumC18946h) {
            super(1);
            this.f65969a = enumC18946h;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(AbstractC18999ab abstractC18999ab) {
            AbstractC18999ab module = abstractC18999ab;
            C18524p.m3840d(module, "module");
            SimpleType m2818b = module.getBuiltIns().m2818b(this.f65969a);
            C18524p.m3843b(m2818b, "module.builtIns.getPrimitiveArrayKotlinType(componentType)");
            return m2818b;
        }
    }

    private C19782h() {
    }

    /* renamed from: a */
    private final C19776b m1491a(List<?> list, EnumC18946h enumC18946h) {
        List<Object> h = C18282n.m4118h((Iterable) list);
        ArrayList arrayList = new ArrayList();
        for (Object obj : h) {
            AbstractC19781g<?> m1492a = m1492a(obj);
            if (m1492a != null) {
                arrayList.add(m1492a);
            }
        }
        return new C19776b(arrayList, new C19784b(enumC18946h));
    }

    /* renamed from: a */
    public static C19776b m1490a(List<? extends AbstractC19781g<?>> value, KotlinType type) {
        C18524p.m3840d(value, "value");
        C18524p.m3840d(type, "type");
        return new C19776b(value, new C19783a(type));
    }

    /* renamed from: a */
    public final AbstractC19781g<?> m1492a(Object obj) {
        if (obj instanceof Byte) {
            return new C19778d(((Number) obj).byteValue());
        }
        if (obj instanceof Short) {
            return new C19800r(((Number) obj).shortValue());
        }
        if (obj instanceof Integer) {
            return new C19791m(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new C19798p(((Number) obj).longValue());
        }
        if (obj instanceof Character) {
            return new C19779e(((Character) obj).charValue());
        }
        if (obj instanceof Float) {
            return new C19790l(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new C19785i(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return new C19777c(((Boolean) obj).booleanValue());
        }
        if (obj instanceof String) {
            return new C19801s((String) obj);
        }
        if (obj instanceof byte[]) {
            return m1491a(C18273i.m4215a((byte[]) obj), EnumC18946h.BYTE);
        }
        if (obj instanceof short[]) {
            return m1491a(C18273i.m4197a((short[]) obj), EnumC18946h.SHORT);
        }
        if (obj instanceof int[]) {
            return m1491a(C18273i.m4208a((int[]) obj), EnumC18946h.INT);
        }
        if (obj instanceof long[]) {
            return m1491a(C18273i.m4206a((long[]) obj), EnumC18946h.LONG);
        }
        if (obj instanceof char[]) {
            return m1491a(C18273i.m4195b((char[]) obj), EnumC18946h.CHAR);
        }
        if (obj instanceof float[]) {
            return m1491a(C18273i.m4209a((float[]) obj), EnumC18946h.FLOAT);
        }
        if (obj instanceof double[]) {
            return m1491a(C18273i.m4210a((double[]) obj), EnumC18946h.DOUBLE);
        }
        if (obj instanceof boolean[]) {
            return m1491a(C18273i.m4196a((boolean[]) obj), EnumC18946h.BOOLEAN);
        }
        if (obj != null) {
            return null;
        }
        return new C19799q();
    }
}
