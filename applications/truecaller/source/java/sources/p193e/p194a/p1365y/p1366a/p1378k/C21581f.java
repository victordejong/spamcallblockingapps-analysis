package p193e.p194a.p1365y.p1366a.p1378k;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import java.util.Objects;
import p1727n3.p1825k0.p1826a.AbstractC26640a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.y.a.k.f */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/k/f.class */
public final class C21581f extends AbstractC26640a {

    /* renamed from: c */
    public final String[] f60228c;

    public C21581f(String[] strArr) {
        l.e(strArr, "listOfTips");
        this.f60228c = strArr;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: a */
    public void mo1177a(ViewGroup viewGroup, int i, Object obj) {
        l.e(viewGroup, "container");
        l.e(obj, "obj");
        viewGroup.removeView((View) obj);
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: c */
    public int mo1537c() {
        return this.f60228c.length;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: e */
    public float mo1535e(int i) {
        return 0.8f;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: f */
    public Object mo1534f(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "container").inflate(C3909R.layout.tips_item_text, viewGroup, false);
        Objects.requireNonNull(inflate, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) inflate).setText(this.f60228c[i]);
        viewGroup.addView(inflate);
        return inflate;
    }

    @Override // p1727n3.p1825k0.p1826a.AbstractC26640a
    /* renamed from: g */
    public boolean mo1148g(View view, Object obj) {
        l.e(view, ViewAction.VIEW);
        l.e(obj, "obj");
        return l.a(view, obj);
    }
}
