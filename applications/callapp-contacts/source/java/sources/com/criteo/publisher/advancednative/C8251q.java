package com.criteo.publisher.advancednative;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.Reference;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.criteo.publisher.advancednative.q */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/q.class */
public class C8251q {

    /* renamed from: a */
    final C8249o f29798a;

    /* renamed from: b */
    final Map<View, ViewTreeObserver$OnPreDrawListenerC8252a> f29799b = new WeakHashMap();

    /* renamed from: c */
    final Object f29800c = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.advancednative.q$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/q$a.class */
    public static final class ViewTreeObserver$OnPreDrawListenerC8252a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        volatile AbstractC8250p f29801a = null;

        /* renamed from: b */
        private final Reference<View> f29802b;

        /* renamed from: c */
        private final C8249o f29803c;

        public ViewTreeObserver$OnPreDrawListenerC8252a(Reference<View> reference, C8249o c8249o) {
            this.f29802b = reference;
            this.f29803c = c8249o;
            View view = reference.get();
            if (view != null) {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (!viewTreeObserver.isAlive()) {
                    return;
                }
                viewTreeObserver.addOnPreDrawListener(this);
            }
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            AbstractC8250p abstractC8250p;
            View view = this.f29802b.get();
            boolean z = false;
            if (view != null && view.isShown()) {
                if (!(view.getWidth() == 0 || view.getHeight() == 0)) {
                    z = view.getGlobalVisibleRect(new Rect());
                }
            }
            if (!z || (abstractC8250p = this.f29801a) == null) {
                return true;
            }
            abstractC8250p.mo25966a();
            return true;
        }
    }

    public C8251q(C8249o c8249o) {
        this.f29798a = c8249o;
    }
}
