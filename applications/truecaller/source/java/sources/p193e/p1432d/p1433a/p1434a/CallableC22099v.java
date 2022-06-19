package p193e.p1432d.p1433a.p1434a;

import com.google.android.gms.internal.play_billing.zzp;
import java.util.List;
import java.util.concurrent.Callable;
import p193e.p1432d.p1433a.p1434a.C22086n;
/* renamed from: e.d.a.a.v */
/* loaded from: classes-dex2jar.jar:e/d/a/a/v.class */
public final class CallableC22099v implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f61409a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC22089o f61410b;

    /* renamed from: c */
    public final /* synthetic */ C22068e f61411c;

    public CallableC22099v(C22068e c22068e, String str, AbstractC22089o abstractC22089o) {
        this.f61411c = c22068e;
        this.f61409a = str;
        this.f61410b = abstractC22089o;
    }

    @Override // java.util.concurrent.Callable
    public final Void call() throws Exception {
        C22086n.C22087a m8806p = C22068e.m8806p(this.f61411c, this.f61409a);
        List<C22086n> list = m8806p.f61388a;
        if (list != null) {
            AbstractC22089o abstractC22089o = this.f61410b;
            ((C22072g) abstractC22089o).m8805a(m8806p.f61389b, list);
            return null;
        }
        ((C22072g) this.f61410b).m8805a(m8806p.f61389b, zzp.zzg());
        return null;
    }
}
