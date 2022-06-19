package p193e.p1545k.p1546a.p1556c.p1573m0;

import java.io.Serializable;
import java.lang.reflect.TypeVariable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.m0.n */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/n.class */
public class C23884n implements Serializable {

    /* renamed from: e */
    public static final String[] f66053e;

    /* renamed from: f */
    public static final AbstractC23698i[] f66054f;

    /* renamed from: g */
    public static final C23884n f66055g;

    /* renamed from: a */
    public final String[] f66056a;

    /* renamed from: b */
    public final AbstractC23698i[] f66057b;

    /* renamed from: c */
    public final String[] f66058c;

    /* renamed from: d */
    public final int f66059d;

    /* renamed from: e.k.a.c.m0.n$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/n$a.class */
    public static final class C23885a {

        /* renamed from: a */
        public final Class<?> f66060a;

        /* renamed from: b */
        public final AbstractC23698i[] f66061b;

        /* renamed from: c */
        public final int f66062c;

        public C23885a(Class<?> cls, AbstractC23698i[] abstractC23698iArr, int i) {
            this.f66060a = cls;
            this.f66061b = abstractC23698iArr;
            this.f66062c = i;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != C23885a.class) {
                return false;
            }
            C23885a c23885a = (C23885a) obj;
            if (this.f66062c != c23885a.f66062c || this.f66060a != c23885a.f66060a) {
                return false;
            }
            AbstractC23698i[] abstractC23698iArr = c23885a.f66061b;
            int length = this.f66061b.length;
            if (length != abstractC23698iArr.length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (!this.f66061b[i].equals(abstractC23698iArr[i])) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return this.f66062c;
        }

        public String toString() {
            return C22128a.m8639b2(this.f66060a, new StringBuilder(), "<>");
        }
    }

    /* renamed from: e.k.a.c.m0.n$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/n$b.class */
    public static class C23886b {

        /* renamed from: a */
        public static final TypeVariable<?>[] f66063a = AbstractList.class.getTypeParameters();

        /* renamed from: b */
        public static final TypeVariable<?>[] f66064b = Collection.class.getTypeParameters();

        /* renamed from: c */
        public static final TypeVariable<?>[] f66065c = Iterable.class.getTypeParameters();

        /* renamed from: d */
        public static final TypeVariable<?>[] f66066d = List.class.getTypeParameters();

        /* renamed from: e */
        public static final TypeVariable<?>[] f66067e = ArrayList.class.getTypeParameters();

        /* renamed from: f */
        public static final TypeVariable<?>[] f66068f = Map.class.getTypeParameters();

        /* renamed from: g */
        public static final TypeVariable<?>[] f66069g = HashMap.class.getTypeParameters();

        /* renamed from: h */
        public static final TypeVariable<?>[] f66070h = LinkedHashMap.class.getTypeParameters();
    }

    static {
        String[] strArr = new String[0];
        f66053e = strArr;
        AbstractC23698i[] abstractC23698iArr = new AbstractC23698i[0];
        f66054f = abstractC23698iArr;
        f66055g = new C23884n(strArr, abstractC23698iArr, null);
    }

