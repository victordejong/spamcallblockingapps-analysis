package com.google.android.datatransport.runtime.scheduling.p322a;

import com.google.android.datatransport.runtime.AbstractC10730h;
import com.google.android.datatransport.runtime.AbstractC10738l;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.datatransport.runtime.scheduling.a.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/b.class */
public final class C10761b extends AbstractC10771h {

    /* renamed from: a */
    private final long f34653a;

    /* renamed from: b */
    private final AbstractC10738l f34654b;

    /* renamed from: c */
    private final AbstractC10730h f34655c;

    public C10761b(long j, AbstractC10738l abstractC10738l, AbstractC10730h abstractC10730h) {
        this.f34653a = j;
        Objects.requireNonNull(abstractC10738l, "Null transportContext");
        this.f34654b = abstractC10738l;
        Objects.requireNonNull(abstractC10730h, "Null event");
        this.f34655c = abstractC10730h;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10771h
    /* renamed from: a */
    public final long mo22405a() {
        return this.f34653a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10771h
    /* renamed from: b */
    public final AbstractC10738l mo22403b() {
        return this.f34654b;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10771h
    /* renamed from: c */
    public final AbstractC10730h mo22402c() {
        return this.f34655c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10771h)) {
            return false;
        }
        AbstractC10771h abstractC10771h = (AbstractC10771h) obj;
        return this.f34653a == abstractC10771h.mo22405a() && this.f34654b.equals(abstractC10771h.mo22403b()) && this.f34655c.equals(abstractC10771h.mo22402c());
    }

    public final int hashCode() {
        long j = this.f34653a;
        int i = (int) (j ^ (j >>> 32));
        return this.f34655c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ this.f34654b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f34653a + ", transportContext=" + this.f34654b + ", event=" + this.f34655c + "}";
    }
}
