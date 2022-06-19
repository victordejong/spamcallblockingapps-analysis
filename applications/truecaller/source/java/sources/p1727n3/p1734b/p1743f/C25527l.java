package p1727n3.p1734b.p1743f;

import android.content.ClipData;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputContentInfo;
import p1727n3.p1807k.p1821i.C26564c;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.p1823g0.AbstractC26598d;
import p1727n3.p1807k.p1821i.p1823g0.C26599e;
/* renamed from: n3.b.f.l */
/* loaded from: classes-dex2jar.jar:n3/b/f/l.class */
public class C25527l implements AbstractC26598d {

    /* renamed from: a */
    public final /* synthetic */ View f71416a;

    public C25527l(View view) {
        this.f71416a = view;
    }

    @Override // p1727n3.p1807k.p1821i.p1823g0.AbstractC26598d
    /* renamed from: a */
    public boolean mo1605a(C26599e c26599e, int i, Bundle bundle) {
        boolean z = false;
        Bundle bundle2 = bundle;
        if (Build.VERSION.SDK_INT >= 25) {
            bundle2 = bundle;
            if ((i & 1) != 0) {
                try {
                    c26599e.f74489a.mo1602c();
                    InputContentInfo inputContentInfo = (InputContentInfo) c26599e.f74489a.mo1604a();
                    Bundle bundle3 = bundle == null ? new Bundle() : new Bundle(bundle);
                    bundle3.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo);
                    bundle2 = bundle3;
                } catch (Exception e) {
                    return false;
                }
            }
        }
        C26564c.C26565a c26565a = new C26564c.C26565a(new ClipData(c26599e.f74489a.getDescription(), new ClipData.Item(c26599e.f74489a.mo1603b())), 2);
        c26565a.f74423d = c26599e.f74489a.mo1601d();
        c26565a.f74424e = bundle2;
        if (C26614s.m1569l(this.f71416a, new C26564c(c26565a)) == null) {
            z = true;
        }
        return z;
    }
}
