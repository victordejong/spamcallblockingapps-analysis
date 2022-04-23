package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Arrays;
import java.util.Comparator;
/* renamed from: androidx.viewpager2.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/a.class */
final class C0540a {

    /* renamed from: b */
    private static final ViewGroup.MarginLayoutParams f2906b;

    /* renamed from: a */
    private LinearLayoutManager f2907a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager2.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/a$a.class */
    public class C0541a implements Comparator<int[]> {
        C0541a(C0540a aVar) {
        }

        /* renamed from: a */
        public int compare(int[] iArr, int[] iArr2) {
            return iArr[0] - iArr2[0];
        }
    }

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f2906b = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    C0540a(LinearLayoutManager linearLayoutManager) {
        this.f2907a = linearLayoutManager;
    }

    /* renamed from: a */
    private boolean m11816a() {
        int i;
        int i2;
        int i3;
        int i4;
        int J = this.f2907a.m12711J();
        if (J == 0) {
            return true;
        }
        boolean z = this.f2907a.l2() == 0;
        int[][] iArr = new int[J][2];
        for (int i5 = 0; i5 < J; i5++) {
            View I = this.f2907a.m12714I(i5);
            if (I != null) {
                ViewGroup.LayoutParams layoutParams = I.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : f2906b;
                int[] iArr2 = iArr[i5];
                if (z) {
                    i2 = I.getLeft();
                    i = marginLayoutParams.leftMargin;
                } else {
                    i2 = I.getTop();
                    i = marginLayoutParams.topMargin;
                }
                iArr2[0] = i2 - i;
                int[] iArr3 = iArr[i5];
                if (z) {
                    i3 = I.getRight();
                    i4 = marginLayoutParams.rightMargin;
                } else {
                    i3 = I.getBottom();
                    i4 = marginLayoutParams.bottomMargin;
                }
                iArr3[1] = i3 + i4;
            } else {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
        }
        Arrays.sort(iArr, new C0541a(this));
        for (int i6 = 1; i6 < J; i6++) {
            if (iArr[i6 - 1][1] != iArr[i6][0]) {
                return false;
            }
        }
        return iArr[0][0] <= 0 && iArr[J - 1][1] >= iArr[0][1] - iArr[0][0];
    }

    /* renamed from: b */
    private boolean m11815b() {
        int J = this.f2907a.m12711J();
        for (int i = 0; i < J; i++) {
            if (m11814c(this.f2907a.m12714I(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private static boolean m11814c(View view) {
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
        if (layoutTransition != null && layoutTransition.isChangingLayout()) {
            return true;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m11814c(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    boolean m11813d() {
        boolean z = true;
        if ((m11816a() && this.f2907a.m12711J() > 1) || !m11815b()) {
            z = false;
        }
        return z;
    }
}
