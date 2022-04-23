package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.d.a;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/c.class */
final class c extends h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f20413a;

    /* renamed from: b  reason: collision with root package name */
    private final a f20414b;

    /* renamed from: c  reason: collision with root package name */
    private final a f20415c;

    /* renamed from: d  reason: collision with root package name */
    private final String f20416d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, a aVar, a aVar2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.f20413a = context;
        Objects.requireNonNull(aVar, "Null wallClock");
        this.f20414b = aVar;
        Objects.requireNonNull(aVar2, "Null monotonicClock");
        this.f20415c = aVar2;
        Objects.requireNonNull(str, "Null backendName");
        this.f20416d = str;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public final Context a() {
        return this.f20413a;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public final a b() {
        return this.f20414b;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public final a c() {
        return this.f20415c;
    }

    @Override // com.google.android.datatransport.runtime.backends.h
    public final String d() {
        return this.f20416d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f20413a.equals(hVar.a()) && this.f20414b.equals(hVar.b()) && this.f20415c.equals(hVar.c()) && this.f20416d.equals(hVar.d());
    }

    public final int hashCode() {
        return ((((((this.f20413a.hashCode() ^ 1000003) * 1000003) ^ this.f20414b.hashCode()) * 1000003) ^ this.f20415c.hashCode()) * 1000003) ^ this.f20416d.hashCode();
    }

    public final String toString() {
        return "CreationContext{applicationContext=" + this.f20413a + ", wallClock=" + this.f20414b + ", monotonicClock=" + this.f20415c + ", backendName=" + this.f20416d + "}";
    }
}
