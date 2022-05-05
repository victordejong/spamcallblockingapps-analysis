package p459j.p460a.p521j0.p528w;

import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p459j.p460a.p521j0.p528w.AbstractC12741t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14327z3;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.w.n */
/* loaded from: classes3-dex2jar.jar:j/a/j0/w/n.class */
public abstract class AbstractC12735n extends AbstractC12741t {

    /* renamed from: k */
    public AbstractC12741t.C12743b f28705k;

    /* renamed from: l */
    public AbstractC12741t.C12742a f28706l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC12735n(AbstractC12741t.EnumC12744c cVar, AbstractC12741t.EnumC12745d dVar, NumberInfo numberInfo, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        super(cVar, dVar, numberInfo, str, str2, str3, str4, str5, z, z2);
        C15149k.m377b(cVar, IapProductRealmObject.STATE);
        C15149k.m377b(numberInfo, "numberInfo");
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "e164");
        C15149k.m377b(str3, "displayNumber");
        C15149k.m377b(str4, "displayRemoteNumber");
    }

    public /* synthetic */ AbstractC12735n(AbstractC12741t.EnumC12744c cVar, AbstractC12741t.EnumC12745d dVar, NumberInfo numberInfo, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2, int i, C15145g gVar) {
        this(cVar, dVar, numberInfo, str, str2, str3, str4, str5, (i & 256) != 0 ? false : z, (i & 512) != 0 ? false : z2);
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12741t
    /* renamed from: a */
    public void mo5452a() {
        AbstractC12741t.EnumC12745d dVar = this.f28716b;
        if (dVar != null && C12734m.f28703a[dVar.ordinal()] == 1) {
            m5469e();
        } else {
            m5468f();
        }
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12741t
    /* renamed from: c */
    public AbstractC12741t.C12742a mo5450c() {
        AbstractC12741t.C12742a aVar = this.f28706l;
        if (aVar != null) {
            return aVar;
        }
        C15149k.m373d("_description");
        throw null;
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12741t
    /* renamed from: d */
    public AbstractC12741t.C12743b mo5449d() {
        AbstractC12741t.C12743b bVar = this.f28705k;
        if (bVar != null) {
            return bVar;
        }
        C15149k.m373d("_name");
        throw null;
    }

    /* renamed from: e */
    public final void m5469e() {
        this.f28705k = new AbstractC12741t.C12743b(this.f28722h, false);
        this.f28706l = new AbstractC12741t.C12742a(C14327z3.m1562c(this.f28717c.m28316j()), false);
    }

    /* renamed from: f */
    public final void m5468f() {
        String str;
        this.f28705k = new AbstractC12741t.C12743b(this.f28720f, false);
        NumberInfo.ErrorReason o = this.f28717c.m28305o();
        if (o != null) {
            int i = C12734m.f28704b[o.ordinal()];
            if (i == 1) {
                str = C14206w4.m2225a((int) R$string.calldialog_no_internet);
            } else if (i == 2) {
                str = C14206w4.m2225a((int) R$string.cd_permission_context);
            }
            this.f28706l = new AbstractC12741t.C12742a(str, false);
        }
        str = C14206w4.m2225a((int) R$string.calldialog_server_busy);
        this.f28706l = new AbstractC12741t.C12742a(str, false);
    }
}
