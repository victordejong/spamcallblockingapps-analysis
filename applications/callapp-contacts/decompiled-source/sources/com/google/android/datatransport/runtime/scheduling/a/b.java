package com.google.android.datatransport.runtime.scheduling.a;

import com.google.android.datatransport.runtime.h;
import com.google.android.datatransport.runtime.l;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/b.class */
final class b extends h {

    /* renamed from: a  reason: collision with root package name */
    private final long f20494a;

    /* renamed from: b  reason: collision with root package name */
    private final l f20495b;

    /* renamed from: c  reason: collision with root package name */
    private final h f20496c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long j, l lVar, h hVar) {
        this.f20494a = j;
        Objects.requireNonNull(lVar, "Null transportContext");
        this.f20495b = lVar;
        Objects.requireNonNull(hVar, "Null event");
        this.f20496c = hVar;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.h
    public final long a() {
        return this.f20494a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.h
    public final l b() {
        return this.f20495b;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.h
    public final h c() {
        return this.f20496c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f20494a == hVar.a() && this.f20495b.equals(hVar.b()) && this.f20496c.equals(hVar.c());
    }

    public final int hashCode() {
        long j = this.f20494a;
        int i = (int) (j ^ (j >>> 32));
        return this.f20496c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ this.f20495b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f20494a + ", transportContext=" + this.f20495b + ", event=" + this.f20496c + "}";
    }
}
