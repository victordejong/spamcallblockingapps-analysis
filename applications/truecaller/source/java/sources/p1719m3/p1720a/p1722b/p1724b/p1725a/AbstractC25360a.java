package p1719m3.p1720a.p1722b.p1724b.p1725a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
/* renamed from: m3.a.b.b.a.a */
/* loaded from: classes-dex2jar.jar:m3/a/b/b/a/a.class */
public interface AbstractC25360a extends IInterface {

    /* renamed from: m3.a.b.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:m3/a/b/b/a/a$a.class */
    public static abstract class AbstractBinderC25361a extends Binder implements AbstractC25360a {

        /* renamed from: m3.a.b.b.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:m3/a/b/b/a/a$a$a.class */
        public static class C25362a implements AbstractC25360a {

            /* renamed from: a */
            public IBinder f70775a;

            public C25362a(IBinder iBinder) {
                this.f70775a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f70775a;
            }
        }

        /* renamed from: m1 */
        public static AbstractC25360a m3696m1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC25360a)) ? new C25362a(iBinder) : (AbstractC25360a) queryLocalInterface;
        }
    }
}
