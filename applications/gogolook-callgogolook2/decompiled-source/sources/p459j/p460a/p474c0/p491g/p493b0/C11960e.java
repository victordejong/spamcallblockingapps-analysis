package p459j.p460a.p474c0.p491g.p493b0;

import android.app.FragmentManager;
import android.content.Context;
import android.os.Bundle;
import android.widget.EditText;
import androidx.appcompat.app.ActionBar;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import gogolook.callgogolook2.messaging.p078ui.conversation.SimSelectorView;
import java.util.Collection;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11592f;
import p459j.p460a.p474c0.p475c.p478y.C11596c;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p475c.p478y.C11634p;
import p459j.p460a.p474c0.p491g.C12081f;
import p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d;
import p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l;
import p459j.p460a.p474c0.p499h.C12140a0;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.b0.e */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/e.class */
public class C11960e implements AbstractC11958d.AbstractC11959a {

    /* renamed from: a */
    public final AbstractC11964d f26815a;

    /* renamed from: b */
    public final AbstractC11965e f26816b;

    /* renamed from: c */
    public final FragmentManager f26817c;

    /* renamed from: d */
    public final Context f26818d;

    /* renamed from: e */
    public final C12140a0.AbstractC12141a f26819e;

    /* renamed from: f */
    public final C11592f<C11596c> f26820f;

    /* renamed from: g */
    public final C11592f<C11617j> f26821g;

    /* renamed from: h */
    public final AbstractC11958d[] f26822h;

    /* renamed from: k */
    public final C11963c f26825k;

    /* renamed from: l */
    public int f26826l;

    /* renamed from: m */
    public final C12140a0.AbstractC12142b f26827m = new C11961a();

    /* renamed from: n */
    public final C11596c.AbstractC11599c f26828n = new C11962b();

    /* renamed from: i */
    public final C11966f f26823i = new C11966f(this);

    /* renamed from: j */
    public final AbstractC11971g f26824j = new C11968g(this);

    /* renamed from: j.a.c0.g.b0.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/e$a.class */
    public class C11961a implements C12140a0.AbstractC12142b {
        public C11961a() {
        }

        @Override // p459j.p460a.p474c0.p499h.C12140a0.AbstractC12142b
        /* renamed from: a */
        public void mo7033a(boolean z) {
            C11960e.this.f26825k.m7759b(z);
        }
    }

