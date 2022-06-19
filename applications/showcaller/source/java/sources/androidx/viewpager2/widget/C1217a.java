package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Arrays;
import java.util.Comparator;
/* renamed from: androidx.viewpager2.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/a.class */
public final class C1217a {

    /* renamed from: a */
    private static final ViewGroup.MarginLayoutParams f5177a;

    /* renamed from: b */
    private LinearLayoutManager f5178b;

    /* renamed from: androidx.viewpager2.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/a$a.class */
    public class C1218a implements Comparator<int[]> {
        C1218a() {
            C1217a.this = r4;
        }

        /* renamed from: a */
        public int compare(int[] iArr, int[] iArr2) {
            return iArr[0] - iArr2[0];
        }
    }

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f5177a = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    public C1217a(LinearLayoutManager linearLayoutManager) {
        this.f5178b = linearLayoutManager;
    }

    /* renamed from: a */
    private boolean m30651a() {
        int i;
        int i2;
        int i3;
        int i4;
        int m31858J = this.f5178b.m31858J();
        if (m31858J == 0) {
            return true;
        }
        boolean z = this.f5178b.m32127m2() == 0;
        int[][] iArr = new int[m31858J][2];
        for (int i5 = 0; i5 < m31858J; i5++) {
            View m31860I = this.f5178b.m31860I(i5);
            if (m31860I == null) {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
            ViewGroup.LayoutParams layoutParams = m31860I.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : f5177a;
            int[] iArr2 = iArr[i5];
            if (z) {
                i2 = m31860I.getLeft();
                i = marginLayoutParams.leftMargin;
            } else {
                i2 = m31860I.getTop();
                i = marginLayoutParams.topMargin;
            }
            iArr2[0] = i2 - i;
            int[] iArr3 = iArr[i5];
            if (z) {
                i3 = m31860I.getRight();
                i4 = marginLayoutParams.rightMargin;
            } else {
                i3 = m31860I.getBottom();
                i4 = marginLayoutParams.bottomMargin;
            }
            iArr3[1] = i3 + i4;
        }
        Arrays.sort(iArr, new C1218a());
        for (int i6 = 1; i6 < m31858J; i6++) {
            if (iArr[i6 - 1][1] != iArr[i6][0]) {
                return false;
            }
        }
        return iArr[0][0] <= 0 && iArr[m31858J - 1][1] >= iArr[0][1] - iArr[0][0];
    }

    /* renamed from: b */
    private boolean m30650b() {
        int m31858J = this.f5178b.m31858J();
        for (int i = 0; i < m31858J; i++) {
            if (m30649c(this.f5178b.m31860I(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private static boolean m30649c(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (m30649c(viewGroup.getChildAt(i))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: d */
    public boolean m30648d() {
        boolean z = true;
        if ((m30651a() && this.f5178b.m31858J() > 1) || !m30650b()) {
            z = false;
        }
        return z;
    }
}
