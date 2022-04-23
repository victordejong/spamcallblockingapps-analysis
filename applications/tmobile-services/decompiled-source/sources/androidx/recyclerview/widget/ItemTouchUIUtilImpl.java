package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.os.Build;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.C0445R;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ItemTouchUIUtilImpl.class */
public class ItemTouchUIUtilImpl implements ItemTouchUIUtil {

    /* renamed from: a */
    static final ItemTouchUIUtil f4647a = new ItemTouchUIUtilImpl();

    ItemTouchUIUtilImpl() {
    }

    /* renamed from: e */
    private static float m17657e(RecyclerView recyclerView, View view) {
        int childCount = recyclerView.getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (childAt == view) {
                f = f;
            } else {
                float v = ViewCompat.m19168v(childAt);
                f = f;
                if (v > f) {
                    f = v;
                }
            }
        }
        return f;
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    /* renamed from: a */
    public void mo17661a(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            Object tag = view.getTag(C0445R.C0448id.item_touch_helper_previous_elevation);
            if (tag instanceof Float) {
                ViewCompat.m19169u0(view, ((Float) tag).floatValue());
            }
            view.setTag(C0445R.C0448id.item_touch_helper_previous_elevation, null);
        }
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    /* renamed from: b */
    public void mo17660b(View view) {
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    /* renamed from: c */
    public void mo17659c(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    /* renamed from: d */
    public void mo17658d(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
        if (Build.VERSION.SDK_INT >= 21 && z && view.getTag(C0445R.C0448id.item_touch_helper_previous_elevation) == null) {
            float v = ViewCompat.m19168v(view);
            ViewCompat.m19169u0(view, m17657e(recyclerView, view) + 1.0f);
            view.setTag(C0445R.C0448id.item_touch_helper_previous_elevation, Float.valueOf(v));
        }
        view.setTranslationX(f);
        view.setTranslationY(f2);
    }
}
