package com.google.android.datatransport.p232h.p237x.p238j;

import com.google.android.datatransport.p232h.AbstractC4664h;
import com.google.android.datatransport.p232h.AbstractC4673m;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.h.x.j.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/b.class */
public final class C4704b extends AbstractC4727i {

    /* renamed from: a */
    private final long f14295a;

    /* renamed from: b */
    private final AbstractC4673m f14296b;

    /* renamed from: c */
    private final AbstractC4664h f14297c;

    public C4704b(long j, AbstractC4673m abstractC4673m, AbstractC4664h abstractC4664h) {
        this.f14295a = j;
        Objects.requireNonNull(abstractC4673m, "Null transportContext");
        this.f14296b = abstractC4673m;
        Objects.requireNonNull(abstractC4664h, "Null event");
        this.f14297c = abstractC4664h;
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4727i
    /* renamed from: b */
    public AbstractC4664h mo21882b() {
        return this.f14297c;
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4727i
    /* renamed from: c */
    public long mo21881c() {
        return this.f14295a;
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4727i
    /* renamed from: d */
    public AbstractC4673m mo21880d() {
        return this.f14296b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4727i)) {
            return false;
        }
        AbstractC4727i abstractC4727i = (AbstractC4727i) obj;
        if (this.f14295a != abstractC4727i.mo21881c() || !this.f14296b.equals(abstractC4727i.mo21880d()) || !this.f14297c.equals(abstractC4727i.mo21882b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f14295a;
        int i = (int) (j ^ (j >>> 32));
        return this.f14297c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ this.f14296b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f14295a + ", transportContext=" + this.f14296b + ", event=" + this.f14297c + "}";
    }
}
