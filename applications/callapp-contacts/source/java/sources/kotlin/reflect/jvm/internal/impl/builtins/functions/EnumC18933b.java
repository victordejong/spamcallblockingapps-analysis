package kotlin.reflect.jvm.internal.impl.builtins.functions;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/b.class */
public enum EnumC18933b {
    Function(C18954j.f64583m, "Function"),
    SuspendFunction(C18954j.f64574d, "SuspendFunction"),
    KFunction(C18954j.f64580j, "KFunction"),
    KSuspendFunction(C18954j.f64580j, "KSuspendFunction");
    
    public static final C18934a Companion = new C18934a(null);
    private final String classNamePrefix;
    private final C18961b packageFqName;

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/b$a.class */
    public static final class C18934a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.b$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/b$a$a.class */
        public static final class C18935a {

            /* renamed from: a */
            final EnumC18933b f64536a;

            /* renamed from: b */
            final int f64537b;

            public C18935a(EnumC18933b kind, int i) {
                C18524p.m3840d(kind, "kind");
                this.f64536a = kind;
                this.f64537b = i;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C18935a)) {
                    return false;
                }
                C18935a c18935a = (C18935a) obj;
                return this.f64536a == c18935a.f64536a && this.f64537b == c18935a.f64537b;
            }

            public final int hashCode() {
                return (this.f64536a.hashCode() * 31) + this.f64537b;
            }

            public final String toString() {
                return "KindWithArity(kind=" + this.f64536a + ", arity=" + this.f64537b + ')';
            }
        }

        private C18934a() {
        }

        public /* synthetic */ C18934a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private static Integer m2843a(String str) {
            if (str.length() == 0) {
                return null;
            }
            int length = str.length();
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int i3 = i + 1;
                int charAt = str.charAt(i) - '0';
                if (!(charAt >= 0 && charAt <= 9)) {
                    return null;
                }
                i2 = (i2 * 10) + charAt;
                i = i3;
            }
            return Integer.valueOf(i2);
        }

        /* renamed from: a */
        public static C18935a m2842a(String className, C18961b packageFqName) {
            C18524p.m3840d(className, "className");
            C18524p.m3840d(packageFqName, "packageFqName");
            EnumC18933b m2841a = m2841a(packageFqName, className);
            if (m2841a == null) {
                return null;
            }
            String substring = className.substring(m2841a.getClassNamePrefix().length());
            C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
            Integer m2843a = m2843a(substring);
            if (m2843a != null) {
                return new C18935a(m2841a, m2843a.intValue());
            }
            return null;
        }

        /* renamed from: a */
        private static EnumC18933b m2841a(C18961b packageFqName, String className) {
            EnumC18933b[] values;
            C18524p.m3840d(packageFqName, "packageFqName");
            C18524p.m3840d(className, "className");
            for (EnumC18933b enumC18933b : EnumC18933b.values()) {
                if (C18524p.m3850a(enumC18933b.getPackageFqName(), packageFqName) && C18425p.m3957a(className, enumC18933b.getClassNamePrefix(), false)) {
                    return enumC18933b;
                }
            }
            return null;
        }

        /* renamed from: b */
        public final EnumC18933b m2840b(String className, C18961b packageFqName) {
            C18524p.m3840d(className, "className");
            C18524p.m3840d(packageFqName, "packageFqName");
            C18935a m2842a = m2842a(className, packageFqName);
            if (m2842a == null) {
                return null;
            }
            return m2842a.f64536a;
        }
    }

    EnumC18933b(C18961b c18961b, String str) {
        this.packageFqName = c18961b;
        this.classNamePrefix = str;
    }

    public final String getClassNamePrefix() {
        return this.classNamePrefix;
    }

    public final C18961b getPackageFqName() {
        return this.packageFqName;
    }

    public final C18966e numberedClassName(int i) {
        C18966e m2719a = C18966e.m2719a(C18524p.m3847a(this.classNamePrefix, (Object) Integer.valueOf(i)));
        C18524p.m3843b(m2719a, "identifier(\"$classNamePrefix$arity\")");
        return m2719a;
    }
}
