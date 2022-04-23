package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.load.kotlin.e;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f37430a;

    /* renamed from: b  reason: collision with root package name */
    public final g f37431b;

    /* renamed from: c  reason: collision with root package name */
    public final ConcurrentHashMap<kotlin.reflect.jvm.internal.impl.c.a, h> f37432c = new ConcurrentHashMap<>();

    public a(e resolver, g kotlinClassFinder) {
        p.d(resolver, "resolver");
        p.d(kotlinClassFinder, "kotlinClassFinder");
        this.f37430a = resolver;
        this.f37431b = kotlinClassFinder;
    }
}
