package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19626e;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/a.class */
public final class C19071a {

    /* renamed from: a */
    public final C19626e f64788a;

    /* renamed from: b */
    public final C19078g f64789b;

    /* renamed from: c */
    public final ConcurrentHashMap<C18960a, AbstractC19834h> f64790c = new ConcurrentHashMap<>();

    public C19071a(C19626e resolver, C19078g kotlinClassFinder) {
        C18524p.m3840d(resolver, "resolver");
        C18524p.m3840d(kotlinClassFinder, "kotlinClassFinder");
        this.f64788a = resolver;
        this.f64789b = kotlinClassFinder;
    }
}
