package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f38252a = new h();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/h$a.class */
    public static final class a extends r implements Function1<ab, KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ KotlinType f38253a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(KotlinType kotlinType) {
            super(1);
            this.f38253a = kotlinType;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(ab abVar) {
            ab it2 = abVar;
            p.d(it2, "it");
            return this.f38253a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/h$b.class */
    public static final class b extends r implements Function1<ab, KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.builtins.h f38254a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlin.reflect.jvm.internal.impl.builtins.h hVar) {
            super(1);
            this.f38254a = hVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(ab abVar) {
            ab module = abVar;
            p.d(module, "module");
            SimpleType b2 = module.getBuiltIns().b(this.f38254a);
            p.b(b2, "module.builtIns.getPrimitiveArrayKotlinType(componentType)");
            return b2;
        }
    }

    private h() {
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.b a(List<?> list, kotlin.reflect.jvm.internal.impl.builtins.h hVar) {
        List<Object> h = n.h((Iterable) list);
        ArrayList arrayList = new ArrayList();
        for (Object obj : h) {
            g<?> a2 = a(obj);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.b(arrayList, new b(hVar));
    }

    public static kotlin.reflect.jvm.internal.impl.resolve.constants.b a(List<? extends g<?>> value, KotlinType type) {
        p.d(value, "value");
        p.d(type, "type");
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.b(value, new a(type));
    }

    public final g<?> a(Object obj) {
        if (obj instanceof Byte) {
            return new d(((Number) obj).byteValue());
        }
        if (obj instanceof Short) {
            return new r(((Number) obj).shortValue());
        }
        if (obj instanceof Integer) {
            return new m(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new p(((Number) obj).longValue());
        }
        if (obj instanceof Character) {
            return new e(((Character) obj).charValue());
        }
        if (obj instanceof Float) {
            return new l(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new i(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return new c(((Boolean) obj).booleanValue());
        }
        if (obj instanceof String) {
            return new s((String) obj);
        }
        if (obj instanceof byte[]) {
            return a(i.a((byte[]) obj), kotlin.reflect.jvm.internal.impl.builtins.h.BYTE);
        }
        if (obj instanceof short[]) {
            return a(i.a((short[]) obj), kotlin.reflect.jvm.internal.impl.builtins.h.SHORT);
        }
        if (obj instanceof int[]) {
            return a(i.a((int[]) obj), kotlin.reflect.jvm.internal.impl.builtins.h.INT);
        }
        if (obj instanceof long[]) {
            return a(i.a((long[]) obj), kotlin.reflect.jvm.internal.impl.builtins.h.LONG);
        }
        if (obj instanceof char[]) {
            return a(i.b((char[]) obj), kotlin.reflect.jvm.internal.impl.builtins.h.CHAR);
        }
        if (obj instanceof float[]) {
            return a(i.a((float[]) obj), kotlin.reflect.jvm.internal.impl.builtins.h.FLOAT);
        }
        if (obj instanceof double[]) {
            return a(i.a((double[]) obj), kotlin.reflect.jvm.internal.impl.builtins.h.DOUBLE);
        }
        if (obj instanceof boolean[]) {
            return a(i.a((boolean[]) obj), kotlin.reflect.jvm.internal.impl.builtins.h.BOOLEAN);
        }
        if (obj == null) {
            return new q();
        }
        return null;
    }
}
