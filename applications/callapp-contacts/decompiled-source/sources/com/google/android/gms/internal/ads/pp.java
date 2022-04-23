package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import androidx.b.b;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pp.class */
public final class pp extends qa {
    private static final Set<String> t;

    /* renamed from: a  reason: collision with root package name */
    String f28291a = "top-right";

    /* renamed from: b  reason: collision with root package name */
    boolean f28292b = true;

    /* renamed from: c  reason: collision with root package name */
    int f28293c = 0;

    /* renamed from: d  reason: collision with root package name */
    int f28294d = 0;
    int e = -1;
    int f = 0;
    int g = 0;
    int h = -1;
    final Object i = new Object();
    final adt j;
    final Activity k;
    afh l;
    ImageView m;
    LinearLayout n;
    pz o;
    PopupWindow p;
    RelativeLayout q;
    ViewGroup r;

    static {
        b bVar = new b(7);
        Collections.addAll(bVar, "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
        t = Collections.unmodifiableSet(bVar);
    }

    public pp(adt adtVar, pz pzVar) {
        super(adtVar, "resize");
        this.j = adtVar;
        this.k = adtVar.d();
        this.o = pzVar;
    }

    public final void a(boolean z) {
        synchronized (this.i) {
            PopupWindow popupWindow = this.p;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.q.removeView(this.j.s());
                ViewGroup viewGroup = this.r;
                if (viewGroup != null) {
                    viewGroup.removeView(this.m);
                    this.r.addView(this.j.s());
                    this.j.a(this.l);
                }
                if (z) {
                    c("default");
                    pz pzVar = this.o;
                    if (pzVar != null) {
                        pzVar.b();
                    }
                }
                this.p = null;
                this.q = null;
                this.r = null;
                this.n = null;
            }
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.i) {
            z = this.p != null;
        }
        return z;
    }
}
