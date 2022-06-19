package p078c.p084c.p085a.p110c.p111a.p112a;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.splitcompat.C8552q;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: c.c.a.c.a.a.c */
/* loaded from: classes2-dex2jar.jar:c/c/a/c/a/a/c.class */
public abstract class AbstractC1967c<StateT> {

    /* renamed from: a */
    protected final C8466a f7049a;

    /* renamed from: b */
    private final IntentFilter f7050b;

    /* renamed from: c */
    private final Context f7051c;

    /* renamed from: d */
    protected final Set<AbstractC1965a<StateT>> f7052d = new HashSet();

    /* renamed from: e */
    private C1966b f7053e = null;

    /* renamed from: f */
    private volatile boolean f7054f = false;

    public AbstractC1967c(C8466a c8466a, IntentFilter intentFilter, Context context) {
        this.f7049a = c8466a;
        this.f7050b = intentFilter;
        this.f7051c = C8552q.m3355c(context);
    }

    /* renamed from: b */
    private final void m28432b() {
        C1966b c1966b;
        if ((this.f7054f || !this.f7052d.isEmpty()) && this.f7053e == null) {
            C1966b c1966b2 = new C1966b(this);
            this.f7053e = c1966b2;
            this.f7051c.registerReceiver(c1966b2, this.f7050b);
        }
        if (this.f7054f || !this.f7052d.isEmpty() || (c1966b = this.f7053e) == null) {
            return;
        }
        this.f7051c.unregisterReceiver(c1966b);
        this.f7053e = null;
    }

    /* renamed from: a */
    public abstract void mo3332a(Context context, Intent intent);

    /* renamed from: c */
    public final void m28431c(boolean z) {
        synchronized (this) {
            this.f7054f = z;
            m28432b();
        }
    }

    /* renamed from: d */
    public final void m28430d(StateT statet) {
        synchronized (this) {
            Iterator it = new HashSet(this.f7052d).iterator();
            while (it.hasNext()) {
                ((AbstractC1965a) it.next()).m28433a(statet);
            }
        }
    }

    /* renamed from: e */
    public final boolean m28429e() {
        boolean z;
        synchronized (this) {
            z = this.f7053e != null;
        }
        return z;
    }
}
