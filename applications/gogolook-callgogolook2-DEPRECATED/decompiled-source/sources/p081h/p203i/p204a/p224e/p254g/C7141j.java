package p081h.p203i.p204a.p224e.p254g;

import androidx.core.util.TimeUtils;
/* renamed from: h.i.a.e.g.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/g/j.class */
public final class C7141j {

    /* renamed from: d */
    public static final C7141j f17243d = new C7141j(0, 30, TimeUtils.SECONDS_PER_HOUR);

    /* renamed from: a */
    public final int f17244a;

    /* renamed from: b */
    public final int f17245b = 30;

    /* renamed from: c */
    public final int f17246c = TimeUtils.SECONDS_PER_HOUR;

    static {
        new C7141j(1, 30, TimeUtils.SECONDS_PER_HOUR);
    }

    public C7141j(int i, int i2, int i3) {
        this.f17244a = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7141j)) {
            return false;
        }
        C7141j jVar = (C7141j) obj;
        return jVar.f17244a == this.f17244a && jVar.f17245b == this.f17245b && jVar.f17246c == this.f17246c;
    }

    public final int hashCode() {
        return (((((this.f17244a + 1) ^ 1000003) * 1000003) ^ this.f17245b) * 1000003) ^ this.f17246c;
    }

    public final String toString() {
        int i = this.f17244a;
        int i2 = this.f17245b;
        int i3 = this.f17246c;
        StringBuilder sb = new StringBuilder(74);
        sb.append("policy=");
        sb.append(i);
        sb.append(" initial_backoff=");
        sb.append(i2);
        sb.append(" maximum_backoff=");
        sb.append(i3);
        return sb.toString();
    }
}
