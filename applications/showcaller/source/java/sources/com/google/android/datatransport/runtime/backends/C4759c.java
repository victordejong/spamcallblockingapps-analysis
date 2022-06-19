package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.backends.c */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/c.class */
public final class C4759c extends AbstractC4764g {

    /* renamed from: a */
    private final Context f14365a;

    /* renamed from: b */
    private final AbstractC4746a f14366b;

    /* renamed from: c */
    private final AbstractC4746a f14367c;

    /* renamed from: d */
    private final String f14368d;

    public C4759c(Context context, AbstractC4746a abstractC4746a, AbstractC4746a abstractC4746a2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.f14365a = context;
        Objects.requireNonNull(abstractC4746a, "Null wallClock");
        this.f14366b = abstractC4746a;
        Objects.requireNonNull(abstractC4746a2, "Null monotonicClock");
        this.f14367c = abstractC4746a2;
        Objects.requireNonNull(str, "Null backendName");
        this.f14368d = str;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC4764g
    /* renamed from: b */
    public Context mo21832b() {
        return this.f14365a;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC4764g
    /* renamed from: c */
    public String mo21831c() {
        return this.f14368d;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC4764g
    /* renamed from: d */
    public AbstractC4746a mo21830d() {
        return this.f14367c;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC4764g
    /* renamed from: e */
    public AbstractC4746a mo21829e() {
        return this.f14366b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4764g)) {
            return false;
        }
        AbstractC4764g abstractC4764g = (AbstractC4764g) obj;
        if (!this.f14365a.equals(abstractC4764g.mo21832b()) || !this.f14366b.equals(abstractC4764g.mo21829e()) || !this.f14367c.equals(abstractC4764g.mo21830d()) || !this.f14368d.equals(abstractC4764g.mo21831c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f14365a.hashCode() ^ 1000003) * 1000003) ^ this.f14366b.hashCode()) * 1000003) ^ this.f14367c.hashCode()) * 1000003) ^ this.f14368d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f14365a + ", wallClock=" + this.f14366b + ", monotonicClock=" + this.f14367c + ", backendName=" + this.f14368d + "}";
    }
}
