package com.google.android.play.core.appupdate;
/* renamed from: com.google.android.play.core.appupdate.w */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/w.class */
final class C14895w extends AbstractC14875d {

    /* renamed from: a */
    private final int f54354a;

    /* renamed from: b */
    private final boolean f54355b;

    public /* synthetic */ C14895w(int i, boolean z) {
        this.f54354a = i;
        this.f54355b = z;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14875d
    /* renamed from: a */
    public final int mo9795a() {
        return this.f54354a;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14875d
    /* renamed from: b */
    public final boolean mo9794b() {
        return this.f54355b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC14875d)) {
            return false;
        }
        AbstractC14875d abstractC14875d = (AbstractC14875d) obj;
        return this.f54354a == abstractC14875d.mo9795a() && this.f54355b == abstractC14875d.mo9794b();
    }

    public final int hashCode() {
        return ((this.f54354a ^ 1000003) * 1000003) ^ (true != this.f54355b ? 1237 : 1231);
    }

    public final String toString() {
        int i = this.f54354a;
        boolean z = this.f54355b;
        StringBuilder sb = new StringBuilder(73);
        sb.append("AppUpdateOptions{appUpdateType=");
        sb.append(i);
        sb.append(", allowAssetPackDeletion=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }
}
