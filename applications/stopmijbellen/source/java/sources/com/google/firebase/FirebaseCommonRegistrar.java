package com.google.firebase;

import android.content.Context;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import p201p6.AbstractC4019d;
import p201p6.AbstractC4023g;
import p201p6.C4021f;
import p229s2.C4281c;
import p241t4.C4398d;
import p264v5.AbstractC4647e;
import p264v5.AbstractC4648f;
import p264v5.C4645c;
import p264v5.C4646d;
import p291y.C4951d;
import p303z2.C5054o;
import p303z2.C5055p;
import p305z4.AbstractC5083g;
import p305z4.C5077c;
import p305z4.C5093m;
/* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseCommonRegistrar.class */
public class FirebaseCommonRegistrar implements AbstractC5083g {
    /* renamed from: a */
    public static String m4475a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // p305z4.AbstractC5083g
    public List<C5077c<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        C5077c.C5079b m56a = C5077c.m56a(AbstractC4023g.class);
        m56a.m53a(new C5093m(AbstractC4019d.class, 2, 0));
        m56a.m50d(C4645c.f14340d);
        arrayList.add(m56a.m52b());
        int i = C4646d.f14342b;
        C5077c.C5079b m56a2 = C5077c.m56a(AbstractC4648f.class);
        m56a2.m53a(new C5093m(Context.class, 1, 0));
        m56a2.m53a(new C5093m(AbstractC4647e.class, 2, 0));
        m56a2.m50d(C4645c.f14338b);
        arrayList.add(m56a2.m52b());
        arrayList.add(C4021f.m1502a("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(C4021f.m1502a("fire-core", "20.0.0"));
        arrayList.add(C4021f.m1502a("device-name", m4475a(Build.PRODUCT)));
        arrayList.add(C4021f.m1502a("device-model", m4475a(Build.DEVICE)));
        arrayList.add(C4021f.m1502a("device-brand", m4475a(Build.BRAND)));
        arrayList.add(C4021f.m1501b("android-target-sdk", C4398d.f13700b));
        arrayList.add(C4021f.m1501b("android-min-sdk", C5054o.f15344c));
        arrayList.add(C4021f.m1501b("android-platform", C5055p.f15353d));
        arrayList.add(C4021f.m1501b("android-installer", C4281c.f13427c));
        String m197f = C4951d.m197f();
        if (m197f != null) {
            arrayList.add(C4021f.m1502a("kotlin", m197f));
        }
        return arrayList;
    }
}
