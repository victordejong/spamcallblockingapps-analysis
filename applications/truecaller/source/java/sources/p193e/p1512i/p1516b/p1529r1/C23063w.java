package p193e.p1512i.p1516b.p1529r1;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import java.lang.ref.Reference;
import java.net.URL;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import p193e.p1512i.p1516b.p1529r1.C23056q;
/* renamed from: e.i.b.r1.w */
/* loaded from: classes-dex2jar.jar:e/i/b/r1/w.class */
public class C23063w {

    /* renamed from: a */
    public final C23062v f63874a;

    /* renamed from: b */
    public final Map<View, ViewTreeObserver$OnPreDrawListenerC23064a> f63875b = new WeakHashMap();

    /* renamed from: c */
    public final Object f63876c = new Object();

    /* renamed from: e.i.b.r1.w$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/r1/w$a.class */
    public static class ViewTreeObserver$OnPreDrawListenerC23064a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        public final Reference<View> f63877a;

        /* renamed from: b */
        public final C23062v f63878b;

        /* renamed from: c */
        public volatile C23058r f63879c = null;

        public ViewTreeObserver$OnPreDrawListenerC23064a(Reference<View> reference, C23062v c23062v) {
            this.f63877a = reference;
            this.f63878b = c23062v;
            View view = reference.get();
            if (view == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnPreDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            boolean z;
            C23058r c23058r;
            View view = this.f63877a.get();
            if (view != null) {
                Objects.requireNonNull(this.f63878b);
                if (view.isShown()) {
                    if (!(view.getWidth() == 0 || view.getHeight() == 0)) {
                        z = view.getGlobalVisibleRect(new Rect());
                        if (z || (c23058r = this.f63879c) == null || !c23058r.f63864d.compareAndSet(false, true)) {
                            return true;
                        }
                        C23056q c23056q = c23058r.f63863c;
                        Iterable<URL> iterable = c23058r.f63861a;
                        Objects.requireNonNull(c23056q);
                        for (URL url : iterable) {
                            c23056q.f63857b.execute(new C23056q.C23057a(url, c23056q.f63856a, null));
                        }
                        CriteoNativeAdListener criteoNativeAdListener = c23058r.f63862b.get();
                        if (criteoNativeAdListener == null) {
                            return true;
                        }
                        c23058r.f63863c.f63858c.f64119a.post(new C23055p(criteoNativeAdListener));
                        return true;
                    }
                }
            }
            z = false;
            return z ? true : true;
        }
    }

    public C23063w(C23062v c23062v) {
        this.f63874a = c23062v;
    }
}
