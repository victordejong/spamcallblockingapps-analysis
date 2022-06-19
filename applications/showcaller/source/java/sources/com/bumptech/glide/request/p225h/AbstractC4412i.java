package com.bumptech.glide.request.p225h;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.C3968g;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.request.AbstractC4399c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@Deprecated
/* renamed from: com.bumptech.glide.request.h.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/i.class */
public abstract class AbstractC4412i<T extends View, Z> extends AbstractC4404a<Z> {

    /* renamed from: d */
    private static boolean f13486d;

    /* renamed from: e */
    private static int f13487e = C3968g.glide_custom_view_target_tag;

    /* renamed from: f */
    protected final T f13488f;

    /* renamed from: g */
    private final C4413a f13489g;

    /* renamed from: h */
    private View.OnAttachStateChangeListener f13490h;

    /* renamed from: i */
    private boolean f13491i;

    /* renamed from: j */
    private boolean f13492j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.request.h.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/i$a.class */
    public static final class C4413a {

        /* renamed from: a */
        static Integer f13493a;

        /* renamed from: b */
        private final View f13494b;

        /* renamed from: c */
        private final List<AbstractC4410g> f13495c = new ArrayList();

        /* renamed from: d */
        boolean f13496d;

        /* renamed from: e */
        private ViewTreeObserver$OnPreDrawListenerC4414a f13497e;

        /* renamed from: com.bumptech.glide.request.h.i$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/h/i$a$a.class */
        public static final class ViewTreeObserver$OnPreDrawListenerC4414a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: d */
            private final WeakReference<C4413a> f13498d;

            ViewTreeObserver$OnPreDrawListenerC4414a(C4413a c4413a) {
                this.f13498d = new WeakReference<>(c4413a);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                C4413a c4413a = this.f13498d.get();
                if (c4413a != null) {
                    c4413a.m22548a();
                    return true;
                }
                return true;
            }
        }

        C4413a(View view) {
            this.f13494b = view;
        }

        /* renamed from: c */
        private static int m22546c(Context context) {
            if (f13493a == null) {
                Display defaultDisplay = ((WindowManager) C4382j.m22719d((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f13493a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f13493a.intValue();
        }

        /* renamed from: e */
        private int m22544e(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f13496d && this.f13494b.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f13494b.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            if (Log.isLoggable("ViewTarget", 4)) {
                Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return m22546c(this.f13494b.getContext());
        }

        /* renamed from: f */
        private int m22543f() {
            int paddingTop = this.f13494b.getPaddingTop();
            int paddingBottom = this.f13494b.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f13494b.getLayoutParams();
            return m22544e(this.f13494b.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop + paddingBottom);
        }

        /* renamed from: g */
        private int m22542g() {
            int paddingLeft = this.f13494b.getPaddingLeft();
            int paddingRight = this.f13494b.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f13494b.getLayoutParams();
            return m22544e(this.f13494b.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft + paddingRight);
        }

        /* renamed from: h */
        private boolean m22541h(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        /* renamed from: i */
        private boolean m22540i(int i, int i2) {
            return m22541h(i) && m22541h(i2);
        }

        /* renamed from: j */
        private void m22539j(int i, int i2) {
            Iterator it = new ArrayList(this.f13495c).iterator();
            while (it.hasNext()) {
                ((AbstractC4410g) it.next()).mo22561e(i, i2);
            }
        }

        /* renamed from: a */
        void m22548a() {
            if (this.f13495c.isEmpty()) {
                return;
            }
            int m22542g = m22542g();
            int m22543f = m22543f();
            if (!m22540i(m22542g, m22543f)) {
                return;
            }
            m22539j(m22542g, m22543f);
            m22547b();
        }

        /* renamed from: b */
        void m22547b() {
            ViewTreeObserver viewTreeObserver = this.f13494b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f13497e);
            }
            this.f13497e = null;
            this.f13495c.clear();
        }

        /* renamed from: d */
        void m22545d(AbstractC4410g abstractC4410g) {
            int m22542g = m22542g();
            int m22543f = m22543f();
            if (m22540i(m22542g, m22543f)) {
                abstractC4410g.mo22561e(m22542g, m22543f);
                return;
            }
            if (!this.f13495c.contains(abstractC4410g)) {
                this.f13495c.add(abstractC4410g);
            }
            if (this.f13497e != null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = this.f13494b.getViewTreeObserver();
            ViewTreeObserver$OnPreDrawListenerC4414a viewTreeObserver$OnPreDrawListenerC4414a = new ViewTreeObserver$OnPreDrawListenerC4414a(this);
            this.f13497e = viewTreeObserver$OnPreDrawListenerC4414a;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC4414a);
        }

        /* renamed from: k */
        void m22538k(AbstractC4410g abstractC4410g) {
            this.f13495c.remove(abstractC4410g);
        }
    }

    public AbstractC4412i(T t) {
        this.f13488f = (T) C4382j.m22719d(t);
        this.f13489g = new C4413a(t);
    }

    /* renamed from: j */
    private Object m22552j() {
        return this.f13488f.getTag(f13487e);
    }

    /* renamed from: k */
    private void m22551k() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f13490h;
        if (onAttachStateChangeListener == null || this.f13492j) {
            return;
        }
        this.f13488f.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f13492j = true;
    }

    /* renamed from: l */
    private void m22550l() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f13490h;
        if (onAttachStateChangeListener == null || !this.f13492j) {
            return;
        }
        this.f13488f.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f13492j = false;
    }

    /* renamed from: m */
    private void m22549m(Object obj) {
        f13486d = true;
        this.f13488f.setTag(f13487e, obj);
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: b */
    public void mo22558b(AbstractC4410g abstractC4410g) {
        this.f13489g.m22538k(abstractC4410g);
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: d */
    public void mo22557d(AbstractC4399c abstractC4399c) {
        m22549m(abstractC4399c);
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4404a, com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: f */
    public void mo22556f(Drawable drawable) {
        super.mo22556f(drawable);
        m22551k();
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: g */
    public AbstractC4399c mo22555g() {
        AbstractC4399c abstractC4399c;
        Object m22552j = m22552j();
        if (m22552j == null) {
            abstractC4399c = null;
        } else if (!(m22552j instanceof AbstractC4399c)) {
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        } else {
            abstractC4399c = (AbstractC4399c) m22552j;
        }
        return abstractC4399c;
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4404a, com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: h */
    public void mo22554h(Drawable drawable) {
        super.mo22554h(drawable);
        this.f13489g.m22547b();
        if (!this.f13491i) {
            m22550l();
        }
    }

    @Override // com.bumptech.glide.request.p225h.AbstractC4411h
    /* renamed from: i */
    public void mo22553i(AbstractC4410g abstractC4410g) {
        this.f13489g.m22545d(abstractC4410g);
    }

    public String toString() {
        return "Target for: " + this.f13488f;
    }
}
