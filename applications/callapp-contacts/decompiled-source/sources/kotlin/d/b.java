package kotlin.d;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0004\u001a \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0001\u001a\"\u0010\b\u001a\u0002H\t\"\n\b��\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0083\b¢\u0006\u0002\u0010\f\u001a\b\u0010\r\u001a\u00020\u0005H\u0002\"\u0010\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"IMPLEMENTATIONS", "Lkotlin/internal/PlatformImplementations;", "apiVersionIsAtLeast", "", "major", "", "minor", "patch", "castToBaseType", "T", "", "instance", "(Ljava/lang/Object;)Ljava/lang/Object;", "getJavaVersion", "kotlin-stdlib"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/d/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36654a;

    static {
        a aVar;
        Object newInstance;
        Object newInstance2;
        int a2 = a();
        if (a2 >= 65544) {
            try {
                newInstance = Class.forName("kotlin.d.b.a").newInstance();
                p.b(newInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                } catch (ClassCastException e) {
                    ClassLoader classLoader = newInstance.getClass().getClassLoader();
                    ClassLoader classLoader2 = a.class.getClassLoader();
                    Throwable initCause = new ClassCastException("Instance classloader: " + classLoader + ", base type classloader: " + classLoader2).initCause(e);
                    p.b(initCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw initCause;
                }
            } catch (ClassNotFoundException e2) {
                try {
                    Object newInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                    p.b(newInstance3, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        if (newInstance3 != null) {
                            aVar = (a) newInstance3;
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                    } catch (ClassCastException e3) {
                        ClassLoader classLoader3 = newInstance3.getClass().getClassLoader();
                        ClassLoader classLoader4 = a.class.getClassLoader();
                        Throwable initCause2 = new ClassCastException("Instance classloader: " + classLoader3 + ", base type classloader: " + classLoader4).initCause(e3);
                        p.b(initCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause2;
                    }
                } catch (ClassNotFoundException e4) {
                }
            }
            if (newInstance != null) {
                aVar = (a) newInstance;
                f36654a = aVar;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
        }
        if (a2 >= 65543) {
            try {
                try {
                    newInstance2 = Class.forName("kotlin.d.a.a").newInstance();
                    p.b(newInstance2, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                    } catch (ClassCastException e5) {
                        ClassLoader classLoader5 = newInstance2.getClass().getClassLoader();
                        ClassLoader classLoader6 = a.class.getClassLoader();
                        Throwable initCause3 = new ClassCastException("Instance classloader: " + classLoader5 + ", base type classloader: " + classLoader6).initCause(e5);
                        p.b(initCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause3;
                    }
                } catch (ClassNotFoundException e6) {
                    Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                    p.b(newInstance4, "Class.forName(\"kotlin.in…entations\").newInstance()");
                    try {
                        if (newInstance4 != null) {
                            aVar = (a) newInstance4;
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                    } catch (ClassCastException e7) {
                        ClassLoader classLoader7 = newInstance4.getClass().getClassLoader();
                        ClassLoader classLoader8 = a.class.getClassLoader();
                        Throwable initCause4 = new ClassCastException("Instance classloader: " + classLoader7 + ", base type classloader: " + classLoader8).initCause(e7);
                        p.b(initCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw initCause4;
                    }
                }
            } catch (ClassNotFoundException e8) {
            }
            if (newInstance2 != null) {
                aVar = (a) newInstance2;
                f36654a = aVar;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
        }
        aVar = new a();
        f36654a = aVar;
    }

    private static final int a() {
        String property = System.getProperty("java.specification.version");
        int i = 65542;
        if (property == null) {
            return 65542;
        }
        String str = property;
        int a2 = kotlin.h.p.a((CharSequence) str, '.', 0, false, 6);
        if (a2 < 0) {
            try {
                i = Integer.parseInt(property) * 65536;
            } catch (NumberFormatException e) {
            }
            return i;
        }
        int i2 = a2 + 1;
        int a3 = kotlin.h.p.a((CharSequence) str, '.', i2, false, 4);
        int i3 = a3;
        if (a3 < 0) {
            i3 = property.length();
        }
        Objects.requireNonNull(property, "null cannot be cast to non-null type java.lang.String");
        String substring = property.substring(0, a2);
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        Objects.requireNonNull(property, "null cannot be cast to non-null type java.lang.String");
        String substring2 = property.substring(i2, i3);
        p.b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        try {
            int parseInt = Integer.parseInt(substring);
            i = (parseInt * 65536) + Integer.parseInt(substring2);
        } catch (NumberFormatException e2) {
        }
        return i;
    }
}
