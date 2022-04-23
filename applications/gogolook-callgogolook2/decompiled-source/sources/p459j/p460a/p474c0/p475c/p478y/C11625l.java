package p459j.p460a.p474c0.p475c.p478y;

import gogolook.callgogolook2.messaging.datamodel.action.GetOrCreateConversationAction;
import p459j.p460a.p474c0.p475c.p476w.C11569a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.y.l */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/l.class */
public class C11625l extends AbstractC11587a implements GetOrCreateConversationAction.AbstractC4622b {

    /* renamed from: b */
    public AbstractC11626a f26105b;

    /* renamed from: c */
    public GetOrCreateConversationAction.C4623c f26106c;

    /* renamed from: j.a.c0.c.y.l$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/l$a.class */
    public interface AbstractC11626a {
        /* renamed from: a */
        void mo8770a();

        /* renamed from: a */
        void mo8769a(String str);
    }

    public C11625l(AbstractC11626a aVar) {
        this.f26105b = aVar;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.GetOrCreateConversationAction.AbstractC4622b
    /* renamed from: a */
    public void mo8773a(C11569a aVar, Object obj) {
        AbstractC11626a aVar2;
        C12151d.m6999b(aVar == this.f26106c);
        if (m9045b((String) obj) && (aVar2 = this.f26105b) != null) {
            aVar2.mo8770a();
        }
        C12153d0.m6987b("MessagingApp", "onGetOrCreateConversationFailed");
        this.f26106c = null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.GetOrCreateConversationAction.AbstractC4622b
    /* renamed from: a */
    public void mo8772a(C11569a aVar, Object obj, String str) {
        AbstractC11626a aVar2;
        boolean z = true;
        C12151d.m6999b(aVar == this.f26106c);
        if (str == null) {
            z = false;
        }
        C12151d.m6999b(z);
        if (m9045b((String) obj) && (aVar2 = this.f26105b) != null) {
            aVar2.mo8769a(str);
        }
        this.f26106c = null;
    }

    /* renamed from: a */
    public void m8771a(AbstractC11590d<C11625l> dVar, String[] strArr) {
        String a = dVar.mo9035a();
        if (m9045b(a) && this.f26106c == null) {
            this.f26106c = GetOrCreateConversationAction.m27712a(strArr, a, this);
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: e */
    public void mo8718e() {
        this.f26105b = null;
        GetOrCreateConversationAction.C4623c cVar = this.f26106c;
        if (cVar != null) {
            cVar.m9091d();
        }
        this.f26106c = null;
    }
}
