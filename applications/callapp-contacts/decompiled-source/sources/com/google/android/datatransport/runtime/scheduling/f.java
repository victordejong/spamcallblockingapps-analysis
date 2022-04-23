package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.d;
import com.google.android.datatransport.runtime.a.a.b;
import com.google.android.datatransport.runtime.a.a.e;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.c;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import javax.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/f.class */
public final class f implements b<g> {

    /* renamed from: a  reason: collision with root package name */
    private final a<com.google.android.datatransport.runtime.d.a> f20541a;

    public f(a<com.google.android.datatransport.runtime.d.a> aVar) {
        this.f20541a = aVar;
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        com.google.android.datatransport.runtime.d.a a2 = this.f20541a.a();
        g.a a3 = new g.a().a(d.DEFAULT, g.b.d().a(30000L).a().b()).a(d.HIGHEST, g.b.d().a(1000L).a().b()).a(d.VERY_LOW, g.b.d().a(86400000L).a().a(Collections.unmodifiableSet(new HashSet(Arrays.asList(g.c.NETWORK_UNMETERED, g.c.DEVICE_IDLE)))).b());
        a3.f20564a = a2;
        Objects.requireNonNull(a3.f20564a, "missing required property: clock");
        if (a3.f20565b.keySet().size() >= d.values().length) {
            Map<d, g.b> map = a3.f20565b;
            a3.f20565b = new HashMap();
            return (g) e.a(new c(a3.f20564a, map), "Cannot return null from a non-@Nullable @Provides method");
        }
        throw new IllegalStateException("Not all priorities have been configured");
    }
}
