package p012b.p076s.p078b.p079a.p080a1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: b.s.b.a.a1.x */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/x.class */
public final class C1194x implements AbstractC1174i {

    /* renamed from: a */
    public final Handler f4764a;

    public C1194x(Handler handler) {
        this.f4764a = handler;
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1174i
    /* renamed from: a */
    public Looper mo34310a() {
        return this.f4764a.getLooper();
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1174i
    /* renamed from: a */
    public Message mo34308a(int i, int i2, int i3) {
        return this.f4764a.obtainMessage(i, i2, i3);
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1174i
    /* renamed from: a */
    public Message mo34307a(int i, int i2, int i3, Object obj) {
        return this.f4764a.obtainMessage(i, i2, i3, obj);
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1174i
    /* renamed from: a */
    public Message mo34305a(int i, Object obj) {
        return this.f4764a.obtainMessage(i, obj);
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1174i
    /* renamed from: a */
    public boolean mo34309a(int i) {
        return this.f4764a.sendEmptyMessage(i);
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1174i
    /* renamed from: a */
    public boolean mo34306a(int i, long j) {
        return this.f4764a.sendEmptyMessageAtTime(i, j);
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1174i
    /* renamed from: b */
    public void mo34304b(int i) {
        this.f4764a.removeMessages(i);
    }
}
