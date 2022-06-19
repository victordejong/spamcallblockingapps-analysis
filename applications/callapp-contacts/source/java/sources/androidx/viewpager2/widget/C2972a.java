package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
/* renamed from: androidx.viewpager2.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/a.class */
public final class C2972a {

    /* renamed from: a */
    private static final ViewGroup.MarginLayoutParams f11084a;

    /* renamed from: b */
    private LinearLayoutManager f11085b;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f11084a = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    public C2972a(LinearLayoutManager linearLayoutManager) {
        this.f11085b = linearLayoutManager;
    }

    /* renamed from: a */
    private static boolean m39537a(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (m39537a(viewGroup.getChildAt(i))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: b */
    private boolean m39536b() {
        int childCount = this.f11085b.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m39537a(this.f11085b.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x011a, code lost:
        if (r0[r0 - 1][1] >= (r0 - r0)) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011d, code lost:
        r7 = false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m39538a() {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.C2972a.m39538a():boolean");
    }
}
