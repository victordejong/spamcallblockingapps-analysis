package com.jjoe64.graphview;

import android.graphics.Paint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.jjoe64.graphview.p455a.AbstractC16559h;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.jjoe64.graphview.h */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/h.class */
public final class C16574h {

    /* renamed from: a */
    protected final GraphView f58320a;

    /* renamed from: f */
    protected AbstractC16566d f58325f;

    /* renamed from: h */
    Paint f58327h;

    /* renamed from: i */
    String f58328i;

    /* renamed from: j */
    public float f58329j;

    /* renamed from: k */
    public int f58330k;

    /* renamed from: c */
    boolean f58322c = true;

    /* renamed from: d */
    protected C16573g f58323d = new C16573g();

    /* renamed from: e */
    protected C16573g f58324e = new C16573g();

    /* renamed from: g */
    protected double f58326g = Double.NaN;

    /* renamed from: b */
    protected List<AbstractC16559h> f58321b = new ArrayList();

    public C16574h(GraphView graphView) {
        this.f58320a = graphView;
        C16560b c16560b = new C16560b();
        this.f58325f = c16560b;
        c16560b.mo6981a(graphView.f58151c);
    }

    /* renamed from: a */
    public final List<AbstractC16559h> m6989a() {
        return this.f58321b;
    }

    /* renamed from: b */
    public final double m6988b() {
        return this.f58324e.f58319d;
    }

    /* renamed from: c */
    public final double m6987c() {
        return this.f58324e.f58318c;
    }

    /* renamed from: d */
    public final AbstractC16566d m6986d() {
        return this.f58325f;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v23, types: [double] */
    /* JADX WARN: Type inference failed for: r0v39, types: [double] */
    /* JADX WARN: Type inference failed for: r0v49, types: [double] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* JADX WARN: Type inference failed for: r0v73, types: [double] */
    /* JADX WARN: Type inference failed for: r0v82, types: [double] */
    /* JADX WARN: Type inference failed for: r0v91, types: [double] */
    /* renamed from: e */
    public final void m6985e() {
        List<AbstractC16559h> list = this.f58321b;
        this.f58323d.m6991a(0.0d, 0.0d, 0.0d, 0.0d);
        if (list.isEmpty() || list.get(0).mo7023h()) {
            return;
        }
        char mo7030b = list.get(0).mo7030b();
        for (AbstractC16559h abstractC16559h : list) {
            if (!abstractC16559h.mo7023h() && mo7030b > abstractC16559h.mo7030b()) {
                mo7030b = abstractC16559h.mo7030b();
            }
        }
        this.f58323d.f58316a = mo7030b;
        char mo7028c = list.get(0).mo7028c();
        for (AbstractC16559h abstractC16559h2 : list) {
            if (!abstractC16559h2.mo7023h() && mo7028c < abstractC16559h2.mo7028c()) {
                mo7028c = abstractC16559h2.mo7028c();
            }
        }
        this.f58323d.f58317b = mo7028c;
        if (list.isEmpty() || list.get(0).mo7023h()) {
            return;
        }
        char mo7027d = list.get(0).mo7027d();
        for (AbstractC16559h abstractC16559h3 : list) {
            if (!abstractC16559h3.mo7023h() && mo7027d > abstractC16559h3.mo7027d()) {
                mo7027d = abstractC16559h3.mo7027d();
            }
        }
        this.f58323d.f58319d = mo7027d;
        char mo7026e = list.get(0).mo7026e();
        for (AbstractC16559h abstractC16559h4 : list) {
            if (!abstractC16559h4.mo7023h() && mo7026e < abstractC16559h4.mo7026e()) {
                mo7026e = abstractC16559h4.mo7026e();
            }
        }
        this.f58323d.f58318c = mo7026e;
    }

    /* renamed from: f */
    public final float m6984f() {
        String str = this.f58328i;
        return (str == null || str.length() == 0) ? BitmapDescriptorFactory.HUE_RED : this.f58329j;
    }
}