    public C23884n(String[] strArr, AbstractC23698i[] abstractC23698iArr, String[] strArr2) {
        String[] strArr3 = strArr == null ? f66053e : strArr;
        this.f66056a = strArr3;
        AbstractC23698i[] abstractC23698iArr2 = abstractC23698iArr == null ? f66054f : abstractC23698iArr;
        this.f66057b = abstractC23698iArr2;
        if (strArr3.length != abstractC23698iArr2.length) {
            StringBuilder m8728C = C22128a.m8728C("Mismatching names (");
            m8728C.append(strArr3.length);
            m8728C.append("), types (");
            throw new IllegalArgumentException(C22128a.m8697J2(m8728C, abstractC23698iArr2.length, ")"));
        }
        int length = abstractC23698iArr2.length;
        int i = 1;
        for (int i2 = 0; i2 < length; i2++) {
            i += this.f66057b[i2].f65729b;
        }
        this.f66058c = strArr2;
        this.f66059d = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.reflect.TypeVariable<?>[]] */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.lang.reflect.TypeVariable<?>[]] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.lang.reflect.TypeVariable<?>[]] */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.lang.reflect.TypeVariable<?>[]] */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.lang.reflect.TypeVariable<?>[]] */
    /* renamed from: a */
    public static C23884n m5921a(Class<?> cls, AbstractC23698i abstractC23698i) {
        TypeVariable<?>[] typeVariableArr = C23886b.f66063a;
        TypeVariable<Class<?>>[] typeParameters = cls == Collection.class ? C23886b.f66064b : cls == List.class ? C23886b.f66066d : cls == ArrayList.class ? C23886b.f66067e : cls == AbstractList.class ? C23886b.f66063a : cls == Iterable.class ? C23886b.f66065c : cls.getTypeParameters();
        int length = typeParameters == null ? 0 : typeParameters.length;
        if (length == 1) {
            return new C23884n(new String[]{typeParameters[0].getName()}, new AbstractC23698i[]{abstractC23698i}, null);
        }
        StringBuilder m8728C = C22128a.m8728C("Cannot create TypeBindings for class ");
        m8728C.append(cls.getName());
        m8728C.append(" with 1 type parameter: class expects ");
        m8728C.append(length);
        throw new IllegalArgumentException(m8728C.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.reflect.TypeVariable<?>[]] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.reflect.TypeVariable<?>[]] */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.reflect.TypeVariable<?>[]] */
    /* renamed from: b */
    public static C23884n m5920b(Class<?> cls, AbstractC23698i abstractC23698i, AbstractC23698i abstractC23698i2) {
        TypeVariable<?>[] typeVariableArr = C23886b.f66063a;
        TypeVariable<Class<?>>[] typeParameters = cls == Map.class ? C23886b.f66068f : cls == HashMap.class ? C23886b.f66069g : cls == LinkedHashMap.class ? C23886b.f66070h : cls.getTypeParameters();
        int length = typeParameters == null ? 0 : typeParameters.length;
        if (length == 2) {
            return new C23884n(new String[]{typeParameters[0].getName(), typeParameters[1].getName()}, new AbstractC23698i[]{abstractC23698i, abstractC23698i2}, null);
        }
        StringBuilder m8728C = C22128a.m8728C("Cannot create TypeBindings for class ");
        m8728C.append(cls.getName());
        m8728C.append(" with 2 type parameters: class expects ");
        m8728C.append(length);
        throw new IllegalArgumentException(m8728C.toString());
    }

    /* renamed from: c */
    public static C23884n m5919c(Class<?> cls, AbstractC23698i[] abstractC23698iArr) {
        AbstractC23698i[] abstractC23698iArr2;
        String[] strArr;
        int i = 0;
        if (abstractC23698iArr == null) {
            abstractC23698iArr2 = f66054f;
        } else {
            int length = abstractC23698iArr.length;
            if (length == 1) {
                return m5921a(cls, abstractC23698iArr[0]);
            }
            if (length == 2) {
                return m5920b(cls, abstractC23698iArr[0], abstractC23698iArr[1]);
            }
            abstractC23698iArr2 = abstractC23698iArr;
        }
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters != null && typeParameters.length != 0) {
            int length2 = typeParameters.length;
            String[] strArr2 = new String[length2];
            while (true) {
                strArr = strArr2;
                if (i >= length2) {
                    break;
                }
                strArr2[i] = typeParameters[i].getName();
                i++;
            }
        } else {
            strArr = f66053e;
        }
        if (strArr.length != abstractC23698iArr2.length) {
            StringBuilder m8728C = C22128a.m8728C("Cannot create TypeBindings for class ");
            C22128a.m8545z0(cls, m8728C, " with ");
            m8728C.append(abstractC23698iArr2.length);
            m8728C.append(" type parameter");
            m8728C.append(abstractC23698iArr2.length == 1 ? "" : "s");
            m8728C.append(": class expects ");
            m8728C.append(strArr.length);
            throw new IllegalArgumentException(m8728C.toString());
        }
        return new C23884n(strArr, abstractC23698iArr2, null);
    }

    /* renamed from: d */
    public AbstractC23698i m5918d(int i) {
        if (i >= 0) {
            AbstractC23698i[] abstractC23698iArr = this.f66057b;
            if (i < abstractC23698iArr.length) {
                return abstractC23698iArr[i];
            }
            return null;
        }
        return null;
    }

    /* renamed from: e */
    public List<AbstractC23698i> m5917e() {
        AbstractC23698i[] abstractC23698iArr = this.f66057b;
        return abstractC23698iArr.length == 0 ? Collections.emptyList() : Arrays.asList(abstractC23698iArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!C23914g.m5746u(obj, getClass())) {
            return false;
        }
        int length = this.f66057b.length;
        AbstractC23698i[] abstractC23698iArr = ((C23884n) obj).f66057b;
        if (length != abstractC23698iArr.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (!abstractC23698iArr[i].equals(this.f66057b[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public boolean m5916f() {
        return this.f66057b.length == 0;
    }

    public int hashCode() {
        return this.f66059d;
    }

    public Object readResolve() {
        String[] strArr = this.f66056a;
        return (strArr == null || strArr.length == 0) ? f66055g : this;
    }

    public String toString() {
        if (this.f66057b.length == 0) {
            return "<>";
        }
        StringBuilder m8558w = C22128a.m8558w('<');
        int length = this.f66057b.length;
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                m8558w.append(',');
            }
            AbstractC23698i abstractC23698i = this.f66057b[i];
            StringBuilder sb = new StringBuilder(40);
            abstractC23698i.mo5933m(sb);
            m8558w.append(sb.toString());
        }
        m8558w.append('>');
        return m8558w.toString();
    }
}
