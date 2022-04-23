package com.facebook.internal.b.b;

import com.explorestack.iab.utils.o;
import com.facebook.g;
import com.facebook.internal.b.b;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n��\n\u0002\u0010\"\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0007J\u001a\u0010\f\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0001H\u0007J\b\u0010\u0010\u001a\u00020\bH\u0007J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001H\u0007J\u0012\u0010\u0012\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0007J\b\u0010\u0013\u001a\u00020\nH\u0007J\b\u0010\u0014\u001a\u00020\nH\u0007J\u0012\u0010\u0015\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R2\u0010\u0003\u001a&\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00010\u0001 \u0005*\u0012\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;", "", "()V", "crashingObjects", "", "kotlin.jvm.PlatformType", "", "enabled", "", "disable", "", "enable", "handleThrowable", "e", "", o.f19200a, "isDebug", "isObjectCrashing", "methodFinished", "reset", "resetCrashingObjects", "scheduleCrashInDebug", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f19878a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<Object> f19879b = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: c  reason: collision with root package name */
    private static boolean f19880c;

    private a() {
    }

    public static final void a() {
        f19880c = true;
    }

    public static final void a(Throwable th, Object o) {
        p.d(o, "o");
        if (f19880c) {
            f19879b.add(o);
            if (g.p()) {
                com.facebook.internal.b.a.a(th);
                b.a.a(th, b.EnumC0398b.CrashShield).b();
            }
        }
    }

    public static final boolean a(Object o) {
        p.d(o, "o");
        return f19879b.contains(o);
    }
}
