package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.annotation.Annotation;
import java.util.Collection;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.z;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/y.class */
public final class y extends n implements z {

    /* renamed from: a  reason: collision with root package name */
    private final w f37490a;

    /* renamed from: b  reason: collision with root package name */
    private final Annotation[] f37491b;

    /* renamed from: c  reason: collision with root package name */
    private final String f37492c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f37493d;

    public y(w type, Annotation[] reflectAnnotations, String str, boolean z) {
        p.d(type, "type");
        p.d(reflectAnnotations, "reflectAnnotations");
        this.f37490a = type;
        this.f37491b = reflectAnnotations;
        this.f37492c = str;
        this.f37493d = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final /* synthetic */ a a(b fqName) {
        p.d(fqName, "fqName");
        return g.a(this.f37491b, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.z
    public final boolean a() {
        return this.f37493d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final /* synthetic */ Collection b() {
        return g.a(this.f37491b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final boolean c() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.z
    public final e d() {
        String str = this.f37492c;
        if (str == null) {
            return null;
        }
        return e.d(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.z
    public final /* bridge */ /* synthetic */ w e() {
        return this.f37490a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getName());
        sb.append(": ");
        sb.append(this.f37493d ? "vararg " : "");
        sb.append(d());
        sb.append(": ");
        sb.append(this.f37490a);
        return sb.toString();
    }
}
