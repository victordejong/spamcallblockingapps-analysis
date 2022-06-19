package io.fabric.sdk.android.services.p068b;
/* renamed from: io.fabric.sdk.android.services.b.b */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/b.class */
public class C1469b {

    /* renamed from: a */
    public final String f4048a;

    /* renamed from: b */
    public final boolean f4049b;

    public C1469b(String str, boolean z) {
        this.f4048a = str;
        this.f4049b = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1469b c1469b = (C1469b) obj;
        if (this.f4049b != c1469b.f4049b) {
            return false;
        }
        String str = this.f4048a;
        String str2 = c1469b.f4048a;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        String str = this.f4048a;
        return ((str != null ? str.hashCode() : 0) * 31) + (this.f4049b ? 1 : 0);
    }
}
