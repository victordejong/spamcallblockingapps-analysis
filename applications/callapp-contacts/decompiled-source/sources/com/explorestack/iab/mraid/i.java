package com.explorestack.iab.mraid;

import android.view.View;
import android.view.ViewTreeObserver;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    a f19149a;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/i$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final View[] f19150a;

        /* renamed from: b  reason: collision with root package name */
        Runnable f19151b;

        /* renamed from: c  reason: collision with root package name */
        int f19152c;

        /* renamed from: d  reason: collision with root package name */
        final Runnable f19153d = new Runnable() { // from class: com.explorestack.iab.mraid.i.a.1
            @Override // java.lang.Runnable
            public final void run() {
                View[] viewArr;
                for (final View view : a.this.f19150a) {
                    if (view.getHeight() > 0 || view.getWidth() > 0) {
                        a.this.a();
                    } else {
                        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.explorestack.iab.mraid.i.a.1.1
                            @Override // android.view.ViewTreeObserver.OnPreDrawListener
                            public final boolean onPreDraw() {
                                view.getViewTreeObserver().removeOnPreDrawListener(this);
                                a.this.a();
                                return true;
                            }
                        });
                    }
                }
            }
        };

        public a(View[] viewArr) {
            this.f19150a = viewArr;
        }

        final void a() {
            Runnable runnable;
            int i = this.f19152c - 1;
            this.f19152c = i;
            if (i == 0 && (runnable = this.f19151b) != null) {
                runnable.run();
                this.f19151b = null;
            }
        }

        final void b() {
            Utils.d(this.f19153d);
            this.f19151b = null;
        }
    }

    public final void a() {
        a aVar = this.f19149a;
        if (aVar != null) {
            aVar.b();
            this.f19149a = null;
        }
    }
}
