package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutParams.class */
public class RecyclerView$LayoutParams extends ViewGroup.MarginLayoutParams {

    /* renamed from: a */
    public RecyclerView$b0 f1336a;

    /* renamed from: b */
    public final Rect f1337b = new Rect();

    /* renamed from: c */
    public boolean f1338c = true;

    /* renamed from: d */
    public boolean f1339d = false;

    public RecyclerView$LayoutParams(int i, int i2) {
        super(i, i2);
    }

    public RecyclerView$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RecyclerView$LayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
    }

    public RecyclerView$LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
    }

    public RecyclerView$LayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        super((ViewGroup.LayoutParams) recyclerView$LayoutParams);
    }

    /* renamed from: a */
    public int m6228a() {
        return this.f1336a.getLayoutPosition();
    }

    /* renamed from: b */
    public boolean m6227b() {
        return this.f1336a.isUpdated();
    }

    /* renamed from: c */
    public boolean m6226c() {
        return this.f1336a.isRemoved();
    }

    /* renamed from: d */
    public boolean m6225d() {
        return this.f1336a.isInvalid();
    }
}
