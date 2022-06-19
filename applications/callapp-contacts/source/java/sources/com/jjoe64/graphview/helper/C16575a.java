package com.jjoe64.graphview.helper;

import com.jjoe64.graphview.AbstractC16566d;
import com.jjoe64.graphview.C16560b;
import com.jjoe64.graphview.C16577j;
import com.jjoe64.graphview.GraphView;
/* renamed from: com.jjoe64.graphview.helper.a */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/helper/a.class */
public final class C16575a implements AbstractC16566d {

    /* renamed from: a */
    protected C16577j f58331a;

    /* renamed from: b */
    protected String[] f58332b;

    /* renamed from: c */
    protected String[] f58333c;

    /* renamed from: d */
    protected AbstractC16566d f58334d;

    /* renamed from: e */
    protected final GraphView f58335e;

    public C16575a(GraphView graphView) {
        this.f58335e = graphView;
        m6979a(null, null, null);
    }

    public C16575a(GraphView graphView, AbstractC16566d abstractC16566d) {
        this.f58335e = graphView;
        m6979a(null, null, abstractC16566d);
    }

    public C16575a(GraphView graphView, String[] strArr, String[] strArr2) {
        this.f58335e = graphView;
        m6979a(strArr, strArr2, null);
    }

    public C16575a(GraphView graphView, String[] strArr, String[] strArr2, AbstractC16566d abstractC16566d) {
        this.f58335e = graphView;
        m6979a(strArr, strArr2, abstractC16566d);
    }

    /* renamed from: a */
    private void m6983a() {
        this.f58334d.mo6981a(this.f58331a);
        String[] strArr = this.f58332b;
        if (strArr != null) {
            if (strArr.length < 2) {
                throw new IllegalStateException("You need at least 2 vertical labels if you use static label formatter.");
            }
            this.f58335e.f58150b.f58250d = this.f58332b.length;
        }
        String[] strArr2 = this.f58333c;
        if (strArr2 != null) {
            if (strArr2.length < 2) {
                throw new IllegalStateException("You need at least 2 horizontal labels if you use static label formatter.");
            }
            this.f58335e.f58150b.f58251e = this.f58333c.length;
        }
    }

    /* renamed from: a */
    private void m6979a(String[] strArr, String[] strArr2, AbstractC16566d abstractC16566d) {
        this.f58334d = abstractC16566d;
        if (abstractC16566d == null) {
            this.f58334d = new C16560b();
        }
        this.f58333c = strArr;
        this.f58332b = strArr2;
    }

    @Override // com.jjoe64.graphview.AbstractC16566d
    /* renamed from: a */
    public final String mo6982a(double d, boolean z) {
        if (z && this.f58333c != null) {
            double m6972a = this.f58331a.m6972a(false);
            double m6968b = (d - m6972a) / (this.f58331a.m6968b(false) - m6972a);
            String[] strArr = this.f58333c;
            return strArr[(int) (m6968b * (strArr.length - 1))];
        } else if (z || this.f58332b == null) {
            return this.f58334d.mo6982a(d, z);
        } else {
            double m6965c = this.f58331a.m6965c(false);
            double m6962d = (d - m6965c) / (this.f58331a.m6962d(false) - m6965c);
            String[] strArr2 = this.f58332b;
            return strArr2[(int) (m6962d * (strArr2.length - 1))];
        }
    }

    @Override // com.jjoe64.graphview.AbstractC16566d
    /* renamed from: a */
    public final void mo6981a(C16577j c16577j) {
        this.f58331a = c16577j;
        m6983a();
    }

    /* renamed from: a */
    public final void m6980a(String[] strArr) {
        this.f58333c = strArr;
        m6983a();
    }
}
