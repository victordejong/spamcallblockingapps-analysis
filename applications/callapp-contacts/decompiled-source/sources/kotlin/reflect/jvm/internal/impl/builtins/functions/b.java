package kotlin.reflect.jvm.internal.impl.builtins.functions;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/b.class */
public enum b {
    Function(j.m, "Function"),
    SuspendFunction(j.f37319d, "SuspendFunction"),
    KFunction(j.j, "KFunction"),
    KSuspendFunction(j.j, "KSuspendFunction");
    
    public static final a Companion = new a(null);
    private final String classNamePrefix;
    private final kotlin.reflect.jvm.internal.impl.c.b packageFqName;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/b$a.class */
    public static final class a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/b$a$a.class */
        public static final class C0667a {

            /* renamed from: a  reason: collision with root package name */
            final b f37292a;

            /* renamed from: b  reason: collision with root package name */
            final int f37293b;

            public C0667a(b kind, int i) {
                p.d(kind, "kind");
                this.f37292a = kind;
                this.f37293b = i;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0667a)) {
                    return false;
                }
                C0667a aVar = (C0667a) obj;
                return this.f37292a == aVar.f37292a && this.f37293b == aVar.f37293b;
            }

            public final int hashCode() {
                return (this.f37292a.hashCode() * 31) + this.f37293b;
            }

            public final String toString() {
                return "KindWithArity(kind=" + this.f37292a + ", arity=" + this.f37293b + ')';
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static Integer a(String str) {
            if (str.length() == 0) {
                return null;
            }
            int length = str.length();
            int i = 0;
            int i2 = 0;
            while (i < length) {
                char charAt = str.charAt(i);
                i++;
                int i3 = charAt - '0';
                if (!(i3 >= 0 && i3 <= 9)) {
                    return null;
                }
                i2 = (i2 * 10) + i3;
            }
            return Integer.valueOf(i2);
        }

        public static C0667a a(String className, kotlin.reflect.jvm.internal.impl.c.b packageFqName) {
            p.d(className, "className");
            p.d(packageFqName, "packageFqName");
            b a2 = a(packageFqName, className);
            if (a2 == null) {
                return null;
            }
            String substring = className.substring(a2.getClassNamePrefix().length());
            p.b(substring, "(this as java.lang.String).substring(startIndex)");
            Integer a3 = a(substring);
            if (a3 == null) {
                return null;
            }
            return new C0667a(a2, a3.intValue());
        }

        private static b a(kotlin.reflect.jvm.internal.impl.c.b packageFqName, String className) {
            b[] values;
            p.d(packageFqName, "packageFqName");
            p.d(className, "className");
            for (b bVar : b.values()) {
                if (p.a(bVar.getPackageFqName(), packageFqName) && kotlin.h.p.a(className, bVar.getClassNamePrefix(), false)) {
                    return bVar;
                }
            }
            return null;
        }

        public final b b(String className, kotlin.reflect.jvm.internal.impl.c.b packageFqName) {
            p.d(className, "className");
            p.d(packageFqName, "packageFqName");
            C0667a a2 = a(className, packageFqName);
            if (a2 == null) {
                return null;
            }
            return a2.f37292a;
        }
    }

    b(kotlin.reflect.jvm.internal.impl.c.b bVar, String str) {
        this.packageFqName = bVar;
        this.classNamePrefix = str;
    }

    public final String getClassNamePrefix() {
        return this.classNamePrefix;
    }

    public final kotlin.reflect.jvm.internal.impl.c.b getPackageFqName() {
        return this.packageFqName;
    }

    public final e numberedClassName(int i) {
        e a2 = e.a(p.a(this.classNamePrefix, (Object) Integer.valueOf(i)));
        p.b(a2, "identifier(\"$classNamePrefix$arity\")");
        return a2;
    }
}
