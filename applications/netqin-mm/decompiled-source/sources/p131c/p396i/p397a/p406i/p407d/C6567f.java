package p131c.p396i.p397a.p406i.p407d;

import com.library.p518ad.core.AdInfo;
import com.library.p518ad.core.BaseAdResult;
import com.library.p518ad.data.bean.RequestConfig;
import java.util.ArrayList;
import java.util.List;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p398e.AbstractC6516h;
import p131c.p396i.p397a.p398e.AbstractC6518i;
import p131c.p396i.p397a.p398e.C6507c;
import p131c.p396i.p397a.p398e.C6520j;
/* renamed from: c.i.a.i.d.f */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/d/f.class */
public class C6567f extends AbstractC6560b {

    /* renamed from: l */
    public AbstractC6518i f20365l = new C6568a();

    /* renamed from: m */
    public boolean f20366m = false;

    /* renamed from: n */
    public AbstractC6516h f20367n = new C6569b();

    /* renamed from: c.i.a.i.d.f$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/d/f$a.class */
    public class C6568a extends AbstractC6518i.AbstractC6519a {
        public C6568a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: a */
        public void mo3229a(AdInfo adInfo) {
            AbstractC6518i iVar = C6567f.this.f20350d;
            if (iVar != null) {
                iVar.mo3229a(adInfo);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: b */
        public void mo3228b(AdInfo adInfo) {
            if (C6567f.this.f20353g.size() > 0) {
                ArrayList arrayList = new ArrayList(0);
                arrayList.addAll(C6567f.this.f20353g);
                C6567f.this.f20353g.clear();
                C6520j a = C6507c.m20629a(arrayList);
                a.m20604a(C6567f.this.f20356j);
                a.m20601a(C6567f.this.f20367n);
                a.m20585b(true);
                return;
            }
            C6567f.this.f20357k.mo3228b(adInfo);
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i.AbstractC6519a, p131c.p396i.p397a.p398e.AbstractC6518i
        public void onStart() {
            AbstractC6518i iVar = C6567f.this.f20350d;
            if (iVar != null) {
                iVar.onStart();
            }
        }
    }

    /* renamed from: c.i.a.i.d.f$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/d/f$b.class */
    public class C6569b extends AbstractC6516h.AbstractC6517a {
        public C6569b() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20466a(AbstractC6508d<?> dVar, BaseAdResult<?> baseAdResult, AbstractC6514f<?> fVar) {
            if (!C6567f.this.f20366m) {
                C6567f.this.f20366m = true;
                AbstractC6518i iVar = C6567f.this.f20350d;
                if (iVar != null) {
                    iVar.mo3229a(dVar.getAdInfo());
                }
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20465a(boolean z) {
            if (!z) {
                C6567f.this.f20357k.mo3228b(null);
            }
        }
    }

    public C6567f(String str, List<RequestConfig> list) {
        super(str, list);
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    /* renamed from: b */
    public void mo20462b() {
        List<AbstractC6508d<?>> list = this.f20353g;
        if (list != null && list.size() > 0) {
            C6520j a = C6507c.m20628a(this.f20353g.remove(0));
            a.m20604a(this.f20356j);
            a.m20600a(this.f20365l);
            a.m20578g();
        }
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    public String toString() {
        return "串+并 " + super.toString();
    }
}
