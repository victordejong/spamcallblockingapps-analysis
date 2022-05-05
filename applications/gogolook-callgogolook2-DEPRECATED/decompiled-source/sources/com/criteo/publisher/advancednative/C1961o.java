package com.criteo.publisher.advancednative;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.criteo.publisher.advancednative.o */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/o.class */
public class C1961o {
    @NonNull

    /* renamed from: a */
    public final C1959m f2103a;
    @NonNull
    @GuardedBy("lock")

    /* renamed from: b */
    public final Map<View, ViewTreeObserver$OnPreDrawListenerC1962a> f2104b = new WeakHashMap();

    /* renamed from: c */
    public final Object f2105c = new Object();

    @VisibleForTesting
    /* renamed from: com.criteo.publisher.advancednative.o$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/o$a.class */
    public static class ViewTreeObserver$OnPreDrawListenerC1962a implements ViewTreeObserver.OnPreDrawListener {
        @NonNull

        /* renamed from: a */
        public final Reference<View> f2106a;
        @NonNull

        /* renamed from: b */
        public final C1959m f2107b;
        @Nullable

        /* renamed from: c */
        public volatile AbstractC1960n f2108c = null;

        public ViewTreeObserver$OnPreDrawListenerC1962a(@NonNull Reference<View> reference, @NonNull C1959m mVar) {
            this.f2106a = reference;
            this.f2107b = mVar;
            m35964a();
        }

        /* renamed from: a */
        private void m35964a() {
            View view = this.f2106a.get();
            if (view != null) {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnPreDrawListener(this);
                }
            }
        }

        /* renamed from: b */
        private boolean m35962b() {
            View view = this.f2106a.get();
            if (view == null) {
                return false;
            }
            return this.f2107b.m35968a(view);
        }

        /* renamed from: c */
        private void m35961c() {
            AbstractC1960n nVar = this.f2108c;
            if (nVar != null) {
                nVar.mo35967a();
            }
        }

        /* renamed from: a */
        public void m35963a(@Nullable AbstractC1960n nVar) {
            this.f2108c = nVar;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!m35962b()) {
                return true;
            }
            m35961c();
            return true;
        }
    }

    public C1961o(@NonNull C1959m mVar) {
        this.f2103a = mVar;
    }

    @NonNull
    /* renamed from: a */
    private ViewTreeObserver$OnPreDrawListenerC1962a m35966a(@NonNull View view) {
        return new ViewTreeObserver$OnPreDrawListenerC1962a(new WeakReference(view), this.f2103a);
    }

    /* renamed from: a */
    public void m35965a(@NonNull View view, @NonNull AbstractC1960n nVar) {
        ViewTreeObserver$OnPreDrawListenerC1962a aVar;
        synchronized (this.f2105c) {
            ViewTreeObserver$OnPreDrawListenerC1962a aVar2 = this.f2104b.get(view);
            aVar = aVar2;
            if (aVar2 == null) {
                aVar = m35966a(view);
                this.f2104b.put(view, aVar);
            }
        }
        aVar.m35963a(nVar);
    }
}
