package com.explorestack.iab.mraid;

import android.view.View;
import android.view.ViewTreeObserver;
import com.explorestack.iab.utils.Utils;
/* renamed from: com.explorestack.iab.mraid.i */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/i.class */
public final class C9573i {

    /* renamed from: a */
    C9574a f32530a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.iab.mraid.i$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/i$a.class */
    public static final class C9574a {

        /* renamed from: a */
        final View[] f32531a;

        /* renamed from: b */
        Runnable f32532b;

        /* renamed from: c */
        int f32533c;

        /* renamed from: d */
        final Runnable f32534d = new Runnable() { // from class: com.explorestack.iab.mraid.i.a.1
            @Override // java.lang.Runnable
            public final void run() {
                View[] viewArr;
                for (final View view : C9574a.this.f32531a) {
                    if (view.getHeight() > 0 || view.getWidth() > 0) {
                        C9574a.this.m24134a();
                    } else {
                        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.explorestack.iab.mraid.i.a.1.1
                            @Override // android.view.ViewTreeObserver.OnPreDrawListener
                            public final boolean onPreDraw() {
                                view.getViewTreeObserver().removeOnPreDrawListener(this);
                                C9574a.this.m24134a();
                                return true;
                            }
                        });
                    }
                }
            }
        };

        public C9574a(View[] viewArr) {
            this.f32531a = viewArr;
        }

        /* renamed from: a */
        final void m24134a() {
            Runnable runnable;
            int i = this.f32533c - 1;
            this.f32533c = i;
            if (i != 0 || (runnable = this.f32532b) == null) {
                return;
            }
            runnable.run();
            this.f32532b = null;
        }

        /* renamed from: b */
        final void m24133b() {
            Utils.m24097d(this.f32534d);
            this.f32532b = null;
        }
    }

    /* renamed from: a */
    public final void m24135a() {
        C9574a c9574a = this.f32530a;
        if (c9574a != null) {
            c9574a.m24133b();
            this.f32530a = null;
        }
    }
}
