package com.callapp.contacts.util.video;

import com.callapp.contacts.CallAppApplication;
import com.google.android.exoplayer2.AbstractC11168m;
import com.google.android.exoplayer2.C10856aj;
import com.google.android.exoplayer2.C11167l;
import com.google.android.exoplayer2.audio.C10889d;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/CallAppExoPlayerFactory.class */
public class CallAppExoPlayerFactory {
    /* renamed from: a */
    public static AbstractC11168m m26899a() {
        C11167l c11167l = new C11167l(CallAppApplication.get());
        c11167l.f36591b = true;
        c11167l.f36590a = 1;
        C10856aj m22193a = new C10856aj.C10858a(CallAppApplication.get(), c11167l).m22193a();
        C10889d.C10891a c10891a = new C10889d.C10891a();
        c10891a.f35144b = 12;
        c10891a.f35143a = 2;
        C10889d m22069a = c10891a.m22069a();
        m22193a.m22223M();
        if (!m22193a.f34959v) {
            if (!C11599af.m19973a(m22193a.f34953p, m22069a)) {
                m22193a.f34953p = m22069a;
                m22193a.m22218a(1, 3, m22069a);
                m22193a.f34947j.m22191a(C11599af.m19923f(m22069a.f35140d));
                m22193a.f34945h.m22276a(m22069a);
                Iterator<Object> it2 = m22193a.f34941d.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
            m22193a.f34946i.m21953a((C10889d) null);
            boolean mo21118r = m22193a.mo21118r();
            int m21952a = m22193a.f34946i.m21952a(mo21118r, m22193a.mo21122n());
            m22193a.m22202a(mo21118r, m21952a, C10856aj.m22203a(mo21118r, m21952a));
        }
        m22193a.mo21150a(true);
        m22193a.m22223M();
        float m20000a = C11599af.m20000a((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (m22193a.f34954q != m20000a) {
            m22193a.f34954q = m20000a;
            m22193a.m22224L();
            m22193a.f34945h.m22310a(m20000a);
            Iterator<Object> it3 = m22193a.f34941d.iterator();
            while (it3.hasNext()) {
                it3.next();
            }
        }
        m22193a.mo21173a(2);
        return m22193a;
    }
}
