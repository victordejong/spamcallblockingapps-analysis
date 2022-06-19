package com.google.android.datatransport.cct.internal;

import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.datatransport.cct.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/d.class */
public final class C4625d extends AbstractC4639j {

    /* renamed from: a */
    private final List<AbstractC4642l> f14152a;

    public C4625d(List<AbstractC4642l> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.f14152a = list;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4639j
    /* renamed from: c */
    public List<AbstractC4642l> mo22112c() {
        return this.f14152a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4639j)) {
            return false;
        }
        return this.f14152a.equals(((AbstractC4639j) obj).mo22112c());
    }

    public int hashCode() {
        return this.f14152a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f14152a + "}";
    }
}
