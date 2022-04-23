package p131c.p396i.p397a.p398e;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import com.library.p518ad.core.AdInfo;
import com.library.p518ad.core.BaseAdResult;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import p131c.p396i.p397a.p404g.AbstractC6544c;
import p131c.p396i.p397a.p404g.C6547d;
/* renamed from: c.i.a.e.j */
/* loaded from: classes2-dex2jar.jar:c/i/a/e/j.class */
public class C6520j extends AbstractC6544c.AbstractC6545a {

    /* renamed from: e */
    public boolean f20277e;

    /* renamed from: h */
    public String f20280h;

    /* renamed from: i */
    public SoftReference<ViewGroup> f20281i;

    /* renamed from: a */
    public final LinkedList<AbstractC6508d<?>> f20273a = new LinkedList<>();

    /* renamed from: b */
    public final ArrayList<AbstractC6508d<?>> f20274b = new ArrayList<>();

    /* renamed from: c */
    public final List<AbstractC6518i> f20275c = new ArrayList();

    /* renamed from: d */
    public final List<AbstractC6516h> f20276d = new ArrayList();

    /* renamed from: f */
    public int f20278f = 0;

    /* renamed from: g */
    public boolean f20279g = false;

    /* renamed from: j */
    public final AbstractC6516h f20282j = new C6521a();

