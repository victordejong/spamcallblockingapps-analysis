package kotlin.p525d;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0004\u001a \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0001\u001a\"\u0010\b\u001a\u0002H\t\"\n\b��\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0083\b¢\u0006\u0002\u0010\f\u001a\b\u0010\r\u001a\u00020\u0005H\u0002\"\u0010\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"IMPLEMENTATIONS", "Lkotlin/internal/PlatformImplementations;", "apiVersionIsAtLeast", "", "major", "", "minor", "patch", "castToBaseType", "T", "", "instance", "(Ljava/lang/Object;)Ljava/lang/Object;", "getJavaVersion", "kotlin-stdlib"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.d.b */
/* loaded from: classes5-dex2jar.jar:kotlin/d/b.class */
public final class C18346b {

    /* renamed from: a */
    public static final C18343a f63447a;

    static {
        C18343a c18343a;
        Object newInstance;
        Object newInstance2;
        int m4071a = m4071a();
        if (m4071a >= 65544) {
            try {
                newInstance = Class.forName("kotlin.d.b.a").newInstance();
                C18524p.m3843b(newInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                } catch (ClassCastException e) {
                    ClassLoader classLoader = newInstance.getClass().getClassLoader();
                    ClassLoader classLoader2 = C18343a.class.getClassLoader();
                    Throwable initCause = new ClassCastException("Instance classloader: " + classLoader + ", base type classloader: " + classLoader2).initCause(e);
                    C18524p.m3843b(initCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause;
                }
            } catch (ClassNotFoundException e2) {
                try {
                    Object newInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                    C18524p.m3843b(newInstance3, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        if (newInstance3 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                        c18343a = (C18343a) newInstance3;
                    } catch (ClassCastException e3) {
                        ClassLoader classLoader3 = newInstance3.getClass().getClassLoader();
                        ClassLoader classLoader4 = C18343a.class.getClassLoader();
                        Throwable initCause2 = new ClassCastException("Instance classloader: " + classLoader3 + ", base type classloader: " + classLoader4).initCause(e3);
                        C18524p.m3843b(initCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause2;
                    }
                } catch (ClassNotFoundException e4) {
                }
            }
            if (newInstance == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
            }
            c18343a = (C18343a) newInstance;
            f63447a = c18343a;
        }
        if (m4071a >= 65543) {
            try {
                try {
                    newInstance2 = Class.forName("kotlin.d.a.a").newInstance();
                    C18524p.m3843b(newInstance2, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                    } catch (ClassCastException e5) {
                        ClassLoader classLoader5 = newInstance2.getClass().getClassLoader();
                        ClassLoader classLoader6 = C18343a.class.getClassLoader();
                        Throwable initCause3 = new ClassCastException("Instance classloader: " + classLoader5 + ", base type classloader: " + classLoader6).initCause(e5);
                        C18524p.m3843b(initCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause3;
                    }
                } catch (ClassNotFoundException e6) {
                    Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                    C18524p.m3843b(newInstance4, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        if (newInstance4 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                        c18343a = (C18343a) newInstance4;
                    } catch (ClassCastException e7) {
                        ClassLoader classLoader7 = newInstance4.getClass().getClassLoader();
                        ClassLoader classLoader8 = C18343a.class.getClassLoader();
                        Throwable initCause4 = new ClassCastException("Instance classloader: " + classLoader7 + ", base type classloader: " + classLoader8).initCause(e7);
                        C18524p.m3843b(initCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause4;
                    }
                }
            } catch (ClassNotFoundException e8) {
            }
            if (newInstance2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
            }
            c18343a = (C18343a) newInstance2;
            f63447a = c18343a;
        }
        c18343a = new C18343a();
        f63447a = c18343a;
    }

    /* renamed from: a */
    private static final int m4071a() {
        String property = System.getProperty("java.specification.version");
        int i = 65542;
        if (property == null) {
            return 65542;
        }
        String str = property;
        int a = C18425p.m3949a((CharSequence) str, '.', 0, false, 6);
        if (a < 0) {
            try {
                i = Integer.parseInt(property) * 65536;
            } catch (NumberFormatException e) {
            }
            return i;
        }
        int i2 = a + 1;
        int a2 = C18425p.m3949a((CharSequence) str, '.', i2, false, 4);
        int i3 = a2;
        if (a2 < 0) {
            i3 = property.length();
        }
        Objects.requireNonNull(property, "null cannot be cast to non-null type java.lang.String");
        String substring = property.substring(0, a);
        C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        Objects.requireNonNull(property, "null cannot be cast to non-null type java.lang.String");
        String substring2 = property.substring(i2, i3);
        C18524p.m3843b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        try {
            i = (Integer.parseInt(substring) * 65536) + Integer.parseInt(substring2);
        } catch (NumberFormatException e2) {
        }
        return i;
    }
}
