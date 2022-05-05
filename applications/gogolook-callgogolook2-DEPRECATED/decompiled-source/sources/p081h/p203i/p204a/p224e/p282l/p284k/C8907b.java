package p081h.p203i.p204a.p224e.p282l.p284k;

import android.graphics.Bitmap;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8539g;
/* renamed from: h.i.a.e.l.k.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/b.class */
public final class C8907b {

    /* renamed from: a */
    public static AbstractC8539g f20183a;

    /* renamed from: a */
    public static AbstractC8539g m16807a() {
        AbstractC8539g gVar = f20183a;
        C7021t.m21289a(gVar, "IBitmapDescriptorFactory is not initialized");
        return gVar;
    }

    /* renamed from: a */
    public static C8906a m16806a(int i) {
        try {
            return new C8906a(m16807a().mo17852e(i));
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public static C8906a m16805a(Bitmap bitmap) {
        try {
            return new C8906a(m16807a().mo17853a(bitmap));
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public static void m16804a(AbstractC8539g gVar) {
        if (f20183a == null) {
            C7021t.m21290a(gVar);
            f20183a = gVar;
        }
    }
}
