package p1727n3.p1807k.p1821i;

import android.view.View;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.k.i.w */
/* loaded from: classes-dex2jar.jar:n3/k/i/w.class */
public class C26622w extends C26614s.AbstractC26616b<Boolean> {
    public C26622w(int i, Class cls, int i2) {
        super(i, cls, i2);
    }

    @Override // p1727n3.p1807k.p1821i.C26614s.AbstractC26616b
    /* renamed from: b */
    public Boolean mo1555b(View view) {
        return Boolean.valueOf(view.isAccessibilityHeading());
    }

    @Override // p1727n3.p1807k.p1821i.C26614s.AbstractC26616b
    /* renamed from: c */
    public void mo1554c(View view, Boolean bool) {
        view.setAccessibilityHeading(bool.booleanValue());
    }

    @Override // p1727n3.p1807k.p1821i.C26614s.AbstractC26616b
    /* renamed from: f */
    public boolean mo1553f(Boolean bool, Boolean bool2) {
        return !m1561a(bool, bool2);
    }
}
