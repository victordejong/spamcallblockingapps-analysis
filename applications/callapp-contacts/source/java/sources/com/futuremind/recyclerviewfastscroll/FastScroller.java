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
import androidx.core.graphics.drawable.C0840a;
import androidx.core.widget.C0959h;
import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.p310a.AbstractC10574c;
import com.futuremind.recyclerviewfastscroll.p310a.C10573b;
import com.hbb20.C16330h;
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/FastScroller.class */
public class FastScroller extends LinearLayout {

    /* renamed from: a */
    RecyclerView f34297a;

    /* renamed from: b */
    View f34298b;

    /* renamed from: c */
    boolean f34299c;

    /* renamed from: d */
    AbstractC10574c f34300d;

    /* renamed from: e */
    private final C10571a f34301e;

    /* renamed from: f */
    private View f34302f;

    /* renamed from: g */
    private TextView f34303g;

    /* renamed from: h */
    private int f34304h;

    /* renamed from: i */
    private int f34305i;

    /* renamed from: j */
    private int f34306j;

    /* renamed from: k */
    private int f34307k;

    /* renamed from: l */
    private int f34308l;

    /* renamed from: m */
    private int f34309m;

    /* renamed from: n */
    private AbstractC10580b f34310n;

    public FastScroller(Context context) {
        this(context, null);
    }

