package com.explorestack.iab.utils;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import com.explorestack.iab.mraid.MraidLog;
import com.explorestack.iab.mraid.f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/o.class */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public static final String f19200a = "o";

    /* renamed from: b  reason: collision with root package name */
    public final View f19201b;

    /* renamed from: c  reason: collision with root package name */
    public ViewTreeObserver.OnPreDrawListener f19202c;

    /* renamed from: d  reason: collision with root package name */
    public View.OnAttachStateChangeListener f19203d;
    public boolean e;
    public boolean f;
    public final Runnable g;
    private final Rect h;
    private final Rect i;
    private final Context j;
    private final a k;
    private final float l;
    private boolean m;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/o$a.class */
    public interface a {
        void a();
    }

    public o(Context context, View view, a aVar) {
        this(context, view, aVar, 0.1f);
    }

    public o(Context context, View view, a aVar, float f) {
        this.h = new Rect();
        this.i = new Rect();
        this.e = false;
        this.m = false;
        this.f = false;
        this.g = new Runnable() { // from class: com.explorestack.iab.utils.o.1
            @Override // java.lang.Runnable
            public final void run() {
                o.this.a();
                o.this.f = false;
            }
        };
        this.j = context;
        this.f19201b = view;
        this.k = aVar;
        this.l = f;
    }

    private void a(String str) {
        if (!this.m) {
            this.m = true;
            MraidLog.d(f19200a, str);
        }
        a(false);
    }

    private void a(boolean z) {
        if (this.e != z) {
            this.e = z;
            this.k.a();
        }
    }

    private void b() {
        this.m = false;
        a(true);
    }

    static /* synthetic */ void c(o oVar) {
        if (!oVar.f) {
            oVar.f = true;
            Utils.c(oVar.g);
        }
    }

    public final void a() {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.f19201b.getVisibility() != 0) {
            a("Visibility != View.VISIBLE");
        } else if (this.f19201b.getParent() == null) {
            a("No parent");
        } else if (!this.f19201b.getGlobalVisibleRect(this.h)) {
            a("Can't get global visible rect");
        } else if (Utils.a(this.f19201b)) {
            a("View is transparent (alpha = 0)");
        } else {
            float width = this.f19201b.getWidth() * this.f19201b.getHeight();
            if (width <= BitmapDescriptorFactory.HUE_RED) {
                a("Ad View width or height is zero, show wasn't tracked");
                return;
            }
            float width2 = (this.h.width() * this.h.height()) / width;
            if (width2 < this.l) {
                a("Ad View is not completely visible (" + width2 + "), show wasn't tracked");
                return;
            }
            View b2 = f.b(this.j, this.f19201b);
            if (b2 == null) {
                a("Can't obtain root view");
                return;
            }
            b2.getGlobalVisibleRect(this.i);
            if (!Rect.intersects(this.h, this.i)) {
                a("Ad View is out of current window, show wasn't tracked");
                return;
            }
            b();
        }
    }
}
