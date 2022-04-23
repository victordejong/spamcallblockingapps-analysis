package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutParams.class */
public class RecyclerView$LayoutParams extends ViewGroup.MarginLayoutParams {

    /* renamed from: a */
    RecyclerView$a0 f2189a;

    /* renamed from: b */
    final Rect f2190b = new Rect();

    /* renamed from: c */
    boolean f2191c = true;

    /* renamed from: d */
    boolean f2192d = false;

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
    public int m12820a() {
        return this.f2189a.m12789m();
    }

    /* renamed from: b */
    public boolean m12819b() {
        return this.f2189a.m12777y();
    }

    /* renamed from: c */
    public boolean m12818c() {
        return this.f2189a.m12780v();
    }

    /* renamed from: d */
    public boolean m12817d() {
        return this.f2189a.m12782t();
    }
}
