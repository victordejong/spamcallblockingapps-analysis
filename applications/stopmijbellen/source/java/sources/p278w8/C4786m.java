package p278w8;

import p267v8.AbstractC4654a;
/* renamed from: w8.m */
/* loaded from: classes2-dex2jar.jar:w8/m.class */
public class C4786m implements AbstractC4654a {

    /* renamed from: a */
    public C4779j f14713a;

    /* renamed from: b */
    public boolean f14714b;

    public C4786m(C4779j c4779j, boolean z) {
        this.f14713a = c4779j;
        this.f14714b = z;
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14713a);
        sb.append(" ");
        sb.append(this.f14714b ? "ASC" : "DESC");
        return sb.toString();
    }

    public String toString() {
        return mo238b();
    }
}
