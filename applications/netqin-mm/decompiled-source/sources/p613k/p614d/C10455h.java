package p613k.p614d;

import android.view.animation.Interpolator;
import java.util.Arrays;
import java.util.List;
import p613k.p614d.AbstractC10453g;
/* renamed from: k.d.h */
/* loaded from: classes2-dex2jar.jar:k/d/h.class */
public class C10455h implements AbstractC10456i {

    /* renamed from: a */
    public int f38693a;

    /* renamed from: b */
    public AbstractC10453g f38694b;

    /* renamed from: c */
    public Interpolator f38695c;

    /* renamed from: d */
    public List<AbstractC10453g> f38696d;

    /* renamed from: e */
    public AbstractC10464n f38697e;

    public C10455h(AbstractC10453g... gVarArr) {
        this.f38693a = gVarArr.length;
        this.f38696d = Arrays.asList(gVarArr);
        AbstractC10453g gVar = gVarArr[0];
        AbstractC10453g gVar2 = gVarArr[this.f38693a - 1];
        this.f38694b = gVar2;
        this.f38695c = gVar2.m116e();
    }

    /* renamed from: a */
    public static C10455h m110a(float... fArr) {
        int length = fArr.length;
        AbstractC10453g.C10454a[] aVarArr = new AbstractC10453g.C10454a[Math.max(length, 2)];
        if (length == 1) {
            aVarArr[0] = (AbstractC10453g.C10454a) AbstractC10453g.m117c(0.0f);
            aVarArr[1] = (AbstractC10453g.C10454a) AbstractC10453g.m121a(1.0f, fArr[0]);
            Float.isNaN(fArr[0]);
        } else {
            aVarArr[0] = (AbstractC10453g.C10454a) AbstractC10453g.m121a(0.0f, fArr[0]);
            for (int i = 1; i < length; i++) {
                aVarArr[i] = (AbstractC10453g.C10454a) AbstractC10453g.m121a(i / (length - 1), fArr[i]);
                Float.isNaN(fArr[i]);
            }
        }
        return new C10451e(aVarArr);
    }

    @Override // p613k.p614d.AbstractC10456i
    /* renamed from: M */
    public List<AbstractC10453g> mo109M() {
        return this.f38696d;
    }

    @Override // p613k.p614d.AbstractC10456i
    /* renamed from: a */
    public void mo108a(AbstractC10464n nVar) {
        this.f38697e = nVar;
    }

    public String toString() {
        String str = " ";
        for (int i = 0; i < this.f38693a; i++) {
            str = str + this.f38696d.get(i).mo112g() + "  ";
        }
        return str;
    }
}
