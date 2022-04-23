package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.Context;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
/* renamed from: h.i.a.e.d.n.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/l.class */
public class C7001l {

    /* renamed from: a */
    public final SparseIntArray f17140a = new SparseIntArray();

    /* renamed from: b */
    public C6793d f17141b;

    public C7001l(@NonNull C6793d dVar) {
        C7021t.m21290a(dVar);
        this.f17141b = dVar;
    }

    /* renamed from: a */
    public int m21331a(@NonNull Context context, @NonNull C6805a.AbstractC6816f fVar) {
        int i;
        C7021t.m21290a(context);
        C7021t.m21290a(fVar);
        if (!fVar.m21852d()) {
            return 0;
        }
        int h = fVar.mo16071h();
        int i2 = this.f17140a.get(h, -1);
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        while (true) {
            i = i2;
            if (i3 < this.f17140a.size()) {
                int keyAt = this.f17140a.keyAt(i3);
                if (keyAt > h && this.f17140a.get(keyAt) == 0) {
                    i = 0;
                    break;
                }
                i3++;
            } else {
                break;
            }
        }
        int i4 = i;
        if (i == -1) {
            i4 = this.f17141b.mo21893a(context, h);
        }
        this.f17140a.put(h, i4);
        return i4;
    }

    /* renamed from: a */
    public void m21332a() {
        this.f17140a.clear();
    }
}
