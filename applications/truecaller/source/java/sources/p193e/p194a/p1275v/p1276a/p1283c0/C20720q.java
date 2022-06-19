package p193e.p194a.p1275v.p1276a.p1283c0;

import android.content.Context;
import android.widget.ImageView;
import p1727n3.p1807k.p1809b.C26467a;
import s1.z.c.l;
/* renamed from: e.a.v.a.c0.q */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c0/q.class */
public final class C20720q implements AbstractC20719p {

    /* renamed from: a */
    public final int f58329a;

    public C20720q(int i) {
        this.f58329a = i;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1283c0.AbstractC20719p
    /* renamed from: a */
    public void mo10803a(ImageView imageView) {
        l.e(imageView, "image");
        Context context = imageView.getContext();
        int i = this.f58329a;
        Object obj = C26467a.f74235a;
        imageView.setImageDrawable(C26467a.C26470c.m1789b(context, i));
    }
}
