package p193e.p1577m.p1578a.p1596c.p1622m1.p1626p;

import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.m1.p.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/p/b.class */
public final class C24601b {

    /* renamed from: a */
    public final int f68854a;

    /* renamed from: b */
    public final int f68855b;

    /* renamed from: c */
    public final int f68856c;

    /* renamed from: d */
    public final int f68857d;

    /* renamed from: e */
    public final int f68858e;

    public C24601b(int i, int i2, int i3, int i4, int i5) {
        this.f68854a = i;
        this.f68855b = i2;
        this.f68856c = i3;
        this.f68857d = i4;
        this.f68858e = i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static C24601b m4859a(String str) {
        boolean z;
        C26232y.m2310r(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < split.length; i5++) {
            String m4626D = C24773d0.m4626D(split[i5].trim());
            m4626D.hashCode();
            switch (m4626D.hashCode()) {
                case 100571:
                    if (m4626D.equals(AnalyticsConstants.END)) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 3556653:
                    if (m4626D.equals("text")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 109757538:
                    if (m4626D.equals(AnalyticsConstants.START)) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 109780401:
                    if (m4626D.equals("style")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    i4 = i5;
                    break;
                case true:
                    i2 = i5;
                    break;
                case true:
                    i = i5;
                    break;
                case true:
                    i3 = i5;
                    break;
            }
        }
        return (i == -1 || i4 == -1) ? null : new C24601b(i, i4, i3, i2, split.length);
    }
}
