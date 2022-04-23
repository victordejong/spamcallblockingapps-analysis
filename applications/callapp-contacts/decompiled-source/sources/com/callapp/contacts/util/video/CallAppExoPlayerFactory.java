package com.callapp.contacts.util.video;

import com.callapp.contacts.CallAppApplication;
import com.google.android.exoplayer2.aj;
import com.google.android.exoplayer2.audio.d;
import com.google.android.exoplayer2.l;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.util.af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/CallAppExoPlayerFactory.class */
public class CallAppExoPlayerFactory {
    public static m a() {
        l lVar = new l(CallAppApplication.get());
        lVar.f21383b = true;
        lVar.f21382a = 1;
        aj a2 = new aj.a(CallAppApplication.get(), lVar).a();
        d.a aVar = new d.a();
        aVar.f20747b = 12;
        aVar.f20746a = 2;
        d a3 = aVar.a();
        a2.M();
        if (!a2.v) {
            if (!af.a(a2.p, a3)) {
                a2.p = a3;
                a2.a(1, 3, a3);
                a2.j.a(af.f(a3.f20745d));
                a2.h.a(a3);
                Iterator<Object> it2 = a2.f20663d.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
            a2.i.a((d) null);
            boolean r = a2.r();
            int a4 = a2.i.a(r, a2.n());
            a2.a(r, a4, aj.a(r, a4));
        }
        a2.a(true);
        a2.M();
        float a5 = af.a((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (a2.q != a5) {
            a2.q = a5;
            a2.L();
            a2.h.a(a5);
            Iterator<Object> it3 = a2.f20663d.iterator();
            while (it3.hasNext()) {
                it3.next();
            }
        }
        a2.a(2);
        return a2;
    }
}
