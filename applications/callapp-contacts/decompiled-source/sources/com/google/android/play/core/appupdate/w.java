package com.google.android.play.core.appupdate;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/w.class */
final class w extends d {

    /* renamed from: a  reason: collision with root package name */
    private final int f31068a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f31069b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ w(int i, boolean z) {
        this.f31068a = i;
        this.f31069b = z;
    }

    @Override // com.google.android.play.core.appupdate.d
    public final int a() {
        return this.f31068a;
    }

    @Override // com.google.android.play.core.appupdate.d
    public final boolean b() {
        return this.f31069b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f31068a == dVar.a() && this.f31069b == dVar.b();
    }

    public final int hashCode() {
        return ((this.f31068a ^ 1000003) * 1000003) ^ (true != this.f31069b ? 1237 : 1231);
    }

    public final String toString() {
        int i = this.f31068a;
        boolean z = this.f31069b;
        StringBuilder sb = new StringBuilder(73);
        sb.append("AppUpdateOptions{appUpdateType=");
        sb.append(i);
        sb.append(", allowAssetPackDeletion=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }
}
