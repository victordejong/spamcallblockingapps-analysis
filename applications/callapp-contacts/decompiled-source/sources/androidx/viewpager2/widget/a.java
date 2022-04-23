package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ViewGroup.MarginLayoutParams f5935a;

    /* renamed from: b  reason: collision with root package name */
    private LinearLayoutManager f5936b;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f5935a = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(LinearLayoutManager linearLayoutManager) {
        this.f5936b = linearLayoutManager;
    }

    private static boolean a(View view) {
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
            if (a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    private boolean b() {
        int childCount = this.f5936b.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (a(this.f5936b.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x011a, code lost:
        if (r0[r0 - 1][1] >= (r0 - r0)) goto L_0x0122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011d, code lost:
        r7 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.a.a():boolean");
    }
}
