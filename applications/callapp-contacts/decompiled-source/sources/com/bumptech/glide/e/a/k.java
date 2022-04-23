package com.bumptech.glide.e.a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.e.d;
import com.bumptech.glide.g.j;
import com.bumptech.glide.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/k.class */
public abstract class k<T extends View, Z> extends com.bumptech.glide.e.a.a<Z> {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f7285b;

    /* renamed from: c  reason: collision with root package name */
    private static int f7286c = i.a.glide_custom_view_target_tag;

    /* renamed from: a  reason: collision with root package name */
    protected final T f7287a;

    /* renamed from: d  reason: collision with root package name */
    private final a f7288d;
    private View.OnAttachStateChangeListener e;
    private boolean f;
    private boolean g;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/k$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        static Integer f7289a;

        /* renamed from: b  reason: collision with root package name */
        final View f7290b;

        /* renamed from: c  reason: collision with root package name */
        final List<i> f7291c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        boolean f7292d;
        ViewTreeObserver$OnPreDrawListenerC0140a e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bumptech.glide.e.a.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/k$a$a.class */
        public static final class ViewTreeObserver$OnPreDrawListenerC0140a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f7293a;

            ViewTreeObserver$OnPreDrawListenerC0140a(a aVar) {
                this.f7293a = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    new StringBuilder("OnGlobalLayoutListener called attachStateListener=").append(this);
                }
                a aVar = this.f7293a.get();
                if (aVar == null) {
                    return true;
                }
                aVar.a();
                return true;
            }
        }

        a(View view) {
            this.f7290b = view;
        }

        private int a(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f7292d && this.f7290b.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f7290b.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            Log.isLoggable("ViewTarget", 4);
            return a(this.f7290b.getContext());
        }

        private static int a(Context context) {
            if (f7289a == null) {
                Display defaultDisplay = ((WindowManager) j.a((WindowManager) context.getSystemService("window"), "Argument must not be null")).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f7289a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f7289a.intValue();
        }

        private static boolean a(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        static boolean a(int i, int i2) {
            return a(i) && a(i2);
        }

        final void a() {
            if (!this.f7291c.isEmpty()) {
                int d2 = d();
                int c2 = c();
                if (a(d2, c2)) {
                    Iterator it2 = new ArrayList(this.f7291c).iterator();
                    while (it2.hasNext()) {
                        ((i) it2.next()).a(d2, c2);
                    }
                    b();
                }
            }
        }

        final void b() {
            ViewTreeObserver viewTreeObserver = this.f7290b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.e);
            }
            this.e = null;
            this.f7291c.clear();
        }

        final int c() {
            int paddingTop = this.f7290b.getPaddingTop();
            int paddingBottom = this.f7290b.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f7290b.getLayoutParams();
            return a(this.f7290b.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop + paddingBottom);
        }

        final int d() {
            int paddingLeft = this.f7290b.getPaddingLeft();
            int paddingRight = this.f7290b.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f7290b.getLayoutParams();
            return a(this.f7290b.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft + paddingRight);
        }
    }

    public k(T t) {
        this.f7287a = (T) ((View) j.a(t, "Argument must not be null"));
        this.f7288d = new a(t);
    }

    @Deprecated
    public k(T t, boolean z) {
        this(t);
        if (z) {
            this.f7288d.f7292d = true;
        }
    }

    @Override // com.bumptech.glide.e.a.j
    public final void a(i iVar) {
        a aVar = this.f7288d;
        int d2 = aVar.d();
        int c2 = aVar.c();
        if (a.a(d2, c2)) {
            iVar.a(d2, c2);
            return;
        }
        if (!aVar.f7291c.contains(iVar)) {
            aVar.f7291c.add(iVar);
        }
        if (aVar.e == null) {
            ViewTreeObserver viewTreeObserver = aVar.f7290b.getViewTreeObserver();
            aVar.e = new a.ViewTreeObserver$OnPreDrawListenerC0140a(aVar);
            viewTreeObserver.addOnPreDrawListener(aVar.e);
        }
    }

    @Override // com.bumptech.glide.e.a.a, com.bumptech.glide.e.a.j
    public void b(Drawable drawable) {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.b(drawable);
        this.f7288d.b();
        if (!this.f && (onAttachStateChangeListener = this.e) != null && this.g) {
            this.f7287a.removeOnAttachStateChangeListener(onAttachStateChangeListener);
            this.g = false;
        }
    }

    @Override // com.bumptech.glide.e.a.j
    public final void b(i iVar) {
        this.f7288d.f7291c.remove(iVar);
    }

    @Override // com.bumptech.glide.e.a.a, com.bumptech.glide.e.a.j
    public void c(Drawable drawable) {
        super.c(drawable);
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.e;
        if (onAttachStateChangeListener != null && !this.g) {
            this.f7287a.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.g = true;
        }
    }

    @Override // com.bumptech.glide.e.a.a, com.bumptech.glide.e.a.j
    public d getRequest() {
        d dVar;
        Object tag = this.f7287a.getTag(f7286c);
        if (tag == null) {
            dVar = null;
        } else if (tag instanceof d) {
            dVar = (d) tag;
        } else {
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        }
        return dVar;
    }

    @Override // com.bumptech.glide.e.a.a, com.bumptech.glide.e.a.j
    public void setRequest(d dVar) {
        f7285b = true;
        this.f7287a.setTag(f7286c, dVar);
    }

    public String toString() {
        return "Target for: " + this.f7287a;
    }
}
