package p193e.p194a.p195a.p200c.p221r8;

import android.util.SparseArray;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
/* renamed from: e.a.a.c.r8.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/r8/b.class */
public class C5700b {

    /* renamed from: a */
    public SparseArray<AbstractC5702d> f19149a = new SparseArray<>();

    /* renamed from: a */
    public C5701c m32780a(int i) {
        AbstractC5702d abstractC5702d = this.f19149a.get(i);
        AssertionUtil.isNotNull(abstractC5702d, new String[0]);
        C5701c m32779c = abstractC5702d.m32779c();
        m32779c.f19150a.setTag(C2752R.C2754id.tag_cacher, abstractC5702d);
        return m32779c;
    }
}
