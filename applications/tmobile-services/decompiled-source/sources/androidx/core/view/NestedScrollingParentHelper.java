package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/core/view/NestedScrollingParentHelper.class */
public class NestedScrollingParentHelper {

    /* renamed from: a */
    private int f3269a;

    /* renamed from: b */
    private int f3270b;

    public NestedScrollingParentHelper(@NonNull ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public int m19254a() {
        return this.f3269a | this.f3270b;
    }

    /* renamed from: b */
    public void m19253b(@NonNull View view, @NonNull View view2, int i) {
        m19252c(view, view2, i, 0);
    }

    /* renamed from: c */
    public void m19252c(@NonNull View view, @NonNull View view2, int i, int i2) {
        if (i2 == 1) {
            this.f3270b = i;
        } else {
            this.f3269a = i;
        }
    }

    /* renamed from: d */
    public void m19251d(@NonNull View view) {
        m19250e(view, 0);
    }

    /* renamed from: e */
    public void m19250e(@NonNull View view, int i) {
        if (i == 1) {
            this.f3270b = 0;
        } else {
            this.f3269a = 0;
        }
    }
}
