package p193e.p194a.p1342w4.p1345t.p1348b;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.LruCache;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p751f4.p762g.C14030t;
import s1.z.c.l;
import w3.b.a.b;
import x3.a0;
@Deprecated
/* renamed from: e.a.w4.t.b.c */
/* loaded from: classes13-dex2jar.jar:e/a/w4/t/b/c.class */
public class C21310c extends AbstractC21309b implements Handler.Callback {

    /* renamed from: c */
    public final C27062a f59691c;

    /* renamed from: b */
    public final Handler f59690b = new Handler(Looper.getMainLooper(), this);

    /* renamed from: d */
    public final Map<String, C17409e> f59692d = new HashMap();

    /* renamed from: e */
    public final LruCache<String, a0<C14030t>> f59693e = new LruCache<>(50);

    public C21310c(Context context) {
        new HandlerThread("DataManager loader").start();
        this.f59691c = C27062a.m968b(context);
    }

    @Override // p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b
    /* renamed from: a */
    public void mo9912a(Collection<C17409e> collection) {
        b bVar;
        if (!(this.f59690b.getLooper() == Looper.myLooper())) {
            this.f59690b.obtainMessage(15, collection).sendToTarget();
            return;
        }
        synchronized (this.f59692d) {
            for (C17409e c17409e : collection) {
                C17409e c17409e2 = this.f59692d.get(c17409e.f48754a);
                if ((c17409e2 == null || (bVar = c17409e2.f48757d) == null || !bVar.f(c17409e.f48757d)) ? false : true) {
                    C17409e.C17410a m16138a = c17409e2.m16138a();
                    m16138a.f48766a = c17409e.f48755b;
                    m16138a.f48767b = c17409e.f48756c;
                    m16138a.f48770e = c17409e.f48759f;
                    m16138a.f48769d = c17409e.f48758e;
                    String str = c17409e.f48754a;
                    l.e(str, "number");
                    m16138a.f48776k = str;
                    m16138a.f48773h = c17409e.f48763j;
                    m16138a.f48775j = c17409e.f48765l;
                    this.f59692d.put(c17409e.f48754a, m16138a.m16133a());
                } else {
                    this.f59692d.put(c17409e.f48754a, c17409e);
                }
            }
        }
        if (collection.size() <= 0) {
            return;
        }
        this.f59691c.m966d(new Intent("com.truecaller.datamanager.STATUSES_CHANGED").putExtra("com.truecaller.datamanager.EXTRA_PRESENCE", new ArrayList(collection)));
    }

    @Override // p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b
    /* renamed from: c */
    public C17409e mo9911c(String str) {
        C17409e c17409e;
        synchronized (this.f59692d) {
            c17409e = this.f59692d.get(str);
        }
        return c17409e;
    }

    @Override // p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b
    /* renamed from: d */
    public a0<C14030t> mo9910d(String str) {
        return this.f59693e.get(str);
    }

    @Override // p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b
    /* renamed from: e */
    public void mo9909e(String str, a0<C14030t> a0Var) {
        this.f59693e.put(str, a0Var);
    }

    @Override // p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b
    /* renamed from: f */
    public void mo9908f(String str, b bVar) {
        synchronized (this.f59692d) {
            if (this.f59692d.containsKey(str)) {
                C17409e.C17410a m16138a = this.f59692d.get(str).m16138a();
                m16138a.f48768c = bVar;
                this.f59692d.put(str, m16138a.m16133a());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 15) {
            mo9912a((Collection) message.obj);
            return true;
        }
        return false;
    }
}
