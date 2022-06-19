package p203p8;

import android.support.p012v4.media.C0082b;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: p8.d */
/* loaded from: classes2-dex2jar.jar:p8/d.class */
public class C4051d {

    /* renamed from: a */
    public int f12721a;

    /* renamed from: b */
    public Interpolator f12722b;

    /* renamed from: c */
    public ArrayList<AbstractC4049c> f12723c;

    /* renamed from: d */
    public AbstractC4071h f12724d;

    public C4051d(AbstractC4049c... abstractC4049cArr) {
        this.f12721a = abstractC4049cArr.length;
        ArrayList<AbstractC4049c> arrayList = new ArrayList<>();
        this.f12723c = arrayList;
        arrayList.addAll(Arrays.asList(abstractC4049cArr));
        this.f12723c.get(0);
        this.f12722b = this.f12723c.get(this.f12721a - 1).f12718b;
    }

    public String toString() {
        String str = " ";
        for (int i = 0; i < this.f12721a; i++) {
            StringBuilder m8752j = C0082b.m8752j(str);
            m8752j.append(this.f12723c.get(i).mo1462b());
            m8752j.append("  ");
            str = m8752j.toString();
        }
        return str;
    }
}
