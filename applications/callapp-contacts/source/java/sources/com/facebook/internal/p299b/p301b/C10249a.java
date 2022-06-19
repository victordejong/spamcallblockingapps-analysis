package com.facebook.internal.p299b.p301b;

import com.explorestack.iab.utils.C9605o;
import com.facebook.C10181g;
import com.facebook.internal.p299b.C10239a;
import com.facebook.internal.p299b.C10245b;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n��\n\u0002\u0010\"\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0007J\u001a\u0010\f\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0001H\u0007J\b\u0010\u0010\u001a\u00020\bH\u0007J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001H\u0007J\u0012\u0010\u0012\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0007J\b\u0010\u0013\u001a\u00020\nH\u0007J\b\u0010\u0014\u001a\u00020\nH\u0007J\u0012\u0010\u0015\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R2\u0010\u0003\u001a&\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00010\u0001 \u0005*\u0012\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0016"}, m4298d2 = {"Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;", "", "()V", "crashingObjects", "", "kotlin.jvm.PlatformType", "", "enabled", "", "disable", "", "enable", "handleThrowable", "e", "", C9605o.f32625a, "isDebug", "isObjectCrashing", "methodFinished", "reset", "resetCrashingObjects", "scheduleCrashInDebug", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.b.b.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b/a.class */
public final class C10249a {

    /* renamed from: a */
    public static final C10249a f33752a = new C10249a();

    /* renamed from: b */
    private static final Set<Object> f33753b = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: c */
    private static boolean f33754c;

    private C10249a() {
    }

    /* renamed from: a */
    public static final void m23110a() {
        f33754c = true;
    }

    /* renamed from: a */
    public static final void m23106a(Throwable th, Object o) {
        C18524p.m3840d(o, "o");
        if (!f33754c) {
            return;
        }
        f33753b.add(o);
        if (!C10181g.m23283p()) {
            return;
        }
        C10239a.m23125a(th);
        C10245b.C10247a.m23107a(th, C10245b.EnumC10248b.CrashShield).m23115b();
    }

    /* renamed from: a */
    public static final boolean m23108a(Object o) {
        C18524p.m3840d(o, "o");
        return f33753b.contains(o);
    }
}
