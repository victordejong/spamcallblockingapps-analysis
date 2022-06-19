package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.c.g0.y */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/y.class */
public final class C23691y {

    /* renamed from: c */
    public static final Class<?>[] f65680c = new Class[0];

    /* renamed from: a */
    public final String f65681a;

    /* renamed from: b */
    public final Class<?>[] f65682b;

    public C23691y(String str, Class<?>[] clsArr) {
        this.f65681a = str;
        this.f65682b = clsArr == null ? f65680c : clsArr;
    }

    public C23691y(Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        this.f65681a = "";
        this.f65682b = parameterTypes == null ? f65680c : parameterTypes;
    }

    public C23691y(Method method) {
        this(method.getName(), method.getParameterTypes());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != C23691y.class) {
            return false;
        }
        C23691y c23691y = (C23691y) obj;
        if (!this.f65681a.equals(c23691y.f65681a)) {
            return false;
        }
        Class<?>[] clsArr = c23691y.f65682b;
        int length = this.f65682b.length;
        if (clsArr.length != length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (clsArr[i] != this.f65682b[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this.f65681a.hashCode() + this.f65682b.length;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f65681a);
        sb.append("(");
        return C22128a.m8697J2(sb, this.f65682b.length, "-args)");
    }
}
