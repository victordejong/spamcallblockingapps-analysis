package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.EnumC10676d;
import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import com.google.android.datatransport.runtime.p316a.p317a.C10688e;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10802c;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/f.class */
public final class C10798f implements AbstractC10685b<AbstractC10808g> {

    /* renamed from: a */
    private final AbstractC18213a<AbstractC10719a> f34702a;

    public C10798f(AbstractC18213a<AbstractC10719a> abstractC18213a) {
        this.f34702a = abstractC18213a;
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final /* synthetic */ Object mo4304a() {
        AbstractC10719a mo4304a = this.f34702a.mo4304a();
        AbstractC10808g.C10809a m22342a = new AbstractC10808g.C10809a().m22342a(EnumC10676d.DEFAULT, AbstractC10808g.AbstractC10810b.m22338d().mo22336a(30000L).mo22337a().mo22334b()).m22342a(EnumC10676d.HIGHEST, AbstractC10808g.AbstractC10810b.m22338d().mo22336a(1000L).mo22337a().mo22334b()).m22342a(EnumC10676d.VERY_LOW, AbstractC10808g.AbstractC10810b.m22338d().mo22336a(86400000L).mo22337a().mo22335a(Collections.unmodifiableSet(new HashSet(Arrays.asList(AbstractC10808g.EnumC10812c.NETWORK_UNMETERED, AbstractC10808g.EnumC10812c.DEVICE_IDLE)))).mo22334b());
        m22342a.f34726a = mo4304a;
        Objects.requireNonNull(m22342a.f34726a, "missing required property: clock");
        if (m22342a.f34727b.keySet().size() >= EnumC10676d.values().length) {
            Map<EnumC10676d, AbstractC10808g.AbstractC10810b> map = m22342a.f34727b;
            m22342a.f34727b = new HashMap();
            return (AbstractC10808g) C10688e.m22519a(new C10802c(m22342a.f34726a, map), "Cannot return null from a non-@Nullable @Provides method");
        }
        throw new IllegalStateException("Not all priorities have been configured");
    }
}
