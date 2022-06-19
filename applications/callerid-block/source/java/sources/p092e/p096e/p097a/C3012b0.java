package p092e.p096e.p097a;

import android.os.Handler;
import android.util.SparseArray;
import java.util.List;
/* renamed from: e.e.a.b0 */
/* loaded from: classes2-dex2jar.jar:e/e/a/b0.class */
class C3012b0 implements AbstractC3091v {

    /* renamed from: a */
    private final SparseArray<Handler> f12611a = new SparseArray<>();

    /* renamed from: e */
    private void m583e(Handler handler) {
        handler.sendEmptyMessage(2);
    }

    /* renamed from: f */
    private void m582f(Handler handler) {
        handler.sendEmptyMessage(3);
    }

    @Override // p092e.p096e.p097a.AbstractC3091v
    /* renamed from: a */
    public int mo269a() {
        return this.f12611a.size();
    }

    @Override // p092e.p096e.p097a.AbstractC3091v
    /* renamed from: b */
    public void mo268b() {
        for (int i = 0; i < this.f12611a.size(); i++) {
            m583e(this.f12611a.get(this.f12611a.keyAt(i)));
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3091v
    /* renamed from: c */
    public boolean mo267c(int i) {
        return this.f12611a.get(i) != null;
    }

    @Override // p092e.p096e.p097a.AbstractC3091v
    /* renamed from: d */
    public void mo266d(List<Integer> list) {
        for (Integer num : list) {
            m582f(this.f12611a.get(num.intValue()));
        }
    }
}
