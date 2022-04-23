package p131c.p372f.p373a.p374a.p375a.p380l;

import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import java.util.Collection;
import java.util.HashMap;
import p131c.p372f.p373a.p374a.p375a.p381m.AbstractC6427a;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.AbstractC6435b;
/* renamed from: c.f.a.a.a.l.a */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/l/a.class */
public class C6425a implements AbstractC6435b {

    /* renamed from: e */
    public static C6425a f20105e = new C6425a();

    /* renamed from: c */
    public AbstractC6426b f20108c;

    /* renamed from: a */
    public final HashMap<String, InternalAvidAdSession> f20106a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<String, AbstractC6427a> f20107b = new HashMap<>();

    /* renamed from: d */
    public int f20109d = 0;

    /* renamed from: d */
    public static C6425a m20900d() {
        return f20105e;
    }

    /* renamed from: a */
    public InternalAvidAdSession m20903a(String str) {
        return this.f20106a.get(str);
    }

    /* renamed from: a */
    public Collection<InternalAvidAdSession> m20906a() {
        return this.f20106a.values();
    }

    /* renamed from: a */
    public void m20905a(AbstractC6426b bVar) {
        this.f20108c = bVar;
    }

    /* renamed from: a */
    public void m20904a(AbstractC6427a aVar, InternalAvidAdSession internalAvidAdSession) {
        AbstractC6426b bVar;
        this.f20107b.put(aVar.m20894b(), aVar);
        this.f20106a.put(aVar.m20894b(), internalAvidAdSession);
        internalAvidAdSession.m5457a(this);
        if (this.f20107b.size() == 1 && (bVar = this.f20108c) != null) {
            bVar.mo20898b(this);
        }
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p381m.p382h.AbstractC6435b
    /* renamed from: a */
    public void mo20881a(InternalAvidAdSession internalAvidAdSession) {
        AbstractC6426b bVar;
        this.f20107b.remove(internalAvidAdSession.m5454b());
        this.f20106a.remove(internalAvidAdSession.m5454b());
        internalAvidAdSession.m5457a((AbstractC6435b) null);
        if (this.f20107b.size() == 0 && (bVar = this.f20108c) != null) {
            bVar.mo20898b(this);
        }
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p381m.p382h.AbstractC6435b
    /* renamed from: b */
    public void mo20880b(InternalAvidAdSession internalAvidAdSession) {
        AbstractC6426b bVar;
        int i = this.f20109d + 1;
        this.f20109d = i;
        if (i == 1 && (bVar = this.f20108c) != null) {
            bVar.mo20899a(this);
        }
    }

    /* renamed from: b */
    public boolean m20902b() {
        return this.f20109d > 0;
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p381m.p382h.AbstractC6435b
    /* renamed from: c */
    public void mo20879c(InternalAvidAdSession internalAvidAdSession) {
        AbstractC6426b bVar;
        int i = this.f20109d - 1;
        this.f20109d = i;
        if (i == 0 && (bVar = this.f20108c) != null) {
            bVar.mo20899a(this);
        }
    }

    /* renamed from: c */
    public boolean m20901c() {
        return this.f20107b.isEmpty();
    }
}
