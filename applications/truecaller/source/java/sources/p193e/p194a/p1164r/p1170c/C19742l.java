package p193e.p194a.p1164r.p1170c;

import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p614c3.AbstractC10925a;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.r.c.l */
/* loaded from: classes16-dex2jar.jar:e/a/r/c/l.class */
public final class C19742l {

    /* renamed from: a */
    public boolean f54783a;

    /* renamed from: b */
    public final AbstractC14965w f54784b;

    /* renamed from: c */
    public final AbstractC19230g f54785c;

    /* renamed from: d */
    public final AbstractC19219a0 f54786d;

    /* renamed from: e */
    public final AbstractC10925a f54787e;

    /* renamed from: f */
    public final C20592g f54788f;

    @Inject
    public C19742l(AbstractC14965w abstractC14965w, AbstractC19230g abstractC19230g, AbstractC19219a0 abstractC19219a0, AbstractC10925a abstractC10925a, C20592g c20592g) {
        l.e(abstractC14965w, "tcPermissionsUtil");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC10925a, "buildHelper");
        l.e(c20592g, "featuresRegistry");
        this.f54784b = abstractC14965w;
        this.f54785c = abstractC19230g;
        this.f54786d = abstractC19219a0;
        this.f54787e = abstractC10925a;
        this.f54788f = c20592g;
    }

    /* renamed from: a */
    public List<String> m12919a() {
        Object[] t0 = i.t0(this.f54784b.mo19344m(), this.f54784b.mo19350g());
        ArrayList arrayList = new ArrayList();
        for (Object obj : t0) {
            if (!this.f54786d.mo13825h((String) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
