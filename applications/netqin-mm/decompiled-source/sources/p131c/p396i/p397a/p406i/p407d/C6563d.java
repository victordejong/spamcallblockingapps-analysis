package p131c.p396i.p397a.p406i.p407d;

import com.library.p518ad.core.AdInfo;
import com.library.p518ad.data.bean.RequestConfig;
import java.util.List;
import p131c.p396i.p397a.p398e.AbstractC6518i;
import p131c.p396i.p397a.p398e.C6507c;
import p131c.p396i.p397a.p398e.C6520j;
/* renamed from: c.i.a.i.d.d */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/d/d.class */
public class C6563d extends AbstractC6560b {

    /* renamed from: l */
    public AbstractC6518i f20359l = new C6564a();

    /* renamed from: c.i.a.i.d.d$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/d/d$a.class */
    public class C6564a implements AbstractC6518i {
        public C6564a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: a */
        public void mo3229a(AdInfo adInfo) {
            AbstractC6518i iVar = C6563d.this.f20350d;
            AbstractC6518i iVar2 = C6563d.this.f20357k;
            if (iVar2 != null) {
                iVar2.mo3229a(adInfo);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: b */
        public void mo3228b(AdInfo adInfo) {
            AbstractC6518i iVar = C6563d.this.f20350d;
            AbstractC6518i iVar2 = C6563d.this.f20357k;
            if (iVar2 != null) {
                iVar2.mo3228b(adInfo);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        public void onStart() {
            AbstractC6518i iVar = C6563d.this.f20350d;
            C6563d.this.f20357k.onStart();
        }
    }

    public C6563d(String str, List<RequestConfig> list) {
        super(str, list);
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    /* renamed from: b */
    public void mo20462b() {
        C6520j a = C6507c.m20629a(this.f20353g);
        a.m20600a(this.f20359l);
        a.m20604a(this.f20356j);
        a.m20578g();
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    public String toString() {
        return "串行 " + super.toString();
    }
}
