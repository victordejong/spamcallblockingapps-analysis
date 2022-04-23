package p131c.p161d.p266c.p274h;

import com.google.common.collect.Sets;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Set;
/* renamed from: c.d.c.h.g */
/* loaded from: classes2-dex2jar.jar:c/d/c/h/g.class */
public abstract class AbstractC5085g {

    /* renamed from: a */
    public final Set<Type> f17679a = Sets.m8064a();

    /* renamed from: a */
    public void mo7729a(Class<?> cls) {
    }

    /* renamed from: a */
    public void mo7728a(GenericArrayType genericArrayType) {
    }

    /* renamed from: a */
    public void mo7767a(ParameterizedType parameterizedType) {
    }

    /* renamed from: a */
    public abstract void mo7727a(TypeVariable<?> typeVariable);

    /* renamed from: a */
    public abstract void mo7726a(WildcardType wildcardType);

    /* renamed from: a */
    public final void m24527a(Type... typeArr) {
        for (Type type : typeArr) {
            if (type != null && this.f17679a.add(type)) {
                try {
                    if (type instanceof TypeVariable) {
                        mo7727a((TypeVariable) type);
                    } else if (type instanceof WildcardType) {
                        mo7726a((WildcardType) type);
                    } else if (type instanceof ParameterizedType) {
                        mo7767a((ParameterizedType) type);
                    } else if (type instanceof Class) {
                        mo7729a((Class) type);
                    } else if (type instanceof GenericArrayType) {
                        mo7728a((GenericArrayType) type);
                    } else {
                        throw new AssertionError("Unknown type: " + type);
                    }
                } catch (Throwable th) {
                    this.f17679a.remove(type);
                    throw th;
                }
            }
        }
    }
}
