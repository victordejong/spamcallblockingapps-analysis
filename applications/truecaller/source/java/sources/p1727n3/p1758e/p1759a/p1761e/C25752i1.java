package p1727n3.p1758e.p1759a.p1761e;

import android.content.Context;
import android.graphics.Point;
import android.hardware.camera2.CaptureRequest;
import android.util.ArrayMap;
import android.util.Size;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.HashSet;
import n3.e.a.d.a;
import n3.e.b.j1.a1;
import n3.e.b.j1.q0;
import n3.e.b.j1.r1;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1764p.C25818e;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1764p.C25824k;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26010s1;
import p1727n3.p1758e.p1767b.p1768j1.C25940b1;
import p1727n3.p1758e.p1767b.p1768j1.C25949d1;
import p1727n3.p1758e.p1767b.p1768j1.C25956g0;
import p1727n3.p1758e.p1767b.p1768j1.C25972j1;
import p1727n3.p1758e.p1767b.p1768j1.C25992n;
import p1727n3.p1758e.p1767b.p1768j1.C25996o1;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.i1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/i1.class */
public final class C25752i1 implements AbstractC26010s1 {

    /* renamed from: b */
    public static final Size f72133b = new Size(1920, 1080);

    /* renamed from: a */
    public final WindowManager f72134a;

    public C25752i1(Context context) {
        this.f72134a = (WindowManager) context.getSystemService("window");
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26010s1
    /* renamed from: a */
    public AbstractC25968j0 mo2776a(AbstractC26010s1.EnumC26011a enumC26011a) {
        AbstractC25968j0.EnumC25971c enumC25971c = AbstractC25968j0.EnumC25971c.OPTIONAL;
        a1 x = a1.x();
        HashSet hashSet = new HashSet();
        C25956g0.C25957a c25957a = new C25956g0.C25957a();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        c25957a.f72580c = 1;
        AbstractC26010s1.EnumC26011a enumC26011a2 = AbstractC26010s1.EnumC26011a.PREVIEW;
        if (enumC26011a == enumC26011a2 && ((C25824k) C25818e.m2968a(C25824k.class)) != null) {
            a1 x2 = a1.x();
            CaptureRequest.Key key = CaptureRequest.TONEMAP_MODE;
            AbstractC25968j0.AbstractC25969a abstractC25969a = a.r;
            StringBuilder m8728C = C22128a.m8728C("camera2.captureRequest.option.");
            m8728C.append(key.getName());
            x2.z(new C25992n(m8728C.toString(), Object.class, key), enumC25971c, 2);
            c25957a.m2865c(new a(C25949d1.m2869w(x2)));
        }
        x.z(r1.h, enumC25971c, new C25972j1(new ArrayList(hashSet), arrayList, arrayList2, arrayList4, arrayList3, c25957a.m2864d()));
        x.z(r1.j, enumC25971c, C25747h1.f72121a);
        HashSet hashSet2 = new HashSet();
        a1 x3 = a1.x();
        int i = -1;
        ArrayList arrayList5 = new ArrayList();
        C25940b1 c25940b1 = new C25940b1(new ArrayMap());
        int ordinal = enumC26011a.ordinal();
        if (ordinal == 0) {
            i = 2;
        } else if (ordinal == 1 || ordinal == 2 || ordinal == 3) {
            i = 1;
        }
        AbstractC25968j0.AbstractC25969a abstractC25969a2 = r1.i;
        ArrayList arrayList6 = new ArrayList(hashSet2);
        C25949d1 m2869w = C25949d1.m2869w(x3);
        C25996o1 c25996o1 = C25996o1.f72647b;
        ArrayMap arrayMap = new ArrayMap();
        for (String str : c25940b1.f72648a.keySet()) {
            arrayMap.put(str, c25940b1.m2817a(str));
        }
        x.z(abstractC25969a2, enumC25971c, new C25956g0(arrayList6, m2869w, i, arrayList5, false, new C25996o1(arrayMap)));
        x.z(r1.k, enumC25971c, enumC26011a == AbstractC26010s1.EnumC26011a.IMAGE_CAPTURE ? y1.b : C25736f1.f72100a);
        if (enumC26011a == enumC26011a2) {
            AbstractC25968j0.AbstractC25969a abstractC25969a3 = q0.f;
            Point point = new Point();
            this.f72134a.getDefaultDisplay().getRealSize(point);
            Size size = point.x > point.y ? new Size(point.x, point.y) : new Size(point.y, point.x);
            int width = size.getWidth();
            int height = size.getHeight();
            Size size2 = f72133b;
            if (height * width > size2.getHeight() * size2.getWidth()) {
                size = size2;
            }
            x.z(abstractC25969a3, enumC25971c, size);
        }
        x.z(q0.c, enumC25971c, Integer.valueOf(this.f72134a.getDefaultDisplay().getRotation()));
        return C25949d1.m2869w(x);
    }
}
