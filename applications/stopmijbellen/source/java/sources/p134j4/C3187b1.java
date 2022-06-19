package p134j4;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import p189o4.AbstractC3879p;
import p201p6.C4018c;
/* renamed from: j4.b1 */
/* loaded from: classes-dex2jar.jar:j4/b1.class */
public final class C3187b1 {

    /* renamed from: g */
    public static final C4018c f10729g = new C4018c("ExtractorSessionStoreView");

    /* renamed from: a */
    public final C3259w f10730a;

    /* renamed from: b */
    public final AbstractC3879p f10731b;

    /* renamed from: c */
    public final C3245r0 f10732c;

    /* renamed from: d */
    public final AbstractC3879p f10733d;

    /* renamed from: e */
    public final Map f10734e = new HashMap();

    /* renamed from: f */
    public final ReentrantLock f10735f = new ReentrantLock();

    public C3187b1(C3259w c3259w, AbstractC3879p abstractC3879p, C3245r0 c3245r0, AbstractC3879p abstractC3879p2) {
        this.f10730a = c3259w;
        this.f10731b = abstractC3879p;
        this.f10732c = c3245r0;
        this.f10733d = abstractC3879p2;
    }

    /* renamed from: c */
    public static String m2561c(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            throw new C3233n0("Session without pack received.");
        }
        return stringArrayList.get(0);
    }

    /* renamed from: a */
    public final C3266y0 m2563a(int i) {
        Map map = this.f10734e;
        Integer valueOf = Integer.valueOf(i);
        C3266y0 c3266y0 = (C3266y0) map.get(valueOf);
        if (c3266y0 != null) {
            return c3266y0;
        }
        throw new C3233n0(String.format("Could not find session %d while trying to get it", valueOf), i);
    }

    /* renamed from: b */
    public final Object m2562b(AbstractC3183a1 abstractC3183a1) {
        try {
            this.f10735f.lock();
            return abstractC3183a1.zza();
        } finally {
            this.f10735f.unlock();
        }
    }
}
