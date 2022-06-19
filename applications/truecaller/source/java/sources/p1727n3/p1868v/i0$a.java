package p1727n3.p1868v;

import androidx.lifecycle.LiveData;
/* renamed from: n3.v.i0$a */
/* loaded from: classes-dex2jar.jar:n3/v/i0$a.class */
public class i0$a<V> implements AbstractC27012l0<V> {

    /* renamed from: a */
    public final LiveData<V> f75531a;

    /* renamed from: b */
    public final AbstractC27012l0<? super V> f75532b;

    /* renamed from: c */
    public int f75533c = -1;

    public i0$a(LiveData<V> liveData, AbstractC27012l0<? super V> abstractC27012l0) {
        this.f75531a = liveData;
        this.f75532b = abstractC27012l0;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(V v) {
        int i = this.f75533c;
        int i2 = this.f75531a.f916g;
        if (i != i2) {
            this.f75533c = i2;
            this.f75532b.onChanged(v);
        }
    }
}
