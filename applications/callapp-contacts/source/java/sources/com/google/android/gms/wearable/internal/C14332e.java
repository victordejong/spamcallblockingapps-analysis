package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.AbstractC14221b;
import com.google.android.gms.wearable.AbstractC14223c;
/* renamed from: com.google.android.gms.wearable.internal.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/e.class */
final class C14332e implements AbstractC14221b.AbstractC14222a {

    /* renamed from: a */
    private final AbstractC14221b.AbstractC14222a f52295a;

    /* renamed from: b */
    private final String f52296b;

    public C14332e(AbstractC14221b.AbstractC14222a abstractC14222a, String str) {
        this.f52295a = abstractC14222a;
        this.f52296b = str;
    }

    @Override // com.google.android.gms.wearable.AbstractC14221b.AbstractC14222a, com.google.android.gms.wearable.AbstractC14209a.AbstractC14210a
    /* renamed from: a */
    public final void mo11363a(AbstractC14223c abstractC14223c) {
        this.f52295a.mo11363a(abstractC14223c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C14332e c14332e = (C14332e) obj;
        if (this.f52295a.equals(c14332e.f52295a)) {
            return this.f52296b.equals(c14332e.f52296b);
        }
        return false;
    }

    public final int hashCode() {
        return (this.f52295a.hashCode() * 31) + this.f52296b.hashCode();
    }
}
