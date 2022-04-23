package p131c.p396i.p397a.p406i.p407d;

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
/* renamed from: c.i.a.i.d.g */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/d/g.class */
public class C6570g extends AbstractC6560b {

    /* renamed from: l */
    public boolean f20370l = false;

    /* renamed from: m */
    public boolean f20371m = false;

    /* renamed from: n */
    public AbstractC6516h f20372n = new C6571a();

    /* renamed from: c.i.a.i.d.g$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/d/g$a.class */
    public class C6571a extends AbstractC6516h.AbstractC6517a {
        public C6571a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20466a(AbstractC6508d<?> dVar, BaseAdResult<?> baseAdResult, AbstractC6514f<?> fVar) {
            if (!C6570g.this.f20371m) {
                C6570g.this.f20371m = true;
                AbstractC6518i iVar = C6570g.this.f20350d;
                if (iVar != null) {
                    iVar.mo3229a(dVar.getAdInfo());
                }
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20465a(boolean z) {
            if (z) {
                return;
            }
            if (C6570g.this.f20353g.size() > 0) {
                ArrayList arrayList = new ArrayList(0);
                arrayList.addAll(C6570g.this.f20353g);
                C6570g.this.f20353g.clear();
                C6520j a = C6507c.m20629a(arrayList);
                a.m20604a(C6570g.this.f20356j);
                a.m20601a(C6570g.this.f20372n);
                a.m20585b(true);
                return;
            }
            C6570g.this.f20357k.mo3228b(null);
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h.AbstractC6517a, p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: b */
        public void mo20464b(String str) {
            if (!C6570g.this.f20370l) {
                C6570g.this.f20370l = true;
                AbstractC6518i iVar = C6570g.this.f20350d;
                if (iVar != null) {
                    iVar.onStart();
                }
            }
        }
    }

    public C6570g(String str, List<RequestConfig> list) {
        super(str, list);
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    /* renamed from: b */
    public void mo20462b() {
        List<AbstractC6508d<?>> list = this.f20353g;
        if (list != null && list.size() > 0) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(this.f20353g.remove(0));
            if (this.f20353g.size() > 0) {
                arrayList.add(this.f20353g.remove(0));
            }
            C6520j a = C6507c.m20629a(arrayList);
            a.m20604a(this.f20356j);
            a.m20601a(this.f20372n);
            a.m20585b(true);
        }
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    public String toString() {
        return "并+并 " + super.toString();
    }
}
