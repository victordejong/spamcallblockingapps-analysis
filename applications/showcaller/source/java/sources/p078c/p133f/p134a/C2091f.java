package p078c.p133f.p134a;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;
import p078c.p133f.p134a.AbstractC2089e;
/* renamed from: c.f.a.f */
/* loaded from: classes2-dex2jar.jar:c/f/a/f.class */
public class C2091f {

    /* renamed from: a */
    int f7219a;

    /* renamed from: b */
    AbstractC2089e f7220b;

    /* renamed from: c */
    AbstractC2089e f7221c;

    /* renamed from: d */
    Interpolator f7222d;

    /* renamed from: e */
    ArrayList<AbstractC2089e> f7223e;

    /* renamed from: f */
    AbstractC2095h f7224f;

    public C2091f(AbstractC2089e... abstractC2089eArr) {
        this.f7219a = abstractC2089eArr.length;
        ArrayList<AbstractC2089e> arrayList = new ArrayList<>();
        this.f7223e = arrayList;
        arrayList.addAll(Arrays.asList(abstractC2089eArr));
        this.f7220b = this.f7223e.get(0);
        AbstractC2089e abstractC2089e = this.f7223e.get(this.f7219a - 1);
        this.f7221c = abstractC2089e;
        this.f7222d = abstractC2089e.m28067c();
    }

    /* renamed from: c */
    public static C2091f m28057c(float... fArr) {
        int length = fArr.length;
        AbstractC2089e.C2090a[] c2090aArr = new AbstractC2089e.C2090a[Math.max(length, 2)];
        if (length == 1) {
            c2090aArr[0] = (AbstractC2089e.C2090a) AbstractC2089e.m28066g(0.0f);
            c2090aArr[1] = (AbstractC2089e.C2090a) AbstractC2089e.m28065h(1.0f, fArr[0]);
        } else {
            c2090aArr[0] = (AbstractC2089e.C2090a) AbstractC2089e.m28065h(0.0f, fArr[0]);
            for (int i = 1; i < length; i++) {
                c2090aArr[i] = (AbstractC2089e.C2090a) AbstractC2089e.m28065h(i / (length - 1), fArr[i]);
            }
        }
        return new C2087c(c2090aArr);
    }

    /* renamed from: a */
    public C2091f mo28059a() {
        throw null;
    }

    /* renamed from: b */
    public Object mo28058b(float f) {
        throw null;
    }

    /* renamed from: d */
    public void m28056d(AbstractC2095h abstractC2095h) {
        this.f7224f = abstractC2095h;
    }

    public String toString() {
        String str = " ";
        for (int i = 0; i < this.f7219a; i++) {
            str = str + this.f7223e.get(i).mo28062d() + "  ";
        }
        return str;
    }
}
