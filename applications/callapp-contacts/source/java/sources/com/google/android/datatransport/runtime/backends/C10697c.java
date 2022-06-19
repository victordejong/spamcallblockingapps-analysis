package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.backends.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/c.class */
final class C10697c extends AbstractC10704h {

    /* renamed from: a */
    private final Context f34551a;

    /* renamed from: b */
    private final AbstractC10719a f34552b;

    /* renamed from: c */
    private final AbstractC10719a f34553c;

    /* renamed from: d */
    private final String f34554d;

    public C10697c(Context context, AbstractC10719a abstractC10719a, AbstractC10719a abstractC10719a2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.f34551a = context;
        Objects.requireNonNull(abstractC10719a, "Null wallClock");
        this.f34552b = abstractC10719a;
        Objects.requireNonNull(abstractC10719a2, "Null monotonicClock");
        this.f34553c = abstractC10719a2;
        Objects.requireNonNull(str, "Null backendName");
        this.f34554d = str;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10704h
    /* renamed from: a */
    public final Context mo22505a() {
        return this.f34551a;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10704h
    /* renamed from: b */
    public final AbstractC10719a mo22504b() {
        return this.f34552b;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10704h
    /* renamed from: c */
    public final AbstractC10719a mo22503c() {
        return this.f34553c;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10704h
    /* renamed from: d */
    public final String mo22502d() {
        return this.f34554d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10704h)) {
            return false;
        }
        AbstractC10704h abstractC10704h = (AbstractC10704h) obj;
        return this.f34551a.equals(abstractC10704h.mo22505a()) && this.f34552b.equals(abstractC10704h.mo22504b()) && this.f34553c.equals(abstractC10704h.mo22503c()) && this.f34554d.equals(abstractC10704h.mo22502d());
    }

    public final int hashCode() {
        return ((((((this.f34551a.hashCode() ^ 1000003) * 1000003) ^ this.f34552b.hashCode()) * 1000003) ^ this.f34553c.hashCode()) * 1000003) ^ this.f34554d.hashCode();
    }

    public final String toString() {
        return "CreationContext{applicationContext=" + this.f34551a + ", wallClock=" + this.f34552b + ", monotonicClock=" + this.f34553c + ", backendName=" + this.f34554d + "}";
    }
}
