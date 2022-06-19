package com.bumptech.glide.p073f.p074a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.p073f.AbstractC1414b;
import com.bumptech.glide.p077h.C1456i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@Deprecated
/* renamed from: com.bumptech.glide.f.a.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a/i.class */
public abstract class AbstractC1411i<T extends View, Z> extends AbstractC1403a<Z> {

    /* renamed from: b */
    private static boolean f4635b;

    /* renamed from: c */
    private static Integer f4636c;

    /* renamed from: a */
    protected final T f4637a;

    /* renamed from: d */
    private final C1412a f4638d;

    /* renamed from: e */
    private View.OnAttachStateChangeListener f4639e;

    /* renamed from: f */
    private boolean f4640f;

    /* renamed from: g */
    private boolean f4641g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.f.a.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a/i$a.class */
    public static final class C1412a {

        /* renamed from: a */
        static Integer f4642a;

        /* renamed from: b */
        boolean f4643b;

        /* renamed from: c */
        private final View f4644c;

        /* renamed from: d */
        private final List<AbstractC1409g> f4645d = new ArrayList();

        /* renamed from: e */
        private ViewTreeObserver$OnPreDrawListenerC1413a f4646e;

        /* renamed from: com.bumptech.glide.f.a.i$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a/i$a$a.class */
        public static final class ViewTreeObserver$OnPreDrawListenerC1413a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a */
            private final WeakReference<C1412a> f4647a;

            ViewTreeObserver$OnPreDrawListenerC1413a(C1412a c1412a) {
                this.f4647a = new WeakReference<>(c1412a);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                C1412a c1412a = this.f4647a.get();
                if (c1412a != null) {
                    c1412a.m17176a();
                    return true;
                }
                return true;
            }
        }

        C1412a(View view) {
            this.f4644c = view;
        }

        /* renamed from: a */
        private int m17173a(int i, int i2, int i3) {
            int i4;
            int i5 = i2 - i3;
            if (i5 > 0) {
                i4 = i5;
            } else if (!this.f4643b || !this.f4644c.isLayoutRequested()) {
                int i6 = i - i3;
                i4 = i6;
                if (i6 <= 0) {
                    if (this.f4644c.isLayoutRequested() || i2 != -2) {
                        i4 = 0;
                    } else {
                        if (Log.isLoggable("ViewTarget", 4)) {
                            Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
                        }
                        i4 = m17172a(this.f4644c.getContext());
                    }
                }
            } else {
                i4 = 0;
            }
            return i4;
        }

        /* renamed from: a */
        private static int m17172a(Context context) {
            if (f4642a == null) {
                Display defaultDisplay = ((WindowManager) C1456i.m16989a((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f4642a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f4642a.intValue();
        }

        /* renamed from: a */
        private void m17174a(int i, int i2) {
            Iterator it = new ArrayList(this.f4645d).iterator();
            while (it.hasNext()) {
                ((AbstractC1409g) it.next()).mo17100a(i, i2);
            }
        }

        /* renamed from: a */
        private boolean m17175a(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        /* renamed from: b */
        private boolean m17169b(int i, int i2) {
            return m17175a(i) && m17175a(i2);
        }

        /* renamed from: c */
        private int m17167c() {
            int paddingTop = this.f4644c.getPaddingTop();
            int paddingBottom = this.f4644c.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f4644c.getLayoutParams();
            return m17173a(this.f4644c.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom + paddingTop);
        }

        /* renamed from: d */
        private int m17166d() {
            int paddingLeft = this.f4644c.getPaddingLeft();
            int paddingRight = this.f4644c.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f4644c.getLayoutParams();
            return m17173a(this.f4644c.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight + paddingLeft);
        }

        /* renamed from: a */
        void m17176a() {
            if (this.f4645d.isEmpty()) {
                return;
            }
            int m17166d = m17166d();
            int m17167c = m17167c();
            if (!m17169b(m17166d, m17167c)) {
                return;
            }
            m17174a(m17166d, m17167c);
            m17170b();
        }

        /* renamed from: a */
        void m17171a(AbstractC1409g abstractC1409g) {
            int m17166d = m17166d();
            int m17167c = m17167c();
            if (m17169b(m17166d, m17167c)) {
                abstractC1409g.mo17100a(m17166d, m17167c);
                return;
            }
            if (!this.f4645d.contains(abstractC1409g)) {
                this.f4645d.add(abstractC1409g);
            }
            if (this.f4646e != null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = this.f4644c.getViewTreeObserver();
            this.f4646e = new ViewTreeObserver$OnPreDrawListenerC1413a(this);
            viewTreeObserver.addOnPreDrawListener(this.f4646e);
        }

        /* renamed from: b */
        void m17170b() {
            ViewTreeObserver viewTreeObserver = this.f4644c.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f4646e);
            }
            this.f4646e = null;
            this.f4645d.clear();
        }

        /* renamed from: b */
        void m17168b(AbstractC1409g abstractC1409g) {
            this.f4645d.remove(abstractC1409g);
        }
    }

    public AbstractC1411i(T t) {
        this.f4637a = (T) C1456i.m16989a(t);
        this.f4638d = new C1412a(t);
    }

    /* renamed from: a */
    private void m17186a() {
        if (this.f4639e == null || this.f4641g) {
            return;
        }
        this.f4637a.addOnAttachStateChangeListener(this.f4639e);
        this.f4641g = true;
    }

    /* renamed from: a */
    private void m17182a(Object obj) {
        if (f4636c != null) {
            this.f4637a.setTag(f4636c.intValue(), obj);
            return;
        }
        f4635b = true;
        this.f4637a.setTag(obj);
    }

    /* renamed from: f */
    private void m17178f() {
        if (this.f4639e == null || !this.f4641g) {
            return;
        }
        this.f4637a.removeOnAttachStateChangeListener(this.f4639e);
        this.f4641g = false;
    }

    /* renamed from: g */
    private Object m17177g() {
        return f4636c == null ? this.f4637a.getTag() : this.f4637a.getTag(f4636c.intValue());
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1403a, com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: a */
    public void mo17185a(Drawable drawable) {
        super.mo17185a(drawable);
        this.f4638d.m17170b();
        if (!this.f4640f) {
            m17178f();
        }
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: a */
    public void mo17184a(AbstractC1409g abstractC1409g) {
        this.f4638d.m17171a(abstractC1409g);
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1403a, com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: a */
    public void mo17183a(AbstractC1414b abstractC1414b) {
        m17182a((Object) abstractC1414b);
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1403a, com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: b */
    public AbstractC1414b mo17181b() {
        AbstractC1414b abstractC1414b;
        Object m17177g = m17177g();
        if (m17177g == null) {
            abstractC1414b = null;
        } else if (!(m17177g instanceof AbstractC1414b)) {
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        } else {
            abstractC1414b = (AbstractC1414b) m17177g;
        }
        return abstractC1414b;
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1403a, com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: b */
    public void mo17180b(Drawable drawable) {
        super.mo17180b(drawable);
        m17186a();
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1410h
    /* renamed from: b */
    public void mo17179b(AbstractC1409g abstractC1409g) {
        this.f4638d.m17168b(abstractC1409g);
    }

    public String toString() {
        return "Target for: " + this.f4637a;
    }
}
