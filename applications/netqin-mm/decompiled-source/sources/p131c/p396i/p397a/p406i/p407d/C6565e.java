package p131c.p396i.p397a.p406i.p407d;

import com.library.p518ad.core.BaseAdResult;
import com.library.p518ad.data.bean.RequestConfig;
import java.util.List;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p398e.AbstractC6516h;
import p131c.p396i.p397a.p398e.C6507c;
import p131c.p396i.p397a.p398e.C6520j;
/* renamed from: c.i.a.i.d.e */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/d/e.class */
public class C6565e extends AbstractC6560b {

    /* renamed from: l */
    public boolean f20361l = false;

    /* renamed from: m */
    public boolean f20362m = false;

    /* renamed from: n */
    public AbstractC6516h f20363n = new C6566a();

    /* renamed from: c.i.a.i.d.e$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/d/e$a.class */
    public class C6566a extends AbstractC6516h.AbstractC6517a {
        public C6566a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20466a(AbstractC6508d<?> dVar, BaseAdResult<?> baseAdResult, AbstractC6514f<?> fVar) {
            if (!C6565e.this.f20362m) {
                C6565e.this.f20362m = true;
                C6565e.this.f20357k.mo3229a(dVar.getAdInfo());
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20465a(boolean z) {
            if (!z) {
                C6565e.this.f20357k.mo3228b(null);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h.AbstractC6517a, p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: b */
        public void mo20464b(String str) {
            if (!C6565e.this.f20361l) {
                C6565e.this.f20361l = true;
                C6565e.this.f20357k.onStart();
            }
        }
    }

    public C6565e(String str, List<RequestConfig> list) {
        super(str, list);
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    /* renamed from: b */
    public void mo20462b() {
        C6520j a = C6507c.m20629a(this.f20353g);
        a.m20601a(this.f20363n);
        a.m20604a(this.f20356j);
        a.m20585b(true);
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    public String toString() {
        return "并行 " + super.toString();
    }
}
