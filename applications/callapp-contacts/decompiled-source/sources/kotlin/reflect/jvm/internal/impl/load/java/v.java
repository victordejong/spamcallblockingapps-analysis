package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private static final b f38005a;

    /* renamed from: b  reason: collision with root package name */
    private static final b f38006b;

    /* renamed from: c  reason: collision with root package name */
    private static final b f38007c;

    /* renamed from: d  reason: collision with root package name */
    private static final List<b> f38008d;
    private static final b e;
    private static final List<b> g;
    private static final b h;
    private static final b i;
    private static final b j;
    private static final b k;
    private static final Set<b> l;
    private static final b f = new b("javax.annotation.CheckForNull");
    private static final List<b> m = n.b((Object[]) new b[]{u.l, u.m});
    private static final List<b> n = n.b((Object[]) new b[]{u.k, u.n});

    static {
        b bVar = new b("org.jspecify.annotations.Nullable");
        f38005a = bVar;
        b bVar2 = new b("org.jspecify.annotations.NullnessUnspecified");
        f38006b = bVar2;
        b bVar3 = new b("org.jspecify.annotations.DefaultNonNull");
        f38007c = bVar3;
        List<b> b2 = n.b((Object[]) new b[]{u.j, new b("androidx.annotation.Nullable"), new b("androidx.annotation.Nullable"), new b("android.annotation.Nullable"), new b("com.android.annotations.Nullable"), new b("org.eclipse.jdt.annotation.Nullable"), new b("org.checkerframework.checker.nullness.qual.Nullable"), new b("javax.annotation.Nullable"), new b("javax.annotation.CheckForNull"), new b("edu.umd.cs.findbugs.annotations.CheckForNull"), new b("edu.umd.cs.findbugs.annotations.Nullable"), new b("edu.umd.cs.findbugs.annotations.PossiblyNull"), new b("io.reactivex.annotations.Nullable")});
        f38008d = b2;
        b bVar4 = new b("javax.annotation.Nonnull");
        e = bVar4;
        List<b> b3 = n.b((Object[]) new b[]{u.i, new b("edu.umd.cs.findbugs.annotations.NonNull"), new b("androidx.annotation.NonNull"), new b("androidx.annotation.NonNull"), new b("android.annotation.NonNull"), new b("com.android.annotations.NonNull"), new b("org.eclipse.jdt.annotation.NonNull"), new b("org.checkerframework.checker.nullness.qual.NonNull"), new b("lombok.NonNull"), new b("io.reactivex.annotations.NonNull")});
        g = b3;
        b bVar5 = new b("org.checkerframework.checker.nullness.compatqual.NullableDecl");
        h = bVar5;
        b bVar6 = new b("org.checkerframework.checker.nullness.compatqual.NonNullDecl");
        i = bVar6;
        b bVar7 = new b("androidx.annotation.RecentlyNullable");
        j = bVar7;
        b bVar8 = new b("androidx.annotation.RecentlyNonNull");
        k = bVar8;
        l = ap.a(ap.a(ap.a(ap.a(ap.a(ap.a(ap.a(ap.a(ap.a(ap.a((Set) new LinkedHashSet(), (Iterable) b2), bVar4), (Iterable) b3), bVar5), bVar6), bVar7), bVar8), bVar), bVar2), bVar3);
    }

    public static final b a() {
        return f38005a;
    }

    public static final b b() {
        return f38006b;
    }

    public static final b c() {
        return f38007c;
    }

    public static final List<b> d() {
        return f38008d;
    }

    public static final b e() {
        return e;
    }

    public static final b f() {
        return f;
    }

    public static final List<b> g() {
        return g;
    }

    public static final b h() {
        return h;
    }

    public static final b i() {
        return i;
    }

    public static final b j() {
        return j;
    }

    public static final b k() {
        return k;
    }

    public static final List<b> l() {
        return m;
    }

    public static final List<b> m() {
        return n;
    }
}