    /* renamed from: c.i.a.e.j$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/e/j$a.class */
    public class C6521a implements AbstractC6516h {
        public C6521a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20466a(AbstractC6508d<?> dVar, BaseAdResult<?> baseAdResult, AbstractC6514f<?> fVar) {
            boolean z;
            if (C6520j.this.f20279g || baseAdResult == null || ((1 == dVar.getAdType() || 2 == dVar.getAdType()) && C6520j.this.m20606a() == null)) {
                String str = "mAdContainer=" + C6520j.this.m20606a();
                String str2 = "baseAdResult=" + baseAdResult;
                String str3 = "已经成功:" + C6520j.this.f20279g;
                dVar.getKey();
                dVar.m20624a(fVar);
                z = true;
            } else {
                if (dVar.isNeedCache()) {
                    dVar.m20624a(fVar);
                }
                synchronized (C6520j.class) {
                    try {
                        if (!C6520j.this.f20279g) {
                            boolean a = baseAdResult.m5328a(C6520j.this.m20606a(), fVar);
                            z = a;
                            if (a) {
                                z = a;
                                if (!fVar.mo20607d()) {
                                    C6505a.m20638a().m20634c(dVar.getKey());
                                    z = a;
                                }
                            }
                        } else {
                            z = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (!C6520j.this.f20277e) {
                C6520j.this.m20592a(z, dVar.getAdInfo());
                return;
            }
            C6520j.this.f20279g = true;
            C6520j.this.m20602a(dVar, fVar);
            if (C6520j.m20584c(C6520j.this) >= C6520j.this.f20273a.size()) {
                C6520j.this.m20593a(z);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20577a(String str) {
            if (!C6520j.this.f20277e) {
                C6520j.this.m20583d();
                return;
            }
            C6520j.this.m20594a(str);
            if (C6520j.m20584c(C6520j.this) >= C6520j.this.f20273a.size()) {
                C6520j jVar = C6520j.this;
                jVar.m20593a(jVar.f20279g);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: a */
        public void mo20465a(boolean z) {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6516h
        /* renamed from: b */
        public void mo20464b(String str) {
            if (C6520j.this.f20277e) {
                C6520j.this.m20586b(str);
            }
        }
    }

    public C6520j(List<AbstractC6508d<?>> list) {
        this.f20273a.addAll(list);
        this.f20274b.addAll(list);
    }

    public C6520j(AbstractC6508d<?>... dVarArr) {
        Collections.addAll(this.f20273a, dVarArr);
        Collections.addAll(this.f20274b, dVarArr);
    }

    /* renamed from: a */
    public static Activity m20605a(View view) {
        if (view == null) {
            return null;
        }
        Context context = view.getContext();
        context.getClass().getName();
        if (context instanceof Activity) {
            return (Activity) context;
        }
        try {
            return (Activity) ((ContextWrapper) context).getBaseContext();
        } catch (ClassCastException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ int m20584c(C6520j jVar) {
        int i = jVar.f20278f + 1;
        jVar.f20278f = i;
        return i;
    }

    /* renamed from: a */
    public ViewGroup m20606a() {
        SoftReference<ViewGroup> softReference = this.f20281i;
        if (softReference != null) {
            return softReference.get();
        }
        return null;
    }

    /* renamed from: a */
    public C6520j m20604a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            Activity a = m20605a((View) viewGroup);
            if (a != null) {
                C6547d.m20546a(a, this);
            }
            m20590b(viewGroup);
        }
        return this;
    }

    /* renamed from: a */
    public C6520j m20601a(AbstractC6516h hVar) {
        if (hVar != null) {
            this.f20276d.add(hVar);
        }
        return this;
    }

    /* renamed from: a */
    public C6520j m20600a(AbstractC6518i iVar) {
        if (iVar != null) {
            this.f20275c.add(iVar);
        }
        return this;
    }

    /* renamed from: a */
    public final void m20603a(AbstractC6508d dVar) {
        if (dVar != null) {
            AbstractC6508d a = C6522k.m20576a(dVar.getKey());
            if (a != null) {
                a.m20623a(this.f20282j);
                a.setAdResult(dVar.getAdResult());
                a.setInnerAdEventListener(dVar.getInnerAdEventListener());
                a.timeoutListener(dVar.f20254e);
                a.dataCacheListener(dVar.f20253d);
                return;
            }
            dVar.m20623a(this.f20282j);
            dVar.m20614f();
        }
    }

    /* renamed from: a */
    public final void m20602a(AbstractC6508d<?> dVar, AbstractC6514f<?> fVar) {
        for (AbstractC6516h hVar : this.f20276d) {
            hVar.mo20466a(dVar, dVar.getAdResult(), fVar);
        }
    }

    /* renamed from: a */
    public final void m20594a(String str) {
        for (AbstractC6516h hVar : this.f20276d) {
            hVar.mo20577a(str);
        }
    }

    /* renamed from: a */
    public final void m20593a(boolean z) {
        for (AbstractC6516h hVar : this.f20276d) {
            hVar.mo20465a(z);
        }
        String str = "广告位ID：" + this.f20280h;
    }

    /* renamed from: a */
    public final void m20592a(boolean z, AdInfo adInfo) {
        String str = "广告位ID：" + this.f20280h;
        for (AbstractC6518i iVar : this.f20275c) {
            if (z) {
                iVar.mo3229a(adInfo);
            } else {
                iVar.mo3228b(adInfo);
            }
        }
        this.f20275c.clear();
    }

    /* renamed from: b */
    public final void m20591b() {
        m20579f();
        Iterator<AbstractC6508d<?>> it = this.f20273a.iterator();
        while (it.hasNext()) {
            m20603a(it.next());
        }
    }

    /* renamed from: b */
    public void m20590b(ViewGroup viewGroup) {
        this.f20281i = new SoftReference<>(viewGroup);
    }

    /* renamed from: b */
    public final void m20586b(String str) {
        for (AbstractC6516h hVar : this.f20276d) {
            hVar.mo20464b(str);
        }
    }

    /* renamed from: b */
    public void m20585b(boolean z) {
        this.f20277e = z;
        if (!this.f20273a.isEmpty()) {
            this.f20280h = this.f20273a.get(0).getPlaceId();
        }
        String str = "广告位ID：" + this.f20280h;
        for (AbstractC6518i iVar : this.f20275c) {
            iVar.onStart();
        }
        if (this.f20277e) {
            m20591b();
        } else {
            m20581e();
        }
    }

    /* renamed from: d */
    public final void m20583d() {
        synchronized (this.f20273a) {
            if (this.f20273a.isEmpty()) {
                m20592a(false, (AdInfo) null);
            } else {
                m20603a(this.f20273a.removeFirst());
            }
        }
    }

    /* renamed from: e */
    public final void m20581e() {
        m20579f();
        m20583d();
    }

    /* renamed from: f */
    public final void m20579f() {
        for (int size = this.f20273a.size() - 1; size >= 0; size--) {
            if (this.f20273a.get(size) == null) {
                this.f20273a.remove(size);
            }
        }
        Collections.sort(this.f20273a);
    }

    /* renamed from: g */
    public void m20578g() {
        m20585b(false);
    }

    @Override // p131c.p396i.p397a.p404g.AbstractC6544c.AbstractC6545a, p131c.p396i.p397a.p404g.AbstractC6544c
    public void onDestroy() {
        if (m20606a() != null) {
            m20606a().getContext().getClass().getSimpleName();
            C6547d.m20541b(m20605a((View) m20606a()), this);
        }
        m20590b((ViewGroup) null);
        Iterator<AbstractC6508d<?>> it = this.f20274b.iterator();
        while (it.hasNext()) {
            AbstractC6508d<?> next = it.next();
            if (next != null) {
                next.onDestroy();
            }
        }
        this.f20273a.clear();
        this.f20275c.clear();
        this.f20276d.clear();
    }
}
