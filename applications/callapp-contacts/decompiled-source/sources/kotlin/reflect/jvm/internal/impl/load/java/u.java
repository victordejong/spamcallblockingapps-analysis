package kotlin.reflect.jvm.internal.impl.load.java;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.resolve.c.c;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public static final b f38001a = new b("kotlin.Metadata");

    /* renamed from: b  reason: collision with root package name */
    public static final String f38002b;

    /* renamed from: c  reason: collision with root package name */
    public static final e f38003c = e.a("value");

    /* renamed from: d  reason: collision with root package name */
    public static final b f38004d = new b(Target.class.getCanonicalName());
    public static final b e = new b(Retention.class.getCanonicalName());
    public static final b f = new b(Deprecated.class.getCanonicalName());
    public static final b g = new b(Documented.class.getCanonicalName());
    public static final b h = new b("java.lang.annotation.Repeatable");
    public static final b i = new b("org.jetbrains.annotations.NotNull");
    public static final b j = new b("org.jetbrains.annotations.Nullable");
    public static final b k = new b("org.jetbrains.annotations.Mutable");
    public static final b l = new b("org.jetbrains.annotations.ReadOnly");
    public static final b m = new b("kotlin.annotations.jvm.ReadOnly");
    public static final b n = new b("kotlin.annotations.jvm.Mutable");
    public static final b o = new b("kotlin.jvm.PurelyImplements");
    public static final b p = new b("kotlin.jvm.internal");
    public static final b q = new b("kotlin.jvm.internal.EnhancedNullability");
    public static final b r = new b("kotlin.jvm.internal.EnhancedMutability");
    public static final b s = new b("kotlin.annotations.jvm.internal.ParameterName");
    public static final b t = new b("kotlin.annotations.jvm.internal.DefaultValue");
    public static final b u = new b("kotlin.annotations.jvm.internal.DefaultNull");

    static {
        b bVar;
        f38002b = "L" + c.a(bVar).c() + ";";
    }
}
