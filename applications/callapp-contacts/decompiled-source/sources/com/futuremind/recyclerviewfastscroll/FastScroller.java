package com.futuremind.recyclerviewfastscroll;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.drawable.a;
import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.a.b;
import com.futuremind.recyclerviewfastscroll.a.c;
import com.hbb20.h;
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/FastScroller.class */
public class FastScroller extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f20236a;

    /* renamed from: b  reason: collision with root package name */
    View f20237b;

    /* renamed from: c  reason: collision with root package name */
    boolean f20238c;

    /* renamed from: d  reason: collision with root package name */
    c f20239d;
    private final a e;
    private View f;
    private TextView g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private b n;

    public FastScroller(Context context) {
        this(context, null);
    }

    public FastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public FastScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new a(this);
        setClipChildren(false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.C0530h.fastscroll__fastScroller, h.b.fastscroll__style, 0);
        try {
            this.j = obtainStyledAttributes.getColor(h.C0530h.fastscroll__fastScroller_fastscroll__bubbleColor, -1);
            this.i = obtainStyledAttributes.getColor(h.C0530h.fastscroll__fastScroller_fastscroll__handleColor, -1);
            this.k = obtainStyledAttributes.getResourceId(h.C0530h.fastscroll__fastScroller_fastscroll__bubbleTextAppearance, -1);
            obtainStyledAttributes.recycle();
            this.m = getVisibility();
            setViewProvider(new b());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    static /* synthetic */ float a(FastScroller fastScroller, MotionEvent motionEvent) {
        float f;
        int width;
        int width2;
        if (fastScroller.a()) {
            float rawY = motionEvent.getRawY();
            View view = fastScroller.f20237b;
            int[] iArr = {0, (int) view.getY()};
            ((View) view.getParent()).getLocationInWindow(iArr);
            f = rawY - iArr[1];
            width = fastScroller.getHeight();
            width2 = fastScroller.f20237b.getHeight();
        } else {
            float rawX = motionEvent.getRawX();
            View view2 = fastScroller.f20237b;
            int[] iArr2 = {(int) view2.getX(), 0};
            ((View) view2.getParent()).getLocationInWindow(iArr2);
            f = rawX - iArr2[0];
            width = fastScroller.getWidth();
            width2 = fastScroller.f20237b.getWidth();
        }
        return f / (width - width2);
    }

    private static void a(View view, int i) {
        Drawable f = a.f(view.getBackground());
        if (f != null) {
            a.a(f.mutate(), i);
            c.a(view, f);
        }
    }

    static /* synthetic */ void a(FastScroller fastScroller, float f) {
        TextView textView;
        RecyclerView recyclerView = fastScroller.f20236a;
        if (recyclerView != null) {
            int itemCount = recyclerView.getAdapter().getItemCount();
            int a2 = (int) c.a(itemCount - 1, (int) (f * itemCount));
            fastScroller.f20236a.b(a2);
            b bVar = fastScroller.n;
            if (bVar != null && (textView = fastScroller.g) != null) {
                textView.setText(bVar.a(a2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f20236a.getAdapter() == null || this.f20236a.getAdapter().getItemCount() == 0 || this.f20236a.getChildAt(0) == null || c() || this.m != 0) {
            super.setVisibility(4);
        } else {
            super.setVisibility(0);
        }
    }

    private boolean c() {
        return a() ? this.f20236a.getChildAt(0).getHeight() * this.f20236a.getAdapter().getItemCount() <= this.f20236a.getHeight() : this.f20236a.getChildAt(0).getWidth() * this.f20236a.getAdapter().getItemCount() <= this.f20236a.getWidth();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f) {
        if (a()) {
            this.f.setY(c.a(getHeight() - this.f.getHeight(), ((getHeight() - this.f20237b.getHeight()) * f) + this.h));
            this.f20237b.setY(c.a(getHeight() - this.f20237b.getHeight(), f * (getHeight() - this.f20237b.getHeight())));
            return;
        }
        this.f.setX(c.a(getWidth() - this.f.getWidth(), ((getWidth() - this.f20237b.getWidth()) * f) + this.h));
        this.f20237b.setX(c.a(getWidth() - this.f20237b.getWidth(), f * (getWidth() - this.f20237b.getWidth())));
    }

    public final boolean a() {
        return this.l == 1;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f20237b.setOnTouchListener(new View.OnTouchListener() { // from class: com.futuremind.recyclerviewfastscroll.FastScroller.2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                FastScroller.this.requestDisallowInterceptTouchEvent(true);
                if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                    if (FastScroller.this.n != null && motionEvent.getAction() == 0) {
                        c cVar = FastScroller.this.f20239d;
                        if (cVar.e() != null) {
                            cVar.e().a();
                        }
                        if (cVar.f() != null) {
                            cVar.f().a();
                        }
                    }
                    FastScroller.this.f20238c = true;
                    float a2 = FastScroller.a(FastScroller.this, motionEvent);
                    FastScroller.this.a(a2);
                    FastScroller.a(FastScroller.this, a2);
                    return true;
                } else if (motionEvent.getAction() != 1) {
                    return false;
                } else {
                    FastScroller.this.f20238c = false;
                    if (FastScroller.this.n == null) {
                        return true;
                    }
                    c cVar2 = FastScroller.this.f20239d;
                    if (cVar2.e() != null) {
                        cVar2.e().b();
                    }
                    if (cVar2.f() == null) {
                        return true;
                    }
                    cVar2.f().b();
                    return true;
                }
            }
        });
        this.h = this.f20239d.c();
        int i5 = this.j;
        if (i5 != -1) {
            a(this.g, i5);
        }
        int i6 = this.i;
        if (i6 != -1) {
            a(this.f20237b, i6);
        }
        int i7 = this.k;
        if (i7 != -1) {
            androidx.core.widget.h.a(this.g, i7);
        }
        if (!isInEditMode()) {
            this.e.a(this.f20236a);
        }
    }

    public void setBubbleColor(int i) {
        this.j = i;
        invalidate();
    }

    public void setBubbleTextAppearance(int i) {
        this.k = i;
        invalidate();
    }

    public void setHandleColor(int i) {
        this.i = i;
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        this.l = i;
        super.setOrientation(i == 0 ? 1 : 0);
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        this.f20236a = recyclerView;
        if (recyclerView.getAdapter() instanceof b) {
            this.n = (b) recyclerView.getAdapter();
        }
        recyclerView.a(this.e);
        b();
        recyclerView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.futuremind.recyclerviewfastscroll.FastScroller.1
            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public final void onChildViewAdded(View view, View view2) {
                FastScroller.this.b();
            }

            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public final void onChildViewRemoved(View view, View view2) {
                FastScroller.this.b();
            }
        });
    }

    public void setViewProvider(c cVar) {
        removeAllViews();
        this.f20239d = cVar;
        cVar.f20250c = this;
        this.f = cVar.a(this);
        this.f20237b = cVar.a();
        this.g = cVar.b();
        addView(this.f);
        addView(this.f20237b);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        this.m = i;
        b();
    }
}
