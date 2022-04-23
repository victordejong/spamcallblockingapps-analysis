package com.jjoe64.graphview.helper;

import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.b;
import com.jjoe64.graphview.d;
import com.jjoe64.graphview.j;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/helper/a.class */
public final class a implements d {

    /* renamed from: a  reason: collision with root package name */
    protected j f33595a;

    /* renamed from: b  reason: collision with root package name */
    protected String[] f33596b;

    /* renamed from: c  reason: collision with root package name */
    protected String[] f33597c;

    /* renamed from: d  reason: collision with root package name */
    protected d f33598d;
    protected final GraphView e;

    public a(GraphView graphView) {
        this.e = graphView;
        a(null, null, null);
    }

    public a(GraphView graphView, d dVar) {
        this.e = graphView;
        a(null, null, dVar);
    }

    public a(GraphView graphView, String[] strArr, String[] strArr2) {
        this.e = graphView;
        a(strArr, strArr2, null);
    }

    public a(GraphView graphView, String[] strArr, String[] strArr2, d dVar) {
        this.e = graphView;
        a(strArr, strArr2, dVar);
    }

    private void a() {
        this.f33598d.a(this.f33595a);
        String[] strArr = this.f33596b;
        if (strArr != null) {
            if (strArr.length >= 2) {
                this.e.f33522b.f33564d = this.f33596b.length;
            } else {
                throw new IllegalStateException("You need at least 2 vertical labels if you use static label formatter.");
            }
        }
        String[] strArr2 = this.f33597c;
        if (strArr2 == null) {
            return;
        }
        if (strArr2.length >= 2) {
            this.e.f33522b.e = this.f33597c.length;
            return;
        }
        throw new IllegalStateException("You need at least 2 horizontal labels if you use static label formatter.");
    }

    private void a(String[] strArr, String[] strArr2, d dVar) {
        this.f33598d = dVar;
        if (dVar == null) {
            this.f33598d = new b();
        }
        this.f33597c = strArr;
        this.f33596b = strArr2;
    }

    @Override // com.jjoe64.graphview.d
    public final String a(double d2, boolean z) {
        if (z && this.f33597c != null) {
            double a2 = this.f33595a.a(false);
            double b2 = (d2 - a2) / (this.f33595a.b(false) - a2);
            String[] strArr = this.f33597c;
            return strArr[(int) (b2 * (strArr.length - 1))];
        } else if (z || this.f33596b == null) {
            return this.f33598d.a(d2, z);
        } else {
            double c2 = this.f33595a.c(false);
            double d3 = (d2 - c2) / (this.f33595a.d(false) - c2);
            String[] strArr2 = this.f33596b;
            return strArr2[(int) (d3 * (strArr2.length - 1))];
        }
    }

    @Override // com.jjoe64.graphview.d
    public final void a(j jVar) {
        this.f33595a = jVar;
        a();
    }

    public final void a(String[] strArr) {
        this.f33597c = strArr;
        a();
    }
}
