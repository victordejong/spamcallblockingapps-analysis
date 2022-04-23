package p081h.p203i.p392f.p393a.p394b;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import com.google.android.gms.maps.model.CameraPosition;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p081h.p203i.p204a.p224e.p282l.C8856c;
import p081h.p203i.p204a.p224e.p282l.p284k.C8908c;
import p081h.p203i.p392f.p393a.C10179a;
import p081h.p203i.p392f.p393a.p394b.AbstractC10182b;
import p081h.p203i.p392f.p393a.p394b.p395d.AbstractC10190a;
import p081h.p203i.p392f.p393a.p394b.p395d.C10191b;
import p081h.p203i.p392f.p393a.p394b.p395d.C10194c;
import p081h.p203i.p392f.p393a.p394b.p396e.AbstractC10197a;
import p081h.p203i.p392f.p393a.p394b.p396e.C10198b;
/* renamed from: h.i.f.a.b.c */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/b/c.class */
public class C10183c<T extends AbstractC10182b> implements C8856c.AbstractC8858b, C8856c.AbstractC8863g, C8856c.AbstractC8860d {

    /* renamed from: a */
    public final C10179a f22948a;

    /* renamed from: b */
    public final C10179a.C10180a f22949b;

    /* renamed from: c */
    public final C10179a.C10180a f22950c;

    /* renamed from: d */
    public AbstractC10190a<T> f22951d;

    /* renamed from: e */
    public final ReadWriteLock f22952e;

    /* renamed from: f */
    public AbstractC10197a<T> f22953f;

    /* renamed from: g */
    public C8856c f22954g;

    /* renamed from: h */
    public CameraPosition f22955h;

    /* renamed from: i */
    public C10183c<T>.AsyncTaskC10185b f22956i;

    /* renamed from: j */
    public final ReadWriteLock f22957j;

    /* renamed from: k */
    public AbstractC10188e<T> f22958k;

    /* renamed from: l */
    public AbstractC10187d<T> f22959l;

    /* renamed from: m */
    public AbstractC10189f<T> f22960m;

    /* renamed from: n */
    public AbstractC10186c<T> f22961n;

    /* renamed from: h.i.f.a.b.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/c$b.class */
    public class AsyncTaskC10185b extends AsyncTask<Float, Void, Set<? extends AbstractC10181a<T>>> {
        public AsyncTaskC10185b() {
        }

        /* renamed from: a */
        public Set<? extends AbstractC10181a<T>> doInBackground(Float... fArr) {
            C10183c.this.f22952e.readLock().lock();
            try {
                return C10183c.this.f22951d.mo13178a(fArr[0].floatValue());
            } finally {
                C10183c.this.f22952e.readLock().unlock();
            }
        }

        /* renamed from: a */
        public void onPostExecute(Set<? extends AbstractC10181a<T>> set) {
            C10183c.this.f22953f.mo13154a(set);
        }
    }

    /* renamed from: h.i.f.a.b.c$c */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/c$c.class */
    public interface AbstractC10186c<T extends AbstractC10182b> {
        /* renamed from: a */
        boolean mo13186a(AbstractC10181a<T> aVar);
    }

    /* renamed from: h.i.f.a.b.c$d */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/c$d.class */
    public interface AbstractC10187d<T extends AbstractC10182b> {
    }

    /* renamed from: h.i.f.a.b.c$e */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/c$e.class */
    public interface AbstractC10188e<T extends AbstractC10182b> {
        /* renamed from: a */
        boolean mo13185a(T t);
    }

    /* renamed from: h.i.f.a.b.c$f */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/c$f.class */
    public interface AbstractC10189f<T extends AbstractC10182b> {
    }

    public C10183c(Context context, C8856c cVar) {
        this(context, cVar, new C10179a(cVar));
    }

    public C10183c(Context context, C8856c cVar, C10179a aVar) {
        this.f22952e = new ReentrantReadWriteLock();
        this.f22957j = new ReentrantReadWriteLock();
        this.f22954g = cVar;
        this.f22948a = aVar;
        this.f22950c = aVar.m13211a();
        this.f22949b = aVar.m13211a();
        this.f22953f = new C10198b(context, cVar, this);
        this.f22951d = new C10194c(new C10191b());
        this.f22956i = new AsyncTaskC10185b();
        this.f22953f.mo13153b();
    }

    /* renamed from: a */
    public void m13201a() {
        this.f22952e.writeLock().lock();
        try {
            this.f22951d.mo13179a();
        } finally {
            this.f22952e.writeLock().unlock();
        }
    }

    /* renamed from: a */
    public void m13200a(AbstractC10186c<T> cVar) {
        this.f22961n = cVar;
        this.f22953f.mo13163a(cVar);
    }

    /* renamed from: a */
    public void m13199a(AbstractC10188e<T> eVar) {
        this.f22958k = eVar;
        this.f22953f.mo13161a(eVar);
    }

    /* renamed from: a */
    public void m13197a(AbstractC10197a<T> aVar) {
        this.f22953f.mo13163a((AbstractC10186c) null);
        this.f22953f.mo13161a((AbstractC10188e) null);
        this.f22950c.m13207a();
        this.f22949b.m13207a();
        this.f22953f.mo13169a();
        this.f22953f = aVar;
        this.f22953f.mo13153b();
        this.f22953f.mo13163a(this.f22961n);
        this.f22953f.mo13162a(this.f22959l);
        this.f22953f.mo13161a(this.f22958k);
        this.f22953f.mo13160a(this.f22960m);
        m13195b();
    }

    /* renamed from: a */
    public void m13196a(Collection<T> collection) {
        this.f22952e.writeLock().lock();
        try {
            this.f22951d.mo13175a(collection);
        } finally {
            this.f22952e.writeLock().unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p282l.C8856c.AbstractC8863g
    /* renamed from: a */
    public boolean mo13137a(C8908c cVar) {
        return m13190e().mo13137a(cVar);
    }

    /* renamed from: b */
    public void m13195b() {
        this.f22957j.writeLock().lock();
        try {
            this.f22956i.cancel(true);
            this.f22956i = new AsyncTaskC10185b();
            if (Build.VERSION.SDK_INT < 11) {
                this.f22956i.execute(Float.valueOf(this.f22954g.m16865b().f7023b));
            } else {
                this.f22956i.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Float.valueOf(this.f22954g.m16865b().f7023b));
            }
        } finally {
            this.f22957j.writeLock().unlock();
        }
    }

    /* renamed from: c */
    public C10179a.C10180a m13193c() {
        return this.f22950c;
    }

    /* renamed from: d */
    public C10179a.C10180a m13191d() {
        return this.f22949b;
    }

    /* renamed from: e */
    public C10179a m13190e() {
        return this.f22948a;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.C8856c.AbstractC8858b
    /* renamed from: v */
    public void mo13189v() {
        AbstractC10197a<T> aVar = this.f22953f;
        if (aVar instanceof C8856c.AbstractC8858b) {
            ((C8856c.AbstractC8858b) aVar).mo13189v();
        }
        CameraPosition b = this.f22954g.m16865b();
        CameraPosition cameraPosition = this.f22955h;
        if (cameraPosition == null || cameraPosition.f7023b != b.f7023b) {
            this.f22955h = this.f22954g.m16865b();
            m13195b();
        }
    }
}
