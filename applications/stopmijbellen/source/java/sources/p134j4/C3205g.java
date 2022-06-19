package p134j4;

import android.os.RemoteException;
import p189o4.AbstractC3863d0;
import p189o4.AbstractRunnableC3856a;
import p220r4.C4203l;
/* renamed from: j4.g */
/* loaded from: classes-dex2jar.jar:j4/g.class */
public final class C3205g extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ int f10788b;

    /* renamed from: c */
    public final /* synthetic */ String f10789c;

    /* renamed from: d */
    public final /* synthetic */ String f10790d;

    /* renamed from: e */
    public final /* synthetic */ int f10791e;

    /* renamed from: f */
    public final /* synthetic */ C4203l f10792f;

    /* renamed from: g */
    public final /* synthetic */ C3238p f10793g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3205g(C3238p c3238p, C4203l c4203l, int i, String str, String str2, int i2, C4203l c4203l2) {
        super(c4203l);
        this.f10793g = c3238p;
        this.f10788b = i;
        this.f10789c = str;
        this.f10790d = str2;
        this.f10791e = i2;
        this.f10792f = c4203l2;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        try {
            C3238p c3238p = this.f10793g;
            ((AbstractC3863d0) c3238p.f10913d.f12369n).mo1759f(c3238p.f10910a, C3238p.m2517i(this.f10788b, this.f10789c, this.f10790d, this.f10791e), C3238p.m2520f(), new BinderC3221k(this.f10793g, this.f10792f, 0));
        } catch (RemoteException e) {
            C3238p.f10908g.m1509c("getChunkFileDescriptor(%s, %s, %d, session=%d)", this.f10789c, this.f10790d, Integer.valueOf(this.f10791e), Integer.valueOf(this.f10788b));
            this.f10792f.m1294a(new RuntimeException(e));
        }
    }
}
