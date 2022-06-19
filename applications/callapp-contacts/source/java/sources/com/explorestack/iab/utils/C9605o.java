package com.explorestack.iab.utils;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import com.explorestack.iab.mraid.C9566f;
import com.explorestack.iab.mraid.MraidLog;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.explorestack.iab.utils.o */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/o.class */
public class C9605o {

    /* renamed from: a */
    public static final String f32625a = "o";

    /* renamed from: b */
    public final View f32626b;

    /* renamed from: c */
    public ViewTreeObserver.OnPreDrawListener f32627c;

    /* renamed from: d */
    public View.OnAttachStateChangeListener f32628d;

    /* renamed from: e */
    public boolean f32629e;

    /* renamed from: f */
    public boolean f32630f;

    /* renamed from: g */
    public final Runnable f32631g;

    /* renamed from: h */
    private final Rect f32632h;

    /* renamed from: i */
    private final Rect f32633i;

    /* renamed from: j */
    private final Context f32634j;

    /* renamed from: k */
    private final AbstractC9609a f32635k;

    /* renamed from: l */
    private final float f32636l;

    /* renamed from: m */
    private boolean f32637m;

    /* renamed from: com.explorestack.iab.utils.o$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/o$a.class */
    public interface AbstractC9609a {
        /* renamed from: a */
        void mo24021a();
    }

    public C9605o(Context context, View view, AbstractC9609a abstractC9609a) {
        this(context, view, abstractC9609a, 0.1f);
    }

    public C9605o(Context context, View view, AbstractC9609a abstractC9609a, float f) {
        this.f32632h = new Rect();
        this.f32633i = new Rect();
        this.f32629e = false;
        this.f32637m = false;
        this.f32630f = false;
        this.f32631g = new Runnable() { // from class: com.explorestack.iab.utils.o.1
            @Override // java.lang.Runnable
            public final void run() {
                C9605o.this.m24028a();
                C9605o.this.f32630f = false;
            }
        };
        this.f32634j = context;
        this.f32626b = view;
        this.f32635k = abstractC9609a;
        this.f32636l = f;
    }

    /* renamed from: a */
    private void m24026a(String str) {
        if (!this.f32637m) {
            this.f32637m = true;
            MraidLog.m24185d(f32625a, str);
        }
        m24025a(false);
    }

    /* renamed from: a */
    private void m24025a(boolean z) {
        if (this.f32629e != z) {
            this.f32629e = z;
            this.f32635k.mo24021a();
        }
    }

    /* renamed from: b */
    private void m24024b() {
        this.f32637m = false;
        m24025a(true);
    }

    /* renamed from: c */
    static /* synthetic */ void m24022c(C9605o c9605o) {
        if (!c9605o.f32630f) {
            c9605o.f32630f = true;
            Utils.m24099c(c9605o.f32631g);
        }
    }

    /* renamed from: a */
    public final void m24028a() {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.f32626b.getVisibility() != 0) {
            m24026a("Visibility != View.VISIBLE");
        } else if (this.f32626b.getParent() == null) {
            m24026a("No parent");
        } else if (!this.f32626b.getGlobalVisibleRect(this.f32632h)) {
            m24026a("Can't get global visible rect");
        } else if (Utils.m24111a(this.f32626b)) {
            m24026a("View is transparent (alpha = 0)");
        } else {
            float width = this.f32626b.getWidth() * this.f32626b.getHeight();
            if (width <= BitmapDescriptorFactory.HUE_RED) {
                m24026a("Ad View width or height is zero, show wasn't tracked");
                return;
            }
            float width2 = (this.f32632h.width() * this.f32632h.height()) / width;
            if (width2 < this.f32636l) {
                m24026a("Ad View is not completely visible (" + width2 + "), show wasn't tracked");
                return;
            }
            View m24165b = C9566f.m24165b(this.f32634j, this.f32626b);
            if (m24165b == null) {
                m24026a("Can't obtain root view");
                return;
            }
            m24165b.getGlobalVisibleRect(this.f32633i);
            if (!Rect.intersects(this.f32632h, this.f32633i)) {
                m24026a("Ad View is out of current window, show wasn't tracked");
                return;
            }
            m24024b();
        }
    }
}
