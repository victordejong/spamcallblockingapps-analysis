package p459j.p460a.p474c0.p475c.p479z;

import android.accounts.Account;
import java.util.ArrayList;
import java.util.List;
import p081h.p093b.p113e.AbstractC5694d;
import p081h.p093b.p113e.C5702k;
/* renamed from: j.a.c0.c.z.g */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/g.class */
public class C11656g implements AbstractC5694d {

    /* renamed from: a */
    public final List<C11650f> f26164a;

    /* renamed from: b */
    public C11650f f26165b;

    /* renamed from: c */
    public final int f26166c;

    /* renamed from: d */
    public final Account f26167d;

    /* renamed from: e */
    public final List<AbstractC11657a> f26168e;

    /* renamed from: j.a.c0.c.z.g$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/g$a.class */
    public interface AbstractC11657a {
        /* renamed from: a */
        void mo8695a();

        /* renamed from: a */
        void mo8694a(C11650f fVar);

        void onStart();
    }

    public C11656g() {
        this(-1073741824, null);
    }

    public C11656g(int i, Account account) {
        this.f26164a = new ArrayList();
        this.f26168e = new ArrayList();
        this.f26166c = i;
        this.f26167d = account;
    }

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: a */
    public void mo8702a() {
        for (AbstractC11657a aVar : this.f26168e) {
            aVar.onStart();
        }
    }

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: a */
    public void mo8701a(C5702k kVar) {
        this.f26165b.mo8716a(kVar);
    }

    /* renamed from: a */
    public void m8700a(AbstractC11657a aVar) {
        this.f26168e.add(aVar);
    }

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: b */
    public void mo8699b() {
        this.f26165b.m24833a();
        for (AbstractC11657a aVar : this.f26168e) {
            aVar.mo8694a(this.f26165b);
        }
        int size = this.f26164a.size();
        if (size > 1) {
            C11650f fVar = this.f26164a.get(size - 2);
            fVar.m24827a(this.f26165b);
            this.f26165b = fVar;
        } else {
            this.f26165b = null;
        }
        this.f26164a.remove(size - 1);
    }

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: c */
    public void mo8698c() {
        for (AbstractC11657a aVar : this.f26168e) {
            aVar.mo8695a();
        }
    }

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: d */
    public void mo8697d() {
        this.f26165b = new C11650f(this.f26166c, this.f26167d);
        this.f26164a.add(this.f26165b);
    }

    /* renamed from: e */
    public void m8696e() {
        this.f26165b = null;
        this.f26164a.clear();
    }
}
