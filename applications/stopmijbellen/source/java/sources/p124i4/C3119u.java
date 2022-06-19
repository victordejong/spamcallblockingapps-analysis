package p124i4;
/* renamed from: i4.u */
/* loaded from: classes-dex2jar.jar:i4/u.class */
public final class C3119u extends AbstractC3101c {

    /* renamed from: a */
    public final int f10553a;

    /* renamed from: b */
    public final boolean f10554b;

    public /* synthetic */ C3119u(int i, boolean z) {
        this.f10553a = i;
        this.f10554b = z;
    }

    @Override // p124i4.AbstractC3101c
    /* renamed from: a */
    public final boolean mo2600a() {
        return this.f10554b;
    }

    @Override // p124i4.AbstractC3101c
    /* renamed from: b */
    public final int mo2599b() {
        return this.f10553a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3101c)) {
            return false;
        }
        AbstractC3101c abstractC3101c = (AbstractC3101c) obj;
        return this.f10553a == abstractC3101c.mo2599b() && this.f10554b == abstractC3101c.mo2600a();
    }

    public final int hashCode() {
        return ((this.f10553a ^ 1000003) * 1000003) ^ (true != this.f10554b ? 1237 : 1231);
    }

    public final String toString() {
        int i = this.f10553a;
        boolean z = this.f10554b;
        StringBuilder sb = new StringBuilder(73);
        sb.append("AppUpdateOptions{appUpdateType=");
        sb.append(i);
        sb.append(", allowAssetPackDeletion=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }
}
