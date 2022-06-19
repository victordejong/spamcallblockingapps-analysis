package p262v3;

import android.graphics.PorterDuff;
import android.view.View;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: v3.t */
/* loaded from: classes-dex2jar.jar:v3/t.class */
public class C4638t {

    /* renamed from: v3.t$a */
    /* loaded from: classes-dex2jar.jar:v3/t$a.class */
    public interface AbstractC4639a {
    }

    /* renamed from: v3.t$b */
    /* loaded from: classes-dex2jar.jar:v3/t$b.class */
    public static class C4640b {

        /* renamed from: a */
        public int f14329a;

        /* renamed from: b */
        public int f14330b;

        /* renamed from: c */
        public int f14331c;

        /* renamed from: d */
        public int f14332d;

        public C4640b(int i, int i2, int i3, int i4) {
            this.f14329a = i;
            this.f14330b = i2;
            this.f14331c = i3;
            this.f14332d = i4;
        }
    }

    /* renamed from: a */
    public static boolean m685a(View view) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        boolean z = true;
        if (C3589v.C3594e.m2071d(view) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static PorterDuff.Mode m684b(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i == 5) {
                return PorterDuff.Mode.SRC_IN;
            }
            if (i == 9) {
                return PorterDuff.Mode.SRC_ATOP;
            }
            switch (i) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_OVER;
    }
}
