package p134j4;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
import p189o4.AbstractC3863d0;
import p189o4.AbstractRunnableC3856a;
import p220r4.C4203l;
/* renamed from: j4.b */
/* loaded from: classes-dex2jar.jar:j4/b.class */
public final class C3185b extends AbstractRunnableC3856a {

    /* renamed from: b */
    public final /* synthetic */ List f10721b;

    /* renamed from: c */
    public final /* synthetic */ C4203l f10722c;

    /* renamed from: d */
    public final /* synthetic */ C3238p f10723d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3185b(C3238p c3238p, C4203l c4203l, List list, C4203l c4203l2) {
        super(c4203l);
        this.f10723d = c3238p;
        this.f10721b = list;
        this.f10722c = c4203l2;
    }

    @Override // p189o4.AbstractRunnableC3856a
    /* renamed from: b */
    public final void mo1750b() {
        List<String> list = this.f10721b;
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            Bundle bundle = new Bundle();
            bundle.putString("module_name", str);
            arrayList.add(bundle);
        }
        try {
            C3238p c3238p = this.f10723d;
            ((AbstractC3863d0) c3238p.f10913d.f12369n).mo1757k(c3238p.f10910a, arrayList, C3238p.m2520f(), new BinderC3217j(this.f10723d, this.f10722c));
        } catch (RemoteException e) {
            C3238p.f10908g.m1508d(e, "cancelDownloads(%s)", this.f10721b);
        }
    }
}
