package kotlin.reflect;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18522n;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import org.apache.commons.lang3.C20753d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0003\u0018��2\u00020\u00012\u00020\u0002B)\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b¢\u0006\u0002\u0010\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\nH\u0016¢\u0006\u0002\u0010\u0011J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0015H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u0019"}, m4298d2 = {"Lkotlin/reflect/ParameterizedTypeImpl;", "Ljava/lang/reflect/ParameterizedType;", "Lkotlin/reflect/TypeImpl;", "rawType", "Ljava/lang/Class;", "ownerType", "Ljava/lang/reflect/Type;", "typeArguments", "", "(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V", "", "[Ljava/lang/reflect/Type;", "equals", "", "other", "", "getActualTypeArguments", "()[Ljava/lang/reflect/Type;", "getOwnerType", "getRawType", "getTypeName", "", "hashCode", "", "toString", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.t */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/t.class */
public final class C20116t implements ParameterizedType, AbstractC20118u {

    /* renamed from: a */
    private final Type[] f66513a;

    /* renamed from: b */
    private final Class<?> f66514b;

    /* renamed from: c */
    private final Type f66515c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "p1", "Ljava/lang/reflect/Type;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.t$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/t$a.class */
    public static final /* synthetic */ class C20117a extends C18522n implements Function1<Type, String> {

        /* renamed from: a */
        public static final C20117a f66516a = new C20117a();

        C20117a() {
            super(1, C20120w.class, "typeToString", "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;", 1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(Type type) {
            Type p1 = type;
            C18524p.m3840d(p1, "p1");
            return C20120w.m1109a(p1);
        }
    }

    public C20116t(Class<?> rawType, Type type, List<? extends Type> typeArguments) {
        C18524p.m3840d(rawType, "rawType");
        C18524p.m3840d(typeArguments, "typeArguments");
        this.f66514b = rawType;
        this.f66515c = type;
        Object[] array = typeArguments.toArray(new Type[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.f66513a = (Type[]) array;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            return C18524p.m3850a(this.f66514b, parameterizedType.getRawType()) && C18524p.m3850a(this.f66515c, parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
        }
        return false;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return this.f66513a;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f66515c;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f66514b;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        StringBuilder sb = new StringBuilder();
        Type type = this.f66515c;
        if (type != null) {
            sb.append(C20120w.m1109a(type));
            sb.append(C20753d.f67243b);
            sb.append(this.f66514b.getSimpleName());
        } else {
            sb.append(C20120w.m1109a(this.f66514b));
        }
        Type[] typeArr = this.f66513a;
        if (!(typeArr.length == 0)) {
            C18273i.m4205a(typeArr, sb, ", ", "<", ">", -1, "...", C20117a.f66516a);
        }
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public final int hashCode() {
        int hashCode = this.f66514b.hashCode();
        Type type = this.f66515c;
        return (hashCode ^ (type != null ? type.hashCode() : 0)) ^ Arrays.hashCode(getActualTypeArguments());
    }

    public final String toString() {
        return getTypeName();
    }
}
