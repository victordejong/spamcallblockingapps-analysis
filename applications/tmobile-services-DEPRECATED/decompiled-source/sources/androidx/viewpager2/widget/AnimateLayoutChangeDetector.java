package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Arrays;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/AnimateLayoutChangeDetector.class */
public final class AnimateLayoutChangeDetector {

    /* renamed from: b */
    private static final ViewGroup.MarginLayoutParams f5606b;

    /* renamed from: a */
    private LinearLayoutManager f5607a;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f5606b = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnimateLayoutChangeDetector(@NonNull LinearLayoutManager linearLayoutManager) {
        this.f5607a = linearLayoutManager;
    }

    /* renamed from: a */
    private boolean m16452a() {
        int i;
        int i2;
        int i3;
        int i4;
        int K = this.f5607a.m17441K();
        if (K == 0) {
            return true;
        }
        boolean z = this.f5607a.m17608r2() == 0;
        int[][] iArr = new int[K][2];
        for (int i5 = 0; i5 < K; i5++) {
            View J = this.f5607a.m17442J(i5);
            if (J != null) {
                ViewGroup.LayoutParams layoutParams = J.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : f5606b;
                int[] iArr2 = iArr[i5];
                if (z) {
                    i2 = J.getLeft();
                    i = marginLayoutParams.leftMargin;
                } else {
                    i2 = J.getTop();
                    i = marginLayoutParams.topMargin;
                }
                iArr2[0] = i2 - i;
                int[] iArr3 = iArr[i5];
                if (z) {
                    i3 = J.getRight();
                    i4 = marginLayoutParams.rightMargin;
                } else {
                    i3 = J.getBottom();
                    i4 = marginLayoutParams.bottomMargin;
                }
                iArr3[1] = i3 + i4;
            } else {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
        }
        Arrays.sort(iArr, new Comparator<int[]>(this) { // from class: androidx.viewpager2.widget.AnimateLayoutChangeDetector.1
            /* renamed from: a */
            public int compare(int[] iArr4, int[] iArr5) {
                return iArr4[0] - iArr5[0];
            }
        });
        for (int i6 = 1; i6 < K; i6++) {
            if (iArr[i6 - 1][1] != iArr[i6][0]) {
                return false;
            }
        }
        return iArr[0][0] <= 0 && iArr[K - 1][1] >= iArr[0][1] - iArr[0][0];
    }

    /* renamed from: b */
    private boolean m16451b() {
        int K = this.f5607a.m17441K();
        for (int i = 0; i < K; i++) {
            if (m16450c(this.f5607a.m17442J(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private static boolean m16450c(View view) {
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
            if (m16450c(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m16449d() {
        boolean z = true;
        if ((m16452a() && this.f5607a.m17441K() > 1) || !m16451b()) {
            z = false;
        }
        return z;
    }
}
