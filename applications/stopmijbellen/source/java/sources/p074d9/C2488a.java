package p074d9;

import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.C2120f;
import p256u8.C4547b;
/* renamed from: d9.a */
/* loaded from: classes2-dex2jar.jar:d9/a.class */
public class C2488a {

    /* renamed from: a */
    public final AbstractC2491d f8734a;

    public C2488a(AbstractC2116c abstractC2116c) {
        C2489b c2489b = new C2489b("DBFlow Transaction Queue");
        this.f8734a = c2489b;
        new C4547b(abstractC2116c);
        synchronized (c2489b) {
            if (!c2489b.isAlive()) {
                try {
                    c2489b.start();
                } catch (IllegalThreadStateException e) {
                    C2120f.m3888b(C2120f.EnumC2122b.f7696d, e);
                }
            }
        }
    }
}
