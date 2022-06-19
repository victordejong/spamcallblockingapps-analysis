package com.facebook.internal.p037u0.p040m;

import com.facebook.internal.p037u0.C1204h;
import com.facebook.internal.p037u0.C1205i;
import com.razorpay.AnalyticsConstants;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n��\n\u0002\u0010\"\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0007J\u001a\u0010\f\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0001H\u0007J\b\u0010\u0010\u001a\u00020\bH\u0007J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001H\u0007J\u0012\u0010\u0012\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0007J\b\u0010\u0013\u001a\u00020\nH\u0007J\b\u0010\u0014\u001a\u00020\nH\u0007J\u0012\u0010\u0015\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R2\u0010\u0003\u001a&\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00010\u0001 \u0005*\u0012\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;", "", "()V", "crashingObjects", "", "kotlin.jvm.PlatformType", "", "enabled", "", "disable", "", "enable", "handleThrowable", "e", "", "o", "isDebug", "isObjectCrashing", "methodFinished", AnalyticsConstants.RESET, "resetCrashingObjects", "scheduleCrashInDebug", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.u0.m.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/m/a.class */
public final class C1220a {

    /* renamed from: a */
    public static final C1220a f3298a = null;

    /* renamed from: b */
    public static final Set<Object> f3299b = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: c */
    public static boolean f3300c;

    /* renamed from: a */
    public static final void m41624a(Throwable th, Object obj) {
        l.e(obj, "o");
        if (!f3300c) {
            return;
        }
        f3299b.add(obj);
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (!C23228f0.m7352c()) {
            return;
        }
        C1204h.m41638a(th);
        C1205i.EnumC1208c enumC1208c = C1205i.EnumC1208c.CrashShield;
        l.e(enumC1208c, "t");
        new C1205i(th, enumC1208c, (f) null).m41635c();
    }

    /* renamed from: b */
    public static final boolean m41623b(Object obj) {
        l.e(obj, "o");
        return f3299b.contains(obj);
    }
}
