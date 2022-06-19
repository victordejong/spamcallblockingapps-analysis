package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.EnumC10676d;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g;
import java.util.Map;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/c.class */
public final class C10802c extends AbstractC10808g {

    /* renamed from: a */
    private final AbstractC10719a f34713a;

    /* renamed from: b */
    private final Map<EnumC10676d, AbstractC10808g.AbstractC10810b> f34714b;

    public C10802c(AbstractC10719a abstractC10719a, Map<EnumC10676d, AbstractC10808g.AbstractC10810b> map) {
        Objects.requireNonNull(abstractC10719a, "Null clock");
        this.f34713a = abstractC10719a;
        Objects.requireNonNull(map, "Null values");
        this.f34714b = map;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g
    /* renamed from: a */
    public final AbstractC10719a mo22348a() {
        return this.f34713a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g
    /* renamed from: b */
    public final Map<EnumC10676d, AbstractC10808g.AbstractC10810b> mo22343b() {
        return this.f34714b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10808g)) {
            return false;
        }
        AbstractC10808g abstractC10808g = (AbstractC10808g) obj;
        return this.f34713a.equals(abstractC10808g.mo22348a()) && this.f34714b.equals(abstractC10808g.mo22343b());
    }

    public final int hashCode() {
        return ((this.f34713a.hashCode() ^ 1000003) * 1000003) ^ this.f34714b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f34713a + ", values=" + this.f34714b + "}";
    }
}
