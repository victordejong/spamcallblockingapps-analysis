package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.b;
import com.google.android.gms.wearable.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/e.class */
final class e implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final b.a f30138a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30139b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b.a aVar, String str) {
        this.f30138a = aVar;
        this.f30139b = str;
    }

    @Override // com.google.android.gms.wearable.b.a, com.google.android.gms.wearable.a.AbstractC0483a
    public final void a(c cVar) {
        this.f30138a.a(cVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (!this.f30138a.equals(eVar.f30138a)) {
            return false;
        }
        return this.f30139b.equals(eVar.f30139b);
    }

    public final int hashCode() {
        return (this.f30138a.hashCode() * 31) + this.f30139b.hashCode();
    }
}
