package com.google.android.datatransport.cct.a;

import java.util.List;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/d.class */
final class d extends j {

    /* renamed from: a  reason: collision with root package name */
    private final List<m> f20347a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(List<m> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.f20347a = list;
    }

    @Override // com.google.android.datatransport.cct.a.j
    public final List<m> a() {
        return this.f20347a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            return this.f20347a.equals(((j) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f20347a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f20347a + "}";
    }
}
