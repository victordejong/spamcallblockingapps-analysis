package p1727n3.p1807k.p1821i;

import android.text.TextUtils;
import android.view.View;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.k.i.u */
/* loaded from: classes-dex2jar.jar:n3/k/i/u.class */
public class C26620u extends C26614s.AbstractC26616b<CharSequence> {
    public C26620u(int i, Class cls, int i2, int i3) {
        super(i, cls, i2, i3);
    }

    @Override // p1727n3.p1807k.p1821i.C26614s.AbstractC26616b
    /* renamed from: b */
    public CharSequence mo1555b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    @Override // p1727n3.p1807k.p1821i.C26614s.AbstractC26616b
    /* renamed from: c */
    public void mo1554c(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    @Override // p1727n3.p1807k.p1821i.C26614s.AbstractC26616b
    /* renamed from: f */
    public boolean mo1553f(CharSequence charSequence, CharSequence charSequence2) {
        return !TextUtils.equals(charSequence, charSequence2);
    }
}
