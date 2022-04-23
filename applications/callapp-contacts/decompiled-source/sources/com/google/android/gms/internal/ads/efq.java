package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efq.class */
public final class efq {

    /* renamed from: a  reason: collision with root package name */
    final long f27792a;

    /* renamed from: b  reason: collision with root package name */
    final String f27793b;

    /* renamed from: c  reason: collision with root package name */
    final int f27794c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public efq(long j, String str, int i) {
        this.f27792a = j;
        this.f27793b = str;
        this.f27794c = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof efq)) {
            return false;
        }
        efq efqVar = (efq) obj;
        return efqVar.f27792a == this.f27792a && efqVar.f27794c == this.f27794c;
    }

    public final int hashCode() {
        return (int) this.f27792a;
    }
}
