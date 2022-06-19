package com.google.android.datatransport.cct.p315a;

import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.datatransport.cct.a.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/d.class */
public final class C10642d extends AbstractC10656j {

    /* renamed from: a */
    private final List<AbstractC10662m> f34464a;

    public C10642d(List<AbstractC10662m> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.f34464a = list;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10656j
    /* renamed from: a */
    public final List<AbstractC10662m> mo22579a() {
        return this.f34464a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10656j)) {
            return false;
        }
        return this.f34464a.equals(((AbstractC10656j) obj).mo22579a());
    }

    public final int hashCode() {
        return this.f34464a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f34464a + "}";
    }
}
