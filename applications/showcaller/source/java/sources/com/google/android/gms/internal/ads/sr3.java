package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sr3.class */
public final class sr3 {

    /* renamed from: a */
    public final vr3 f29638a;

    /* renamed from: b */
    public final vr3 f29639b;

    public sr3(vr3 vr3Var, vr3 vr3Var2) {
        this.f29638a = vr3Var;
        this.f29639b = vr3Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || sr3.class != obj.getClass()) {
            return false;
        }
        sr3 sr3Var = (sr3) obj;
        return this.f29638a.equals(sr3Var.f29638a) && this.f29639b.equals(sr3Var.f29639b);
    }

    public final int hashCode() {
        return (this.f29638a.hashCode() * 31) + this.f29639b.hashCode();
    }

    public final String toString() {
        String obj = this.f29638a.toString();
        String concat = this.f29638a.equals(this.f29639b) ? "" : ", ".concat(this.f29639b.toString());
        StringBuilder sb = new StringBuilder(obj.length() + 2 + concat.length());
        sb.append("[");
        sb.append(obj);
        sb.append(concat);
        sb.append("]");
        return sb.toString();
    }
}