    /* renamed from: j.a.c0.g.b0.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/e$b.class */
    public class C11962b extends C11596c.C11605i {
        public C11962b() {
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: a */
        public void mo7730a(C11596c cVar) {
            C11960e.this.f26820f.mo9034a((C11592f) cVar);
            C11960e.this.f26824j.m7700a(cVar.m8974q());
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: b */
        public void mo7729b(C11596c cVar) {
            C11960e.this.f26820f.mo9034a((C11592f) cVar);
        }
    }

    /* renamed from: j.a.c0.g.b0.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/e$c.class */
    public class C11963c extends AbstractC11958d {
        public C11963c(AbstractC11958d.AbstractC11959a aVar, boolean z) {
            super(aVar, z);
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
        /* renamed from: a */
        public boolean mo7699a(boolean z) {
            C12140a0.m7041a().m7040a(C11960e.this.f26818d, C11960e.this.f26816b.mo7714b());
            return true;
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
        /* renamed from: c */
        public boolean mo7695c(boolean z) {
            C12140a0.m7041a().m7039b(C11960e.this.f26818d, C11960e.this.f26816b.mo7714b());
            return true;
        }
    }

    /* renamed from: j.a.c0.g.b0.e$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/e$d.class */
    public interface AbstractC11964d extends C11617j.AbstractC11623f {
        /* renamed from: a */
        void mo7728a(C11634p.C11635a aVar);

        /* renamed from: a */
        void mo7727a(boolean z);

        /* renamed from: b */
        void mo7726b();

        /* renamed from: b */
        void mo7725b(boolean z);

        /* renamed from: c */
        void mo7724c();

        /* renamed from: d */
        void mo7723d();

        /* renamed from: g */
        int mo7722g();

        /* renamed from: s */
        FragmentC12048l mo7721s();

        /* renamed from: t */
        SimSelectorView mo7720t();
    }

    /* renamed from: j.a.c0.g.b0.e$e */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/e$e.class */
    public interface AbstractC11965e {
        /* renamed from: a */
        void mo7719a();

        /* renamed from: a */
        void mo7718a(MessagePartData messagePartData);

        /* renamed from: a */
        void mo7717a(PendingAttachmentData pendingAttachmentData);

        /* renamed from: a */
        void mo7716a(Collection<MessagePartData> collection);

        /* renamed from: a */
        void mo7715a(boolean z);

        /* renamed from: b */
        EditText mo7714b();
    }

    /* renamed from: j.a.c0.g.b0.e$f */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/e$f.class */
    public class C11966f extends AbstractC11958d {

        /* renamed from: c */
        public FragmentC12048l f26832c;

        /* renamed from: j.a.c0.g.b0.e$f$a */
        /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/e$f$a.class */
        public class C11967a implements FragmentC12048l.AbstractC12059k {
            public C11967a() {
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l.AbstractC12059k
            /* renamed from: a */
            public void mo7355a() {
                C11960e.this.f26816b.mo7719a();
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l.AbstractC12059k
            /* renamed from: a */
            public void mo7354a(int i) {
                C11960e.this.f26815a.mo7726b();
                C11960e.this.f26815a.mo7724c();
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l.AbstractC12059k
            /* renamed from: a */
            public void mo7353a(PendingAttachmentData pendingAttachmentData) {
                C11960e.this.f26816b.mo7717a(pendingAttachmentData);
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l.AbstractC12059k
            /* renamed from: a */
            public void mo7352a(Collection<MessagePartData> collection, boolean z) {
                C11960e.this.f26816b.mo7716a(collection);
                C11960e.this.f26815a.mo7726b();
                if (z) {
                    C11960e.this.f26816b.mo7719a();
                }
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l.AbstractC12059k
            /* renamed from: a */
            public void mo7351a(boolean z) {
                C11960e.this.f26816b.mo7715a(!z);
                m7704d();
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l.AbstractC12059k
            /* renamed from: b */
            public void mo7350b() {
                m7704d();
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l.AbstractC12059k
            /* renamed from: b */
            public void mo7349b(MessagePartData messagePartData) {
                C11960e.this.f26816b.mo7718a(messagePartData);
                C11960e.this.f26815a.mo7726b();
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.FragmentC12048l.AbstractC12059k
            /* renamed from: c */
            public void mo7348c() {
                C11960e.this.f26816b.mo7715a(true);
                m7704d();
            }

            /* renamed from: d */
            public final void m7704d() {
                C11966f fVar = C11966f.this;
                fVar.m7759b(fVar.m7706d());
                C11960e.this.f26815a.mo7726b();
                C11960e.this.m7733h();
            }
        }

        public C11966f(AbstractC11958d.AbstractC11959a aVar) {
            super(aVar, false);
        }

        /* renamed from: a */
        public void m7712a(int i) {
            FragmentC12048l lVar = this.f26832c;
            if (lVar != null) {
                lVar.m7372b(i);
            }
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
        /* renamed from: a */
        public boolean mo7713a() {
            FragmentC12048l lVar = this.f26832c;
            if (lVar == null || !lVar.m7389J()) {
                return super.mo7713a();
            }
            return true;
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
        /* renamed from: a */
        public boolean mo7711a(ActionBar actionBar) {
            if (!m7706d()) {
                return false;
            }
            this.f26832c.m7381a(actionBar);
            return true;
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
        /* renamed from: a */
        public boolean mo7699a(boolean z) {
            FragmentC12048l lVar = this.f26832c;
            if (lVar != null) {
                lVar.m7367d(z);
            }
            return !m7706d();
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
        /* renamed from: b */
        public boolean mo7709b() {
            return (!m7706d() || !this.f26832c.m7393F()) ? super.mo7709b() : mo7713a();
        }

        /* renamed from: c */
        public final FragmentC12048l m7707c() {
            FragmentC12048l lVar = this.f26832c;
            if (lVar != null) {
                return lVar;
            }
            FragmentC12048l lVar2 = (FragmentC12048l) C11960e.this.f26817c.findFragmentByTag("mediapicker");
            FragmentC12048l lVar3 = lVar2;
            if (lVar2 == null) {
                lVar3 = C11960e.this.f26815a.mo7721s();
                if (lVar3 == null) {
                    return null;
                }
                C11960e.this.f26817c.beginTransaction().replace(R$id.mediapicker_container, lVar3, "mediapicker").commitAllowingStateLoss();
            }
            return lVar3;
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
        /* renamed from: c */
        public boolean mo7695c(boolean z) {
            if (this.f26832c == null) {
                this.f26832c = m7707c();
                m7712a(C12081f.m7212d().m7216b());
                this.f26832c.m7377a(C11960e.this.f26815a);
                this.f26832c.m7378a(C11960e.this.f26821g);
                this.f26832c.m7375a(new C11967a());
            }
            this.f26832c.m7371b(0, z);
            return m7706d();
        }

        /* renamed from: d */
        public final boolean m7706d() {
            FragmentC12048l lVar = this.f26832c;
            return lVar != null && lVar.m7391H();
        }

        /* renamed from: e */
        public void m7705e() {
            FragmentC12048l lVar = this.f26832c;
            if (lVar != null) {
                lVar.m7386M();
            }
        }
    }

    /* renamed from: j.a.c0.g.b0.e$g */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/e$g.class */
    public class C11968g extends AbstractC11971g {
        public C11968g(AbstractC11958d.AbstractC11959a aVar) {
            super(aVar);
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11971g
        /* renamed from: a */
        public void mo7701a(C11634p.C11635a aVar) {
            C11960e.this.f26815a.mo7728a(aVar);
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11971g, p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
        /* renamed from: a */
        public boolean mo7699a(boolean z) {
            boolean a = super.mo7699a(z);
            C11960e.this.f26815a.mo7725b(false);
            return a;
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11971g, p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
        /* renamed from: c */
        public boolean mo7695c(boolean z) {
            boolean c = super.mo7695c(z);
            C11960e.this.f26815a.mo7725b(true);
            return c;
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11971g
        /* renamed from: e */
        public int mo7693e() {
            return C11960e.this.f26815a.mo7722g();
        }

        @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11971g
        /* renamed from: f */
        public SimSelectorView mo7692f() {
            return C11960e.this.f26815a.mo7720t();
        }
    }

    public C11960e(Context context, AbstractC11964d dVar, AbstractC11965e eVar, C12140a0.AbstractC12141a aVar, FragmentManager fragmentManager, AbstractC11590d<C11596c> dVar2, AbstractC11590d<C11617j> dVar3, Bundle bundle) {
        this.f26815a = dVar;
        this.f26816b = eVar;
        this.f26817c = fragmentManager;
        this.f26818d = context;
        this.f26819e = aVar;
        this.f26820f = AbstractC11590d.m9041a((AbstractC11590d) dVar2);
        this.f26821g = AbstractC11590d.m9041a((AbstractC11590d) dVar3);
        this.f26819e.mo7036b(this.f26827m);
        this.f26820f.mo9033b().m9007a(this.f26828n);
        this.f26825k = new C11963c(this, this.f26819e.mo7034m());
        int i = 0;
        this.f26822h = new AbstractC11958d[]{this.f26823i, this.f26824j, this.f26825k};
        if (bundle != null) {
            while (true) {
                AbstractC11958d[] dVarArr = this.f26822h;
                if (i >= dVarArr.length) {
                    break;
                }
                dVarArr[i].m7761a(bundle);
                i++;
            }
        }
        m7733h();
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d.AbstractC11959a
    /* renamed from: a */
    public String mo7754a(AbstractC11958d dVar) {
        return dVar.getClass().getCanonicalName() + "_savedstate_";
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d.AbstractC11959a
    /* renamed from: a */
    public void mo7757a() {
        C12151d.m6999b(this.f26826l > 0);
        int i = this.f26826l - 1;
        this.f26826l = i;
        if (i == 0) {
            this.f26815a.mo7726b();
        }
    }

    /* renamed from: a */
    public void m7756a(Bundle bundle) {
        int i = 0;
        while (true) {
            AbstractC11958d[] dVarArr = this.f26822h;
            if (i < dVarArr.length) {
                dVarArr[i].m7760b(bundle);
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public void m7751a(boolean z) {
        mo7748b();
        int i = 0;
        while (true) {
            AbstractC11958d[] dVarArr = this.f26822h;
            if (i < dVarArr.length) {
                mo7753a(dVarArr[i], false, z);
                i++;
            } else {
                mo7757a();
                return;
            }
        }
    }

    /* renamed from: a */
    public void m7749a(boolean z, boolean z2) {
        mo7753a(this.f26825k, z, z2);
    }

    /* renamed from: a */
    public boolean m7755a(ActionBar actionBar) {
        int i = 0;
        while (true) {
            AbstractC11958d[] dVarArr = this.f26822h;
            if (i >= dVarArr.length) {
                return false;
            }
            if (dVarArr[i].f26813a) {
                return dVarArr[i].mo7711a(actionBar);
            }
            i++;
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d.AbstractC11959a
    /* renamed from: a */
    public boolean mo7753a(AbstractC11958d dVar, boolean z, boolean z2) {
        if (!this.f26820f.mo9031c() || dVar.f26813a == z) {
            return false;
        }
        mo7748b();
        if (!z ? dVar.mo7699a(z2) : dVar.mo7695c(z2)) {
            dVar.m7759b(z);
        }
        mo7757a();
        return true;
    }

    /* renamed from: a */
    public boolean m7750a(boolean z, C11634p.C11635a aVar) {
        this.f26824j.m7697b(aVar);
        return this.f26824j.m7758d(z);
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d.AbstractC11959a
    /* renamed from: b */
    public void mo7748b() {
        this.f26826l++;
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d.AbstractC11959a
    /* renamed from: b */
    public void mo7747b(AbstractC11958d dVar) {
        if (this.f26820f.mo9031c()) {
            mo7748b();
            int i = 0;
            while (true) {
                AbstractC11958d[] dVarArr = this.f26822h;
                if (i >= dVarArr.length) {
                    break;
                }
                AbstractC11958d dVar2 = dVarArr[i];
                if (dVar2 != dVar) {
                    if (!(dVar2 instanceof C11966f) || !(dVar instanceof C11963c) || this.f26823i.m7707c() == null || !this.f26823i.m7707c().m7366e()) {
                        mo7753a(dVar2, false, false);
                    } else {
                        this.f26823i.m7707c().m7363f(true);
                    }
                }
                i++;
            }
            this.f26815a.mo7724c();
            if (dVar != this.f26825k) {
                this.f26815a.mo7723d();
            }
            mo7757a();
        }
    }

    /* renamed from: b */
    public void m7745b(boolean z, boolean z2) {
        mo7753a(this.f26823i, z, z2);
    }

    /* renamed from: c */
    public boolean m7744c() {
        return this.f26823i.f26813a;
    }

    /* renamed from: c */
    public boolean m7742c(boolean z, boolean z2) {
        return mo7753a(this.f26824j, z, z2);
    }

    /* renamed from: d */
    public boolean m7741d() {
        int i = 0;
        while (true) {
            AbstractC11958d[] dVarArr = this.f26822h;
            if (i >= dVarArr.length) {
                return false;
            }
            if (dVarArr[i].mo7713a()) {
                return true;
            }
            i++;
        }
    }

    /* renamed from: e */
    public void m7739e() {
        this.f26819e.mo7037a(this.f26827m);
    }

    /* renamed from: f */
    public boolean m7737f() {
        int i = 0;
        while (true) {
            AbstractC11958d[] dVarArr = this.f26822h;
            if (i >= dVarArr.length) {
                return false;
            }
            if (dVarArr[i].mo7709b()) {
                return true;
            }
            i++;
        }
    }

    /* renamed from: g */
    public void m7735g() {
        this.f26823i.m7705e();
    }

    /* renamed from: h */
    public final void m7733h() {
        this.f26815a.mo7727a(!this.f26823i.m7706d());
    }
}
