package com.criteo.publisher.advancednative;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.Reference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/q.class */
public class q {

    /* renamed from: a  reason: collision with root package name */
    final o f17192a;

    /* renamed from: b  reason: collision with root package name */
    final Map<View, a> f17193b = new WeakHashMap();

    /* renamed from: c  reason: collision with root package name */
    final Object f17194c = new Object();

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/q$a.class */
    static final class a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a  reason: collision with root package name */
        volatile p f17195a = null;

        /* renamed from: b  reason: collision with root package name */
        private final Reference<View> f17196b;

        /* renamed from: c  reason: collision with root package name */
        private final o f17197c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Reference<View> reference, o oVar) {
            this.f17196b = reference;
            this.f17197c = oVar;
            View view = reference.get();
            if (view != null) {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnPreDrawListener(this);
                }
            }
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            p pVar;
            View view = this.f17196b.get();
            boolean z = false;
            if (view != null && view.isShown()) {
                if (!(view.getWidth() == 0 || view.getHeight() == 0)) {
                    z = view.getGlobalVisibleRect(new Rect());
                }
            }
            if (!z || (pVar = this.f17195a) == null) {
                return true;
            }
            pVar.a();
            return true;
        }
    }

    public q(o oVar) {
        this.f17192a = oVar;
    }
}
