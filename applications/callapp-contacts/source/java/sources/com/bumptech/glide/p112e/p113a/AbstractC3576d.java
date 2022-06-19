package com.bumptech.glide.p112e.p113a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.C3647i;
import com.bumptech.glide.p112e.AbstractC3599d;
import com.bumptech.glide.p116g.C3643j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bumptech.glide.e.a.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/d.class */
public abstract class AbstractC3576d<T extends View, Z> implements AbstractC3585j<Z> {

    /* renamed from: b */
    private static final int f13621b = C3647i.C3648a.glide_custom_view_target_tag;

    /* renamed from: a */
    protected final T f13622a;

    /* renamed from: c */
    private final C3577a f13623c;

    /* renamed from: d */
    private View.OnAttachStateChangeListener f13624d;

    /* renamed from: e */
    private boolean f13625e;

    /* renamed from: f */
    private boolean f13626f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.e.a.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/d$a.class */
    public static final class C3577a {

        /* renamed from: a */
        static Integer f13627a;

        /* renamed from: b */
        final View f13628b;

        /* renamed from: c */
        final List<AbstractC3584i> f13629c = new ArrayList();

        /* renamed from: d */
        boolean f13630d;

        /* renamed from: e */
        ViewTreeObserver$OnPreDrawListenerC3578a f13631e;

        /* renamed from: com.bumptech.glide.e.a.d$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/d$a$a.class */
        public static final class ViewTreeObserver$OnPreDrawListenerC3578a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a */
            private final WeakReference<C3577a> f13632a;

            ViewTreeObserver$OnPreDrawListenerC3578a(C3577a c3577a) {
                this.f13632a = new WeakReference<>(c3577a);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    new StringBuilder("OnGlobalLayoutListener called attachStateListener=").append(this);
                }
                C3577a c3577a = this.f13632a.get();
                if (c3577a != null) {
                    c3577a.m37689a();
                    return true;
                }
                return true;
            }
        }

        C3577a(View view) {
            this.f13628b = view;
        }

        /* renamed from: a */
        private int m37686a(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f13630d && this.f13628b.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f13628b.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            Log.isLoggable("CustomViewTarget", 4);
            return m37685a(this.f13628b.getContext());
        }

        /* renamed from: a */
        private static int m37685a(Context context) {
            if (f13627a == null) {
                Display defaultDisplay = ((WindowManager) C3643j.m37588a((WindowManager) context.getSystemService("window"), "Argument must not be null")).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f13627a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f13627a.intValue();
        }

        /* renamed from: a */
        private static boolean m37688a(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        /* renamed from: a */
        static boolean m37687a(int i, int i2) {
            return m37688a(i) && m37688a(i2);
        }

        /* renamed from: a */
        final void m37689a() {
            if (this.f13629c.isEmpty()) {
                return;
            }
            int m37682d = m37682d();
            int m37683c = m37683c();
            if (!m37687a(m37682d, m37683c)) {
                return;
            }
            Iterator it2 = new ArrayList(this.f13629c).iterator();
            while (it2.hasNext()) {
                ((AbstractC3584i) it2.next()).mo37651a(m37682d, m37683c);
            }
            m37684b();
        }

        /* renamed from: b */
        final void m37684b() {
            ViewTreeObserver viewTreeObserver = this.f13628b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f13631e);
            }
            this.f13631e = null;
            this.f13629c.clear();
        }

        /* renamed from: c */
        final int m37683c() {
            int paddingTop = this.f13628b.getPaddingTop();
            int paddingBottom = this.f13628b.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f13628b.getLayoutParams();
            return m37686a(this.f13628b.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop + paddingBottom);
        }

        /* renamed from: d */
        final int m37682d() {
            int paddingLeft = this.f13628b.getPaddingLeft();
            int paddingRight = this.f13628b.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f13628b.getLayoutParams();
            return m37686a(this.f13628b.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft + paddingRight);
        }
    }

    public AbstractC3576d(T t) {
        this.f13622a = (T) C3643j.m37588a(t, "Argument must not be null");
        this.f13623c = new C3577a(t);
    }

    private Object getTag() {
        return this.f13622a.getTag(f13621b);
    }

    private void setTag(Object obj) {
        this.f13622a.setTag(f13621b, obj);
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: a */
    public final void mo37150a() {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo37660a(AbstractC3584i abstractC3584i) {
        C3577a c3577a = this.f13623c;
        int m37682d = c3577a.m37682d();
        int m37683c = c3577a.m37683c();
        if (C3577a.m37687a(m37682d, m37683c)) {
            abstractC3584i.mo37651a(m37682d, m37683c);
            return;
        }
        if (!c3577a.f13629c.contains(abstractC3584i)) {
            c3577a.f13629c.add(abstractC3584i);
        }
        if (c3577a.f13631e != null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = c3577a.f13628b.getViewTreeObserver();
        c3577a.f13631e = new C3577a.ViewTreeObserver$OnPreDrawListenerC3578a(c3577a);
        viewTreeObserver.addOnPreDrawListener(c3577a.f13631e);
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: b */
    public final void mo37149b() {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: b */
    public final void mo37199b(Drawable drawable) {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        this.f13623c.m37684b();
        mo27007d();
        if (this.f13625e || (onAttachStateChangeListener = this.f13624d) == null || !this.f13626f) {
            return;
        }
        this.f13622a.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f13626f = false;
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: b */
    public final void mo37658b(AbstractC3584i abstractC3584i) {
        this.f13623c.f13629c.remove(abstractC3584i);
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: c */
    public final void mo37148c() {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: c */
    public final void mo37657c(Drawable drawable) {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f13624d;
        if (onAttachStateChangeListener == null || this.f13626f) {
            return;
        }
        this.f13622a.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f13626f = true;
    }

    /* renamed from: d */
    protected abstract void mo27007d();

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    public final AbstractC3599d getRequest() {
        Object tag = getTag();
        if (tag != null) {
            if (!(tag instanceof AbstractC3599d)) {
                throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
            }
            return (AbstractC3599d) tag;
        }
        return null;
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    public final void setRequest(AbstractC3599d abstractC3599d) {
        setTag(abstractC3599d);
    }

    public String toString() {
        return "Target for: " + this.f13622a;
    }
}
