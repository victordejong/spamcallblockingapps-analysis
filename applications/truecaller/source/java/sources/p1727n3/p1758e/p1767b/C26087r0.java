package p1727n3.p1758e.p1767b;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: n3.e.b.r0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/r0.class */
public final class C26087r0 {

    /* renamed from: a */
    public final List<C25891a1> f72790a;

    /* renamed from: b */
    public final List<C25891a1> f72791b;

    /* renamed from: c */
    public final List<C25891a1> f72792c;

    /* renamed from: d */
    public final long f72793d;

    /* renamed from: n3.e.b.r0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/r0$a.class */
    public static class C26088a {

        /* renamed from: a */
        public final List<C25891a1> f72794a;

        /* renamed from: b */
        public final List<C25891a1> f72795b;

        /* renamed from: c */
        public final List<C25891a1> f72796c;

        /* renamed from: d */
        public long f72797d = 5000;

        public C26088a(C25891a1 c25891a1, int i) {
            ArrayList arrayList = new ArrayList();
            this.f72794a = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f72795b = arrayList2;
            ArrayList arrayList3 = new ArrayList();
            this.f72796c = arrayList3;
            boolean z = true;
            MediaSessionCompat.m43214o(true, "Point cannot be null.");
            MediaSessionCompat.m43214o((i < 1 || i > 7) ? false : z, "Invalid metering mode " + i);
            if ((i & 1) != 0) {
                arrayList.add(c25891a1);
            }
            if ((i & 2) != 0) {
                arrayList2.add(c25891a1);
            }
            if ((i & 4) != 0) {
                arrayList3.add(c25891a1);
            }
        }
    }

    public C26087r0(C26088a c26088a) {
        this.f72790a = Collections.unmodifiableList(c26088a.f72794a);
        this.f72791b = Collections.unmodifiableList(c26088a.f72795b);
        this.f72792c = Collections.unmodifiableList(c26088a.f72796c);
        this.f72793d = c26088a.f72797d;
    }
}
