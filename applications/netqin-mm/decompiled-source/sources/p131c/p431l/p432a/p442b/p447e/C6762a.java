package p131c.p431l.p432a.p442b.p447e;

import android.app.Activity;
import android.content.Context;
import com.netqin.p525cm.utils.AsyncTask;
import p131c.p431l.p432a.p442b.p443a.AbstractC6724a;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6855n;
import p131c.p431l.p432a.p468n.C6859q;
/* renamed from: c.l.a.b.e.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/e/a.class */
public class C6762a extends AsyncTask<Void, Void, Boolean> {

    /* renamed from: o */
    public Activity f20858o;

    /* renamed from: p */
    public C6727b f20859p;

    /* renamed from: q */
    public AbstractC6724a f20860q;

    public C6762a(Activity activity, AbstractC6724a aVar) {
        this.f20858o = activity;
        this.f20859p = C6727b.m19968a((Context) activity);
        this.f20860q = aVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Boolean mo3198a(Void... voidArr) {
        try {
            return this.f20859p.m19921s();
        } catch (Exception e) {
            C6850i.m19581a(e);
            return false;
        }
    }

    /* renamed from: a */
    public void mo3191c(Boolean bool) {
        super.mo3191c((C6762a) bool);
        C6855n.m19555a();
        if (bool.booleanValue()) {
            this.f20859p.m19957b(this.f20858o);
            AbstractC6724a aVar = this.f20860q;
            if (aVar != null) {
                aVar.mo3227a();
                return;
            }
            return;
        }
        C6859q.m19550a((Context) this.f20858o, 2131558609, true);
        AbstractC6724a aVar2 = this.f20860q;
        if (aVar2 != null) {
            aVar2.mo3226b();
        }
    }

    @Override // com.netqin.p525cm.utils.AsyncTask
    /* renamed from: c */
    public void mo3193c() {
        C6855n.m19554a(this.f20858o);
        super.mo3193c();
    }
}
