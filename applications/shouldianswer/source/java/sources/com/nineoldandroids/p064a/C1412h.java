package com.nineoldandroids.p064a;

import android.view.View;
import com.nineoldandroids.p065b.p066a.C1440a;
import com.nineoldandroids.util.AbstractC1443c;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.nineoldandroids.a.h */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/h.class */
public final class C1412h extends C1432l {

    /* renamed from: h */
    private static final Map<String, AbstractC1443c> f3906h = new HashMap();

    /* renamed from: i */
    private Object f3907i;

    /* renamed from: j */
    private String f3908j;

    /* renamed from: k */
    private AbstractC1443c f3909k;

    static {
        f3906h.put("alpha", C1413i.f3910a);
        f3906h.put("pivotX", C1413i.f3911b);
        f3906h.put("pivotY", C1413i.f3912c);
        f3906h.put("translationX", C1413i.f3913d);
        f3906h.put("translationY", C1413i.f3914e);
        f3906h.put("rotation", C1413i.f3915f);
        f3906h.put("rotationX", C1413i.f3916g);
        f3906h.put("rotationY", C1413i.f3917h);
        f3906h.put("scaleX", C1413i.f3918i);
        f3906h.put("scaleY", C1413i.f3919j);
        f3906h.put("scrollX", C1413i.f3920k);
        f3906h.put("scrollY", C1413i.f3921l);
        f3906h.put("x", C1413i.f3922m);
        f3906h.put("y", C1413i.f3923n);
    }

    public C1412h() {
    }

    private C1412h(Object obj, String str) {
        this.f3907i = obj;
        m3719a(str);
    }

    /* renamed from: a */
    public static C1412h m3720a(Object obj, String str, float... fArr) {
        C1412h c1412h = new C1412h(obj, str);
        c1412h.mo3665a(fArr);
        return c1412h;
    }

    /* renamed from: a */
    public C1412h mo3662b(long j) {
        super.mo3662b(j);
        return this;
    }

    @Override // com.nineoldandroids.p064a.C1432l, com.nineoldandroids.p064a.AbstractC1403a
    /* renamed from: a */
    public void mo3672a() {
        super.mo3672a();
    }

    @Override // com.nineoldandroids.p064a.C1432l
    /* renamed from: a */
    public void mo3671a(float f) {
        super.mo3671a(f);
        int length = this.f3962f.length;
        for (int i = 0; i < length; i++) {
            this.f3962f[i].mo3676b(this.f3907i);
        }
    }

    /* renamed from: a */
    public void m3721a(AbstractC1443c abstractC1443c) {
        if (this.f3962f != null) {
            C1428j c1428j = this.f3962f[0];
            String m3681c = c1428j.m3681c();
            c1428j.m3691a(abstractC1443c);
            this.f3963g.remove(m3681c);
            this.f3963g.put(this.f3908j, c1428j);
        }
        if (this.f3909k != null) {
            this.f3908j = abstractC1443c.m3604a();
        }
        this.f3909k = abstractC1443c;
        this.f3961e = false;
    }

    /* renamed from: a */
    public void m3719a(String str) {
        if (this.f3962f != null) {
            C1428j c1428j = this.f3962f[0];
            String m3681c = c1428j.m3681c();
            c1428j.m3686a(str);
            this.f3963g.remove(m3681c);
            this.f3963g.put(str, c1428j);
        }
        this.f3908j = str;
        this.f3961e = false;
    }

    @Override // com.nineoldandroids.p064a.C1432l
    /* renamed from: a */
    public void mo3665a(float... fArr) {
        if (this.f3962f != null && this.f3962f.length != 0) {
            super.mo3665a(fArr);
            return;
        }
        AbstractC1443c abstractC1443c = this.f3909k;
        if (abstractC1443c != null) {
            m3664a(C1428j.m3690a(abstractC1443c, fArr));
        } else {
            m3664a(C1428j.m3684a(this.f3908j, fArr));
        }
    }

    @Override // com.nineoldandroids.p064a.C1432l
    /* renamed from: d */
    public void mo3657d() {
        if (!this.f3961e) {
            if (this.f3909k == null && C1440a.f3973a && (this.f3907i instanceof View) && f3906h.containsKey(this.f3908j)) {
                m3721a(f3906h.get(this.f3908j));
            }
            int length = this.f3962f.length;
            for (int i = 0; i < length; i++) {
                this.f3962f[i].m3687a(this.f3907i);
            }
            super.mo3657d();
        }
    }

    /* renamed from: e */
    public C1412h mo3654f() {
        return (C1412h) super.clone();
    }

    @Override // com.nineoldandroids.p064a.C1432l
    public String toString() {
        String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.f3907i;
        String str2 = str;
        if (this.f3962f != null) {
            int i = 0;
            while (true) {
                str2 = str;
                if (i >= this.f3962f.length) {
                    break;
                }
                str = str + "\n    " + this.f3962f[i].toString();
                i++;
            }
        }
        return str2;
    }
}
