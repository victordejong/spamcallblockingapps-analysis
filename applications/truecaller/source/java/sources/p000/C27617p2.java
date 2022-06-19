package p000;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.truecaller.timezone.C4631R;
import p1727n3.p1807k.p1809b.C26467a;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: p2 */
/* loaded from: classes5-dex2jar.jar:p2.class */
public final class C27617p2 extends m implements a<Drawable> {

    /* renamed from: b */
    public final /* synthetic */ int f77845b;

    /* renamed from: c */
    public final /* synthetic */ Object f77846c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C27617p2(int i, Object obj) {
        super(0);
        this.f77845b = i;
        this.f77846c = obj;
    }

    public final Object invoke() {
        int i = this.f77845b;
        if (i == 0) {
            Context context = (Context) this.f77846c;
            int i2 = C4631R.C4632drawable.ic_tcx_moon_with_star_24dp;
            Object obj = C26467a.f74235a;
            return C26467a.C26470c.m1789b(context, i2);
        } else if (i != 1) {
            throw null;
        } else {
            Context context2 = (Context) this.f77846c;
            int i3 = C4631R.C4632drawable.ic_tcx_sun_24dp;
            Object obj2 = C26467a.f74235a;
            return C26467a.C26470c.m1789b(context2, i3);
        }
    }
}
