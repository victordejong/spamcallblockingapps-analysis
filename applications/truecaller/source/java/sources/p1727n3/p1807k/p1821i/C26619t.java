package p1727n3.p1807k.p1821i;

import android.view.View;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.k.i.t */
/* loaded from: classes-dex2jar.jar:n3/k/i/t.class */
public class C26619t extends C26614s.AbstractC26616b<Boolean> {
    public C26619t(int i, Class cls, int i2) {
        super(i, cls, i2);
    }

    @Override // p1727n3.p1807k.p1821i.C26614s.AbstractC26616b
    /* renamed from: b */
    public Boolean mo1555b(View view) {
        return Boolean.valueOf(view.isScreenReaderFocusable());
    }

    @Override // p1727n3.p1807k.p1821i.C26614s.AbstractC26616b
    /* renamed from: c */
    public void mo1554c(View view, Boolean bool) {
        view.setScreenReaderFocusable(bool.booleanValue());
    }

    @Override // p1727n3.p1807k.p1821i.C26614s.AbstractC26616b
    /* renamed from: f */
    public boolean mo1553f(Boolean bool, Boolean bool2) {
        return !m1561a(bool, bool2);
    }
}
