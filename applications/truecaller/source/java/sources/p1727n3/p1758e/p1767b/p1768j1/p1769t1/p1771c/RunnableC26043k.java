package p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.b.j1.t1.c.k */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/k.class */
public class RunnableC26043k implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f72712a;

    /* renamed from: b */
    public final /* synthetic */ ListenableFuture f72713b;

    /* renamed from: c */
    public final /* synthetic */ C26040i f72714c;

    public RunnableC26043k(C26040i c26040i, int i, ListenableFuture listenableFuture) {
        this.f72714c = c26040i;
        this.f72712a = i;
        this.f72713b = listenableFuture;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        C26247b c26247b;
        int decrementAndGet;
        C26040i c26040i = this.f72714c;
        int i = this.f72712a;
        ListenableFuture listenableFuture = this.f72713b;
        List<V> list = c26040i.f72705b;
        if (c26040i.isDone() || list == 0) {
            MediaSessionCompat.m43187x(c26040i.f72706c, "Future was done before all dependencies completed");
            return;
        }
        boolean z = true;
        try {
            try {
                try {
                    MediaSessionCompat.m43187x(listenableFuture.isDone(), "Tried to set value from future which is not done");
                    list.set(i, C26034g.m2782b(listenableFuture));
                    decrementAndGet = c26040i.f72707d.decrementAndGet();
                    if (decrementAndGet < 0) {
                        z = false;
                    }
                    MediaSessionCompat.m43187x(z, "Less than 0 remaining futures");
                } catch (Error e) {
                    c26040i.f72709f.m2256c(e);
                    int decrementAndGet2 = c26040i.f72707d.decrementAndGet();
                    MediaSessionCompat.m43187x(decrementAndGet2 >= 0, "Less than 0 remaining futures");
                    if (decrementAndGet2 != 0) {
                        return;
                    }
                    Collection collection = c26040i.f72705b;
                    if (collection != null) {
                        c26247b = c26040i.f72709f;
                        arrayList = new ArrayList(collection);
                    }
                } catch (CancellationException e2) {
                    if (c26040i.f72706c) {
                        c26040i.cancel(false);
                    }
                    int decrementAndGet3 = c26040i.f72707d.decrementAndGet();
                    MediaSessionCompat.m43187x(decrementAndGet3 >= 0, "Less than 0 remaining futures");
                    if (decrementAndGet3 != 0) {
                        return;
                    }
                    Collection collection2 = c26040i.f72705b;
                    if (collection2 != null) {
                        c26247b = c26040i.f72709f;
                        arrayList = new ArrayList(collection2);
                    }
                }
            } catch (RuntimeException e3) {
                if (c26040i.f72706c) {
                    c26040i.f72709f.m2256c(e3);
                }
                int decrementAndGet4 = c26040i.f72707d.decrementAndGet();
                MediaSessionCompat.m43187x(decrementAndGet4 >= 0, "Less than 0 remaining futures");
                if (decrementAndGet4 != 0) {
                    return;
                }
                Collection collection3 = c26040i.f72705b;
                if (collection3 != null) {
                    c26247b = c26040i.f72709f;
                    arrayList = new ArrayList(collection3);
                }
            } catch (ExecutionException e4) {
                if (c26040i.f72706c) {
                    c26040i.f72709f.m2256c(e4.getCause());
                }
                int decrementAndGet5 = c26040i.f72707d.decrementAndGet();
                MediaSessionCompat.m43187x(decrementAndGet5 >= 0, "Less than 0 remaining futures");
                if (decrementAndGet5 != 0) {
                    return;
                }
                Collection collection4 = c26040i.f72705b;
                if (collection4 != null) {
                    c26247b = c26040i.f72709f;
                    arrayList = new ArrayList(collection4);
                }
            }
            if (decrementAndGet != 0) {
                return;
            }
            Collection collection5 = c26040i.f72705b;
            if (collection5 != null) {
                c26247b = c26040i.f72709f;
                arrayList = new ArrayList(collection5);
                c26247b.m2258a(arrayList);
                return;
            }
            MediaSessionCompat.m43187x(c26040i.isDone(), null);
        } catch (Throwable th) {
            int decrementAndGet6 = c26040i.f72707d.decrementAndGet();
            MediaSessionCompat.m43187x(decrementAndGet6 >= 0, "Less than 0 remaining futures");
            if (decrementAndGet6 == 0) {
                Collection collection6 = c26040i.f72705b;
                if (collection6 != null) {
                    c26040i.f72709f.m2258a(new ArrayList(collection6));
                } else {
                    MediaSessionCompat.m43187x(c26040i.isDone(), null);
                }
            }
            throw th;
        }
    }
}
