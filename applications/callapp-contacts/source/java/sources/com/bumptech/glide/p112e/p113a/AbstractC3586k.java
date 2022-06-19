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
@Deprecated
/* renamed from: com.bumptech.glide.e.a.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/k.class */
public abstract class AbstractC3586k<T extends View, Z> extends AbstractC3573a<Z> {

    /* renamed from: b */
    private static boolean f13636b;

    /* renamed from: c */
    private static int f13637c = C3647i.C3648a.glide_custom_view_target_tag;

    /* renamed from: a */
    protected final T f13638a;

    /* renamed from: d */
    private final C3587a f13639d;

    /* renamed from: e */
    private View.OnAttachStateChangeListener f13640e;

    /* renamed from: f */
    private boolean f13641f;

    /* renamed from: g */
    private boolean f13642g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.e.a.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/k$a.class */
    public static final class C3587a {

        /* renamed from: a */
        static Integer f13643a;

        /* renamed from: b */
        final View f13644b;

        /* renamed from: c */
        final List<AbstractC3584i> f13645c = new ArrayList();

        /* renamed from: d */
        boolean f13646d;

        /* renamed from: e */
        ViewTreeObserver$OnPreDrawListenerC3588a f13647e;

        /* renamed from: com.bumptech.glide.e.a.k$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/k$a$a.class */
        public static final class ViewTreeObserver$OnPreDrawListenerC3588a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a */
            private final WeakReference<C3587a> f13648a;

            ViewTreeObserver$OnPreDrawListenerC3588a(C3587a c3587a) {
                this.f13648a = new WeakReference<>(c3587a);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    new StringBuilder("OnGlobalLayoutListener called attachStateListener=").append(this);
                }
                C3587a c3587a = this.f13648a.get();
                if (c3587a != null) {
                    c3587a.m37677a();
                    return true;
                }
                return true;
            }
        }

        C3587a(View view) {
            this.f13644b = view;
        }

        /* renamed from: a */
        private int m37674a(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f13646d && this.f13644b.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f13644b.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            Log.isLoggable("ViewTarget", 4);
            return m37673a(this.f13644b.getContext());
        }

        /* renamed from: a */
        private static int m37673a(Context context) {
            if (f13643a == null) {
                Display defaultDisplay = ((WindowManager) C3643j.m37588a((WindowManager) context.getSystemService("window"), "Argument must not be null")).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f13643a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f13643a.intValue();
        }

        /* renamed from: a */
        private static boolean m37676a(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        /* renamed from: a */
        static boolean m37675a(int i, int i2) {
            return m37676a(i) && m37676a(i2);
        }

        /* renamed from: a */
        final void m37677a() {
            if (this.f13645c.isEmpty()) {
                return;
            }
            int m37670d = m37670d();
            int m37671c = m37671c();
            if (!m37675a(m37670d, m37671c)) {
                return;
            }
            Iterator it2 = new ArrayList(this.f13645c).iterator();
            while (it2.hasNext()) {
                ((AbstractC3584i) it2.next()).mo37651a(m37670d, m37671c);
            }
            m37672b();
        }

        /* renamed from: b */
        final void m37672b() {
            ViewTreeObserver viewTreeObserver = this.f13644b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f13647e);
            }
            this.f13647e = null;
            this.f13645c.clear();
        }

        /* renamed from: c */
        final int m37671c() {
            int paddingTop = this.f13644b.getPaddingTop();
            int paddingBottom = this.f13644b.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f13644b.getLayoutParams();
            return m37674a(this.f13644b.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop + paddingBottom);
        }

        /* renamed from: d */
        final int m37670d() {
            int paddingLeft = this.f13644b.getPaddingLeft();
            int paddingRight = this.f13644b.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f13644b.getLayoutParams();
            return m37674a(this.f13644b.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft + paddingRight);
        }
    }

    public AbstractC3586k(T t) {
        this.f13638a = (T) C3643j.m37588a(t, "Argument must not be null");
        this.f13639d = new C3587a(t);
    }

    @Deprecated
    public AbstractC3586k(T t, boolean z) {
        this(t);
        if (z) {
            this.f13639d.f13646d = true;
        }
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo37660a(AbstractC3584i abstractC3584i) {
        C3587a c3587a = this.f13639d;
        int m37670d = c3587a.m37670d();
        int m37671c = c3587a.m37671c();
        if (C3587a.m37675a(m37670d, m37671c)) {
            abstractC3584i.mo37651a(m37670d, m37671c);
            return;
        }
        if (!c3587a.f13645c.contains(abstractC3584i)) {
            c3587a.f13645c.add(abstractC3584i);
        }
        if (c3587a.f13647e != null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = c3587a.f13644b.getViewTreeObserver();
        c3587a.f13647e = new C3587a.ViewTreeObserver$OnPreDrawListenerC3588a(c3587a);
        viewTreeObserver.addOnPreDrawListener(c3587a.f13647e);
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3573a, com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: b */
    public void mo37199b(Drawable drawable) {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.mo37199b(drawable);
        this.f13639d.m37672b();
        if (this.f13641f || (onAttachStateChangeListener = this.f13640e) == null || !this.f13642g) {
            return;
        }
        this.f13638a.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f13642g = false;
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: b */
    public final void mo37658b(AbstractC3584i abstractC3584i) {
        this.f13639d.f13645c.remove(abstractC3584i);
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3573a, com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: c */
    public void mo37657c(Drawable drawable) {
        super.mo37657c(drawable);
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f13640e;
        if (onAttachStateChangeListener == null || this.f13642g) {
            return;
        }
        this.f13638a.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f13642g = true;
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3573a, com.bumptech.glide.p112e.p113a.AbstractC3585j
    public AbstractC3599d getRequest() {
        AbstractC3599d abstractC3599d;
        Object tag = this.f13638a.getTag(f13637c);
        if (tag == null) {
            abstractC3599d = null;
        } else if (!(tag instanceof AbstractC3599d)) {
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        } else {
            abstractC3599d = (AbstractC3599d) tag;
        }
        return abstractC3599d;
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3573a, com.bumptech.glide.p112e.p113a.AbstractC3585j
    public void setRequest(AbstractC3599d abstractC3599d) {
        f13636b = true;
        this.f13638a.setTag(f13637c, abstractC3599d);
    }

    public String toString() {
        return "Target for: " + this.f13638a;
    }
}
