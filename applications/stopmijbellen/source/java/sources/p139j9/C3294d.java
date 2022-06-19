package p139j9;

import android.support.p012v4.media.C0082b;
/* renamed from: j9.d */
/* loaded from: classes2-dex2jar.jar:j9/d.class */
public class C3294d extends C3293c {
    public C3294d() {
        this.f11140a = true;
        this.f11144e = false;
    }

    @Override // p139j9.C3293c
    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder m8752j = C0082b.m8752j("header=");
        m8752j.append(this.f11140a);
        sb.append(m8752j.toString());
        sb.append(",");
        sb.append("versionName=" + this.f11141b);
        sb.append(",");
        sb.append("changeDate=" + this.f11143d);
        return sb.toString();
    }
}
