package androidx.viewpager2.p051a;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Arrays;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.viewpager2.a.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/a.class */
public final class C1100a {

    /* renamed from: a */
    private static final ViewGroup.MarginLayoutParams f3790a = new ViewGroup.MarginLayoutParams(-1, -1);

    /* renamed from: b */
    private LinearLayoutManager f3791b;

    static {
        f3790a.setMargins(0, 0, 0, 0);
    }

    public C1100a(LinearLayoutManager linearLayoutManager) {
        this.f3791b = linearLayoutManager;
    }

    /* renamed from: a */
    private static boolean m18042a(View view) {
        boolean z;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition == null || !layoutTransition.isChangingLayout()) {
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    z = true;
                    if (m18042a(viewGroup.getChildAt(i))) {
                        break;
                    }
                }
            } else {
                z = true;
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    private boolean m18041b() {
        int bottom;
        int i;
        boolean z = true;
        int y = this.f3791b.m18910y();
        if (y != 0) {
            boolean z2 = this.f3791b.m19085h() == 0;
            int[][] iArr = new int[y][2];
            for (int i2 = 0; i2 < y; i2++) {
                View i3 = this.f3791b.m18927i(i2);
                if (i3 == null) {
                    throw new IllegalStateException("null view contained in the view hierarchy");
                }
                ViewGroup.LayoutParams layoutParams = i3.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : f3790a;
                iArr[i2][0] = z2 ? i3.getLeft() - marginLayoutParams.leftMargin : i3.getTop() - marginLayoutParams.topMargin;
                int[] iArr2 = iArr[i2];
                if (z2) {
                    bottom = i3.getRight();
                    i = marginLayoutParams.rightMargin;
                } else {
                    bottom = i3.getBottom();
                    i = marginLayoutParams.bottomMargin;
                }
                iArr2[1] = i + bottom;
            }
            Arrays.sort(iArr, new Comparator<int[]>() { // from class: androidx.viewpager2.a.a.1
                /* renamed from: a */
                public int compare(int[] iArr3, int[] iArr4) {
                    return iArr3[0] - iArr4[0];
                }
            });
            int i4 = 1;
            while (true) {
                if (i4 >= y) {
                    int i5 = iArr[0][1];
                    int i6 = iArr[0][0];
                    if (iArr[0][0] > 0 || iArr[y - 1][1] < i5 - i6) {
                        z = false;
                    }
                } else if (iArr[i4 - 1][1] != iArr[i4][0]) {
                    z = false;
                    break;
                } else {
                    i4++;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    private boolean m18040c() {
        boolean z;
        int y = this.f3791b.m18910y();
        int i = 0;
        while (true) {
            z = false;
            if (i >= y) {
                break;
            } else if (m18042a(this.f3791b.m18927i(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean m18043a() {
        boolean z = true;
        if ((m18041b() && this.f3791b.m18910y() > 1) || !m18040c()) {
            z = false;
        }
        return z;
    }
}
