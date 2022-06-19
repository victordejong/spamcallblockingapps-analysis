package hani.momanii.supernova_emoji_library.Actions;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout.class */
public class ExSoftInputLayout extends ViewGroup {

    /* renamed from: b */
    View f12960b;

    /* renamed from: c */
    View f12961c;

    /* renamed from: d */
    int f12962d;

    /* renamed from: e */
    int f12963e;

    /* renamed from: f */
    boolean f12964f = false;

    /* renamed from: g */
    boolean f12965g = false;

    /* renamed from: h */
    int f12966h = 0;

    /* renamed from: i */
    HashSet<AbstractC3145a> f12967i = new HashSet<>();

    /* renamed from: j */
    private boolean f12968j = false;

    /* renamed from: hani.momanii.supernova_emoji_library.Actions.ExSoftInputLayout$a */
    /* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Actions/ExSoftInputLayout$a.class */
    public interface AbstractC3145a {
        /* renamed from: a */
        void m45a(boolean z, boolean z2, int i, int i2);
    }

    public ExSoftInputLayout(Context context) {
        super(context);
    }

    public ExSoftInputLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ExSoftInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    private void m47a(boolean z, boolean z2, int i, int i2) {
        Iterator<AbstractC3145a> it = this.f12967i.iterator();
        while (it.hasNext()) {
            it.next().m45a(z, z2, i, i2);
        }
    }

    /* renamed from: b */
    private void m46b(View view) {
        ((Activity) getContext()).getWindow().findViewById(16908290);
        ViewParent parent = view.getParent();
        if (parent == null || !(parent instanceof View)) {
            return;
        }
        View view2 = (View) parent;
        if (view2.getPaddingBottom() == 0) {
            m46b(view2);
            return;
        }
        Log.e("Robi", "test: " + parent.getClass().getSimpleName());
    }

    private int getShowPaddingBottom() {
        return this.f12965g ? this.f12963e : super.getPaddingBottom();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        Log.w("Robi", "fitSystemWindows: ");
        int paddingBottom = getPaddingBottom();
        boolean fitSystemWindows = super.fitSystemWindows(rect);
        int paddingBottom2 = getPaddingBottom();
        boolean z = true;
        if (paddingBottom2 > 0) {
            this.f12962d = paddingBottom2;
            this.f12968j = true;
        } else {
            this.f12968j = false;
        }
        int i = this.f12963e;
        if (i != paddingBottom2 && (i != paddingBottom || this.f12968j || !this.f12965g)) {
            z = false;
        }
        if (this.f12965g) {
            setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), this.f12963e);
        } else if (this.f12968j) {
            this.f12964f = false;
        }
        this.f12965g = false;
        if (z) {
            m47a(this.f12964f, this.f12968j, paddingBottom, paddingBottom2);
        }
        return fitSystemWindows;
    }

    public int getKeyboardHeight() {
        return this.f12962d;
    }

    public int getShowKeyboardHeight() {
        return this.f12963e;
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        Log.w("Robi", "onApplyWindowInsets: ");
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getChildCount() == 2) {
            this.f12960b = getChildAt(0);
            this.f12961c = getChildAt(1);
            setFitsSystemWindows(true);
            setClipToPadding(false);
            if (this.f12962d != 0) {
                return;
            }
            this.f12962d = (int) (getResources().getDisplayMetrics().density * 200.0f);
            return;
        }
        throw new IllegalArgumentException("必须含有2个子View.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int showPaddingBottom = getShowPaddingBottom();
        int i5 = this.f12966h;
        if ((i5 != 0 || showPaddingBottom != 0) && i5 != showPaddingBottom) {
            this.f12966h = showPaddingBottom;
            m47a(this.f12964f, this.f12968j, i5, showPaddingBottom);
        }
        int i6 = i4 - showPaddingBottom;
        this.f12960b.layout(i, i2, i3, i6);
        this.f12961c.layout(i, i6, i3, i4);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        this.f12960b.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 - getShowPaddingBottom(), 1073741824));
        this.f12961c.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(getShowPaddingBottom(), 1073741824));
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        Log.w("Robi", "onSizeChanged: " + i + " " + i2 + " " + i3 + " " + i4);
        super.onSizeChanged(i, i2, i3, i4);
        m46b(this);
    }
}
