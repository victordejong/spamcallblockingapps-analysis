package com.jjoe64.graphview;

import android.graphics.Paint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    protected final GraphView f33591a;
    protected d f;
    Paint h;
    String i;
    public float j;
    public int k;

    /* renamed from: c  reason: collision with root package name */
    boolean f33593c = true;

    /* renamed from: d  reason: collision with root package name */
    protected g f33594d = new g();
    protected g e = new g();
    protected double g = Double.NaN;

    /* renamed from: b  reason: collision with root package name */
    protected List<com.jjoe64.graphview.a.h> f33592b = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(GraphView graphView) {
        this.f33591a = graphView;
        b bVar = new b();
        this.f = bVar;
        bVar.a(graphView.f33523c);
    }

    public final List<com.jjoe64.graphview.a.h> a() {
        return this.f33592b;
    }

    public final double b() {
        return this.e.f33590d;
    }

    public final double c() {
        return this.e.f33589c;
    }

    public final d d() {
        return this.f;
    }

    public final void e() {
        List<com.jjoe64.graphview.a.h> list = this.f33592b;
        this.f33594d.a(0.0d, 0.0d, 0.0d, 0.0d);
        if (!(list.isEmpty() || list.get(0).h())) {
            double b2 = list.get(0).b();
            for (com.jjoe64.graphview.a.h hVar : list) {
                if (!hVar.h() && b2 > hVar.b()) {
                    b2 = hVar.b();
                }
            }
            this.f33594d.f33587a = b2;
            double c2 = list.get(0).c();
            for (com.jjoe64.graphview.a.h hVar2 : list) {
                if (!hVar2.h() && c2 < hVar2.c()) {
                    c2 = hVar2.c();
                }
            }
            this.f33594d.f33588b = c2;
            if (!(list.isEmpty() || list.get(0).h())) {
                double d2 = list.get(0).d();
                for (com.jjoe64.graphview.a.h hVar3 : list) {
                    if (!hVar3.h() && d2 > hVar3.d()) {
                        d2 = hVar3.d();
                    }
                }
                this.f33594d.f33590d = d2;
                double e = list.get(0).e();
                for (com.jjoe64.graphview.a.h hVar4 : list) {
                    if (!hVar4.h() && e < hVar4.e()) {
                        e = hVar4.e();
                    }
                }
                this.f33594d.f33589c = e;
            }
        }
    }

    public final float f() {
        String str = this.i;
        return (str == null || str.length() == 0) ? BitmapDescriptorFactory.HUE_RED : this.j;
    }
}
