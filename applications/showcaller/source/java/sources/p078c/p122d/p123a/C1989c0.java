package p078c.p122d.p123a;

import android.os.Handler;
import android.util.SparseArray;
import java.util.List;
/* renamed from: c.d.a.c0 */
/* loaded from: classes2-dex2jar.jar:c/d/a/c0.class */
class C1989c0 implements AbstractC2065w {

    /* renamed from: a */
    private final SparseArray<Handler> f7098a = new SparseArray<>();

    /* renamed from: e */
    private void m28362e(Handler handler) {
        handler.sendEmptyMessage(2);
    }

    /* renamed from: f */
    private void m28361f(Handler handler) {
        handler.sendEmptyMessage(3);
    }

    @Override // p078c.p122d.p123a.AbstractC2065w
    /* renamed from: a */
    public int mo28127a() {
        return this.f7098a.size();
    }

    @Override // p078c.p122d.p123a.AbstractC2065w
    /* renamed from: b */
    public void mo28126b() {
        for (int i = 0; i < this.f7098a.size(); i++) {
            m28362e(this.f7098a.get(this.f7098a.keyAt(i)));
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2065w
    /* renamed from: c */
    public void mo28125c(List<Integer> list) {
        for (Integer num : list) {
            m28361f(this.f7098a.get(num.intValue()));
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2065w
    /* renamed from: d */
    public boolean mo28124d(int i) {
        return this.f7098a.get(i) != null;
    }
}
