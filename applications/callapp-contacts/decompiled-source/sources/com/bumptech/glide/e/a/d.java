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
import com.bumptech.glide.g.j;
import com.bumptech.glide.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/d.class */
public abstract class d<T extends View, Z> implements j<Z> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f7273b = i.a.glide_custom_view_target_tag;

    /* renamed from: a  reason: collision with root package name */
    protected final T f7274a;

    /* renamed from: c  reason: collision with root package name */
    private final a f7275c;

    /* renamed from: d  reason: collision with root package name */
    private View.OnAttachStateChangeListener f7276d;
    private boolean e;
    private boolean f;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/d$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        static Integer f7277a;

        /* renamed from: b  reason: collision with root package name */
        final View f7278b;

        /* renamed from: c  reason: collision with root package name */
        final List<i> f7279c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        boolean f7280d;
        ViewTreeObserver$OnPreDrawListenerC0139a e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bumptech.glide.e.a.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a/d$a$a.class */
        public static final class ViewTreeObserver$OnPreDrawListenerC0139a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f7281a;

            ViewTreeObserver$OnPreDrawListenerC0139a(a aVar) {
                this.f7281a = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    new StringBuilder("OnGlobalLayoutListener called attachStateListener=").append(this);
                }
                a aVar = this.f7281a.get();
                if (aVar == null) {
                    return true;
                }
                aVar.a();
                return true;
            }
        }

        a(View view) {
            this.f7278b = view;
        }

        private int a(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f7280d && this.f7278b.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f7278b.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            Log.isLoggable("CustomViewTarget", 4);
            return a(this.f7278b.getContext());
        }

        private static int a(Context context) {
            if (f7277a == null) {
                Display defaultDisplay = ((WindowManager) j.a((WindowManager) context.getSystemService("window"), "Argument must not be null")).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f7277a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f7277a.intValue();
        }

        private static boolean a(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        static boolean a(int i, int i2) {
            return a(i) && a(i2);
        }

        final void a() {
            if (!this.f7279c.isEmpty()) {
                int d2 = d();
                int c2 = c();
                if (a(d2, c2)) {
                    Iterator it2 = new ArrayList(this.f7279c).iterator();
                    while (it2.hasNext()) {
                        ((i) it2.next()).a(d2, c2);
                    }
                    b();
                }
            }
        }

        final void b() {
            ViewTreeObserver viewTreeObserver = this.f7278b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.e);
            }
            this.e = null;
            this.f7279c.clear();
        }

        final int c() {
            int paddingTop = this.f7278b.getPaddingTop();
            int paddingBottom = this.f7278b.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f7278b.getLayoutParams();
            return a(this.f7278b.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop + paddingBottom);
        }

        final int d() {
            int paddingLeft = this.f7278b.getPaddingLeft();
            int paddingRight = this.f7278b.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f7278b.getLayoutParams();
            return a(this.f7278b.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft + paddingRight);
        }
    }

    public d(T t) {
        this.f7274a = (T) ((View) j.a(t, "Argument must not be null"));
        this.f7275c = new a(t);
    }

    private Object getTag() {
        return this.f7274a.getTag(f7273b);
    }

    private void setTag(Object obj) {
        this.f7274a.setTag(f7273b, obj);
    }

    @Override // com.bumptech.glide.manager.m
    public final void a() {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void a(i iVar) {
        a aVar = this.f7275c;
        int d2 = aVar.d();
        int c2 = aVar.c();
        if (a.a(d2, c2)) {
            iVar.a(d2, c2);
            return;
        }
        if (!aVar.f7279c.contains(iVar)) {
            aVar.f7279c.add(iVar);
        }
        if (aVar.e == null) {
            ViewTreeObserver viewTreeObserver = aVar.f7278b.getViewTreeObserver();
            aVar.e = new a.ViewTreeObserver$OnPreDrawListenerC0139a(aVar);
            viewTreeObserver.addOnPreDrawListener(aVar.e);
        }
    }

    @Override // com.bumptech.glide.manager.m
    public final void b() {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void b(Drawable drawable) {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        this.f7275c.b();
        d();
        if (!this.e && (onAttachStateChangeListener = this.f7276d) != null && this.f) {
            this.f7274a.removeOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f = false;
        }
    }

    @Override // com.bumptech.glide.e.a.j
    public final void b(i iVar) {
        this.f7275c.f7279c.remove(iVar);
    }

    @Override // com.bumptech.glide.manager.m
    public final void c() {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void c(Drawable drawable) {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f7276d;
        if (onAttachStateChangeListener != null && !this.f) {
            this.f7274a.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f = true;
        }
    }

    protected abstract void d();

    @Override // com.bumptech.glide.e.a.j
    public final com.bumptech.glide.e.d getRequest() {
        Object tag = getTag();
        if (tag == null) {
            return null;
        }
        if (tag instanceof com.bumptech.glide.e.d) {
            return (com.bumptech.glide.e.d) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // com.bumptech.glide.e.a.j
    public final void setRequest(com.bumptech.glide.e.d dVar) {
        setTag(dVar);
    }

    public String toString() {
        return "Target for: " + this.f7274a;
    }
}