    public FastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public FastScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f34301e = new C10571a(this);
        setClipChildren(false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C16330h.C16338h.fastscroll__fastScroller, C16330h.C16332b.fastscroll__style, 0);
        try {
            this.f34306j = obtainStyledAttributes.getColor(C16330h.C16338h.fastscroll__fastScroller_fastscroll__bubbleColor, -1);
            this.f34305i = obtainStyledAttributes.getColor(C16330h.C16338h.fastscroll__fastScroller_fastscroll__handleColor, -1);
            this.f34307k = obtainStyledAttributes.getResourceId(C16330h.C16338h.fastscroll__fastScroller_fastscroll__bubbleTextAppearance, -1);
            obtainStyledAttributes.recycle();
            this.f34309m = getVisibility();
            setViewProvider(new C10573b());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    static /* synthetic */ float m22649a(FastScroller fastScroller, MotionEvent motionEvent) {
        float f;
        int width;
        int width2;
        if (fastScroller.m22654a()) {
            float rawY = motionEvent.getRawY();
            View view = fastScroller.f34298b;
            int[] iArr = {0, (int) view.getY()};
            ((View) view.getParent()).getLocationInWindow(iArr);
            f = rawY - iArr[1];
            width = fastScroller.getHeight();
            width2 = fastScroller.f34298b.getHeight();
        } else {
            float rawX = motionEvent.getRawX();
            View view2 = fastScroller.f34298b;
            int[] iArr2 = {(int) view2.getX(), 0};
            ((View) view2.getParent()).getLocationInWindow(iArr2);
            f = rawX - iArr2[0];
            width = fastScroller.getWidth();
            width2 = fastScroller.f34298b.getWidth();
        }
        return f / (width - width2);
    }

    /* renamed from: a */
    private static void m22652a(View view, int i) {
        Drawable m44345f = C0840a.m44345f(view.getBackground());
        if (m44345f == null) {
            return;
        }
        C0840a.m44357a(m44345f.mutate(), i);
        C10581c.m22625a(view, m44345f);
    }

    /* renamed from: a */
    static /* synthetic */ void m22650a(FastScroller fastScroller, float f) {
        TextView textView;
        RecyclerView recyclerView = fastScroller.f34297a;
        if (recyclerView != null) {
            int itemCount = recyclerView.getAdapter().getItemCount();
            int m22626a = (int) C10581c.m22626a(itemCount - 1, (int) (f * itemCount));
            fastScroller.f34297a.m40464b(m22626a);
            AbstractC10580b abstractC10580b = fastScroller.f34310n;
            if (abstractC10580b == null || (textView = fastScroller.f34303g) == null) {
                return;
            }
            textView.setText(abstractC10580b.mo7394a(m22626a));
        }
    }

    /* renamed from: b */
    public void m22647b() {
        if (this.f34297a.getAdapter() == null || this.f34297a.getAdapter().getItemCount() == 0 || this.f34297a.getChildAt(0) == null || m22645c() || this.f34309m != 0) {
            super.setVisibility(4);
        } else {
            super.setVisibility(0);
        }
    }

    /* renamed from: c */
    private boolean m22645c() {
        return m22654a() ? this.f34297a.getChildAt(0).getHeight() * this.f34297a.getAdapter().getItemCount() <= this.f34297a.getHeight() : this.f34297a.getChildAt(0).getWidth() * this.f34297a.getAdapter().getItemCount() <= this.f34297a.getWidth();
    }

    /* renamed from: a */
    public final void m22653a(float f) {
        if (m22654a()) {
            this.f34302f.setY(C10581c.m22626a(getHeight() - this.f34302f.getHeight(), ((getHeight() - this.f34298b.getHeight()) * f) + this.f34304h));
            this.f34298b.setY(C10581c.m22626a(getHeight() - this.f34298b.getHeight(), f * (getHeight() - this.f34298b.getHeight())));
            return;
        }
        this.f34302f.setX(C10581c.m22626a(getWidth() - this.f34302f.getWidth(), ((getWidth() - this.f34298b.getWidth()) * f) + this.f34304h));
        this.f34298b.setX(C10581c.m22626a(getWidth() - this.f34298b.getWidth(), f * (getWidth() - this.f34298b.getWidth())));
    }

    /* renamed from: a */
    public final boolean m22654a() {
        return this.f34308l == 1;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f34298b.setOnTouchListener(new View.OnTouchListener() { // from class: com.futuremind.recyclerviewfastscroll.FastScroller.2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                FastScroller.this.requestDisallowInterceptTouchEvent(true);
                if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                    if (FastScroller.this.f34310n != null && motionEvent.getAction() == 0) {
                        AbstractC10574c abstractC10574c = FastScroller.this.f34300d;
                        if (abstractC10574c.m22636e() != null) {
                            abstractC10574c.m22636e().mo22634a();
                        }
                        if (abstractC10574c.m22635f() != null) {
                            abstractC10574c.m22635f().mo22634a();
                        }
                    }
                    FastScroller.this.f34299c = true;
                    float m22649a = FastScroller.m22649a(FastScroller.this, motionEvent);
                    FastScroller.this.m22653a(m22649a);
                    FastScroller.m22650a(FastScroller.this, m22649a);
                    return true;
                } else if (motionEvent.getAction() != 1) {
                    return false;
                } else {
                    FastScroller.this.f34299c = false;
                    if (FastScroller.this.f34310n == null) {
                        return true;
                    }
                    AbstractC10574c abstractC10574c2 = FastScroller.this.f34300d;
                    if (abstractC10574c2.m22636e() != null) {
                        abstractC10574c2.m22636e().mo22633b();
                    }
                    if (abstractC10574c2.m22635f() == null) {
                        return true;
                    }
                    abstractC10574c2.m22635f().mo22633b();
                    return true;
                }
            }
        });
        this.f34304h = this.f34300d.mo22638c();
        int i5 = this.f34306j;
        if (i5 != -1) {
            m22652a(this.f34303g, i5);
        }
        int i6 = this.f34305i;
        if (i6 != -1) {
            m22652a(this.f34298b, i6);
        }
        int i7 = this.f34307k;
        if (i7 != -1) {
            C0959h.m43965a(this.f34303g, i7);
        }
        if (!isInEditMode()) {
            this.f34301e.m22642a(this.f34297a);
        }
    }

    public void setBubbleColor(int i) {
        this.f34306j = i;
        invalidate();
    }

    public void setBubbleTextAppearance(int i) {
        this.f34307k = i;
        invalidate();
    }

    public void setHandleColor(int i) {
        this.f34305i = i;
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        this.f34308l = i;
        super.setOrientation(i == 0 ? 1 : 0);
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        this.f34297a = recyclerView;
        if (recyclerView.getAdapter() instanceof AbstractC10580b) {
            this.f34310n = (AbstractC10580b) recyclerView.getAdapter();
        }
        recyclerView.m40478a(this.f34301e);
        m22647b();
        recyclerView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.futuremind.recyclerviewfastscroll.FastScroller.1
            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public final void onChildViewAdded(View view, View view2) {
                FastScroller.this.m22647b();
            }

            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public final void onChildViewRemoved(View view, View view2) {
                FastScroller.this.m22647b();
            }
        });
    }

    public void setViewProvider(AbstractC10574c abstractC10574c) {
        removeAllViews();
        this.f34300d = abstractC10574c;
        abstractC10574c.f34321c = this;
        this.f34302f = abstractC10574c.mo22640a(this);
        this.f34298b = abstractC10574c.mo22641a();
        this.f34303g = abstractC10574c.mo22639b();
        addView(this.f34302f);
        addView(this.f34298b);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        this.f34309m = i;
        m22647b();
    }
}
