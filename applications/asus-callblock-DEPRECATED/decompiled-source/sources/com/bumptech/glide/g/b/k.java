package com.bumptech.glide.g.b;

import android.graphics.Point;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.g.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/k.class */
public abstract class k<T extends View, Z> extends com.bumptech.glide.g.b.a<Z> {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3441a = false;

    /* renamed from: b  reason: collision with root package name */
    private static Integer f3442b = null;
    private final a c;
    protected final T d;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/k$a.class */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        final View f3443a;

        /* renamed from: b  reason: collision with root package name */
        final List<h> f3444b = new ArrayList();
        ViewTreeObserver$OnPreDrawListenerC0094a c;
        private Point d;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.bumptech.glide.g.b.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/k$a$a.class */
        public static final class ViewTreeObserver$OnPreDrawListenerC0094a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f3445a;

            public ViewTreeObserver$OnPreDrawListenerC0094a(a aVar) {
                this.f3445a = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called listener=" + this);
                }
                a aVar = this.f3445a.get();
                if (aVar == null) {
                    return true;
                }
                a.a(aVar);
                return true;
            }
        }

        public a(View view) {
            this.f3443a = view;
        }

        private int a(int i, boolean z) {
            int i2 = i;
            if (i == -2) {
                if (this.d == null) {
                    Display defaultDisplay = ((WindowManager) this.f3443a.getContext().getSystemService("window")).getDefaultDisplay();
                    if (Build.VERSION.SDK_INT >= 13) {
                        this.d = new Point();
                        defaultDisplay.getSize(this.d);
                    } else {
                        this.d = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
                    }
                }
                Point point = this.d;
                i2 = z ? point.y : point.x;
            }
            return i2;
        }

        static /* synthetic */ void a(a aVar) {
            if (!aVar.f3444b.isEmpty()) {
                int b2 = aVar.b();
                int a2 = aVar.a();
                if (a(b2) && a(a2)) {
                    for (h hVar : aVar.f3444b) {
                        hVar.a(b2, a2);
                    }
                    aVar.f3444b.clear();
                    ViewTreeObserver viewTreeObserver = aVar.f3443a.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.removeOnPreDrawListener(aVar.c);
                    }
                    aVar.c = null;
                }
            }
        }

        static boolean a(int i) {
            return i > 0 || i == -2;
        }

        final int a() {
            ViewGroup.LayoutParams layoutParams = this.f3443a.getLayoutParams();
            return a(this.f3443a.getHeight()) ? this.f3443a.getHeight() : layoutParams != null ? a(layoutParams.height, true) : 0;
        }

        final int b() {
            int i = 0;
            ViewGroup.LayoutParams layoutParams = this.f3443a.getLayoutParams();
            if (a(this.f3443a.getWidth())) {
                i = this.f3443a.getWidth();
            } else if (layoutParams != null) {
                i = a(layoutParams.width, false);
            }
            return i;
        }
    }

    public k(T t) {
        if (t == null) {
            throw new NullPointerException("View must not be null!");
        }
        this.d = t;
        this.c = new a(t);
    }

    public static void setTagId(int i) {
        if (f3442b != null || f3441a) {
            throw new IllegalArgumentException("You cannot set the tag id more than once or change the tag id after the first request has been made");
        }
        f3442b = Integer.valueOf(i);
    }

    @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.g.b.j
    public b getRequest() {
        b bVar;
        Object tag = f3442b == null ? this.d.getTag() : this.d.getTag(f3442b.intValue());
        if (tag == null) {
            bVar = null;
        } else if (tag instanceof b) {
            bVar = (b) tag;
        } else {
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        }
        return bVar;
    }

    @Override // com.bumptech.glide.g.b.j
    public void getSize(h hVar) {
        a aVar = this.c;
        int b2 = aVar.b();
        int a2 = aVar.a();
        if (!a.a(b2) || !a.a(a2)) {
            if (!aVar.f3444b.contains(hVar)) {
                aVar.f3444b.add(hVar);
            }
            if (aVar.c == null) {
                ViewTreeObserver viewTreeObserver = aVar.f3443a.getViewTreeObserver();
                aVar.c = new a.ViewTreeObserver$OnPreDrawListenerC0094a(aVar);
                viewTreeObserver.addOnPreDrawListener(aVar.c);
                return;
            }
            return;
        }
        hVar.a(b2, a2);
    }

    public T getView() {
        return this.d;
    }

    @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.g.b.j
    public void setRequest(b bVar) {
        if (f3442b == null) {
            f3441a = true;
            this.d.setTag(bVar);
            return;
        }
        this.d.setTag(f3442b.intValue(), bVar);
    }

    public String toString() {
        return "Target for: " + this.d;
    }
}
