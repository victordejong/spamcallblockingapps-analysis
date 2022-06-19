package com.bumptech.glide.load.resource.p125d;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.C3651j;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.ComponentCallbacks2C3653k;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.engine.AbstractC3782j;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.p109b.AbstractC3542a;
import com.bumptech.glide.p112e.AbstractC3572a;
import com.bumptech.glide.p112e.C3605h;
import com.bumptech.glide.p112e.p113a.AbstractC3575c;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.bumptech.glide.p112e.p114b.AbstractC3595d;
import com.bumptech.glide.p115f.C3616e;
import com.bumptech.glide.p116g.C3643j;
import com.bumptech.glide.p116g.C3644k;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.load.resource.d.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/g.class */
public final class C3914g {

    /* renamed from: a */
    final AbstractC3542a f14320a;

    /* renamed from: b */
    final List<AbstractC3916b> f14321b;

    /* renamed from: c */
    final ComponentCallbacks2C3653k f14322c;

    /* renamed from: d */
    boolean f14323d;

    /* renamed from: e */
    C3915a f14324e;

    /* renamed from: f */
    boolean f14325f;

    /* renamed from: g */
    C3915a f14326g;

    /* renamed from: h */
    Bitmap f14327h;

    /* renamed from: i */
    C3915a f14328i;

    /* renamed from: j */
    int f14329j;

    /* renamed from: k */
    int f14330k;

    /* renamed from: l */
    int f14331l;

    /* renamed from: m */
    private final Handler f14332m;

    /* renamed from: n */
    private final AbstractC3712e f14333n;

    /* renamed from: o */
    private boolean f14334o;

    /* renamed from: p */
    private boolean f14335p;

    /* renamed from: q */
    private C3651j<Bitmap> f14336q;

    /* renamed from: r */
    private AbstractC3826l<Bitmap> f14337r;

    /* renamed from: com.bumptech.glide.load.resource.d.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/g$a.class */
    public static final class C3915a extends AbstractC3575c<Bitmap> {

        /* renamed from: a */
        final int f14338a;

        /* renamed from: b */
        Bitmap f14339b;

        /* renamed from: c */
        private final Handler f14340c;

        /* renamed from: d */
        private final long f14341d;

        C3915a(Handler handler, int i, long j) {
            this.f14340c = handler;
            this.f14338a = i;
            this.f14341d = j;
        }

        @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
        /* renamed from: a */
        public final /* synthetic */ void mo27008a(Object obj, AbstractC3595d abstractC3595d) {
            this.f14339b = (Bitmap) obj;
            this.f14340c.sendMessageAtTime(this.f14340c.obtainMessage(1, this), this.f14341d);
        }

        @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
        /* renamed from: b */
        public final void mo37199b(Drawable drawable) {
            this.f14339b = null;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.d.g$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/g$b.class */
    public interface AbstractC3916b {
        /* renamed from: c */
        void mo37198c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.resource.d.g$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/g$c.class */
    public final class C3917c implements Handler.Callback {
        C3917c() {
            C3914g.this = r4;
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what == 1) {
                C3914g.this.m37206a((C3915a) message.obj);
                return true;
            } else if (message.what != 2) {
                return false;
            } else {
                C3914g.this.f14322c.m37548a((AbstractC3585j<?>) ((C3915a) message.obj));
                return false;
            }
        }
    }

    public C3914g(ComponentCallbacks2C3548c componentCallbacks2C3548c, AbstractC3542a abstractC3542a, int i, int i2, AbstractC3826l<Bitmap> abstractC3826l, Bitmap bitmap) {
        this(componentCallbacks2C3548c.f13531a, ComponentCallbacks2C3548c.m37719b(componentCallbacks2C3548c.f13532b.getBaseContext()), abstractC3542a, null, ComponentCallbacks2C3548c.m37719b(componentCallbacks2C3548c.f13532b.getBaseContext()).mo27047d().mo27100a((AbstractC3572a<?>) C3605h.m37656b(AbstractC3782j.f14056b).mo27087a(true).mo27075b(true).mo27085b(i, i2)), abstractC3826l, bitmap);
    }

    C3914g(AbstractC3712e abstractC3712e, ComponentCallbacks2C3653k componentCallbacks2C3653k, AbstractC3542a abstractC3542a, Handler handler, C3651j<Bitmap> c3651j, AbstractC3826l<Bitmap> abstractC3826l, Bitmap bitmap) {
        this.f14321b = new ArrayList();
        this.f14322c = componentCallbacks2C3653k;
        Handler handler2 = handler == null ? new Handler(Looper.getMainLooper(), new C3917c()) : handler;
        this.f14333n = abstractC3712e;
        this.f14332m = handler2;
        this.f14336q = c3651j;
        this.f14320a = abstractC3542a;
        m37207a(abstractC3826l, bitmap);
    }

    /* renamed from: c */
    private void m37202c() {
        if (this.f14323d) {
            return;
        }
        this.f14323d = true;
        this.f14325f = false;
        m37201d();
    }

    /* renamed from: d */
    private void m37201d() {
        if (!this.f14323d || this.f14334o) {
            return;
        }
        if (this.f14335p) {
            C3643j.m37585a(this.f14328i == null, "Pending target must be null when starting from the first frame");
            this.f14320a.mo37730f();
            this.f14335p = false;
        }
        C3915a c3915a = this.f14328i;
        if (c3915a != null) {
            this.f14328i = null;
            m37206a(c3915a);
            return;
        }
        this.f14334o = true;
        int mo37733c = this.f14320a.mo37733c();
        this.f14320a.mo37734b();
        this.f14326g = new C3915a(this.f14332m, this.f14320a.mo37731e(), SystemClock.uptimeMillis() + mo37733c);
        this.f14336q.mo27100a((AbstractC3572a<?>) C3605h.m37655b(m37200e())).mo27089a(this.f14320a).m37561a((C3651j<Bitmap>) this.f14326g);
    }

    /* renamed from: e */
    private static AbstractC3818f m37200e() {
        return new C3616e(Double.valueOf(Math.random()));
    }

    /* renamed from: a */
    public final int m37208a() {
        return this.f14320a.mo37732d();
    }

    /* renamed from: a */
    public final void m37207a(AbstractC3826l<Bitmap> abstractC3826l, Bitmap bitmap) {
        this.f14337r = (AbstractC3826l) C3643j.m37588a(abstractC3826l, "Argument must not be null");
        this.f14327h = (Bitmap) C3643j.m37588a(bitmap, "Argument must not be null");
        this.f14336q = this.f14336q.mo27100a((AbstractC3572a<?>) new C3605h().mo27093a(abstractC3826l));
        this.f14329j = C3644k.m37579a(bitmap);
        this.f14330k = bitmap.getWidth();
        this.f14331l = bitmap.getHeight();
    }

    /* renamed from: a */
    final void m37206a(C3915a c3915a) {
        this.f14334o = false;
        if (this.f14325f) {
            this.f14332m.obtainMessage(2, c3915a).sendToTarget();
        } else if (this.f14323d) {
            if (c3915a.f14339b != null) {
                m37204b();
                C3915a c3915a2 = this.f14324e;
                this.f14324e = c3915a;
                for (int size = this.f14321b.size() - 1; size >= 0; size--) {
                    this.f14321b.get(size).mo37198c();
                }
                if (c3915a2 != null) {
                    this.f14332m.obtainMessage(2, c3915a2).sendToTarget();
                }
            }
            m37201d();
        } else if (this.f14335p) {
            this.f14332m.obtainMessage(2, c3915a).sendToTarget();
        } else {
            this.f14328i = c3915a;
        }
    }

    /* renamed from: a */
    public final void m37205a(AbstractC3916b abstractC3916b) {
        if (!this.f14325f) {
            if (this.f14321b.contains(abstractC3916b)) {
                throw new IllegalStateException("Cannot subscribe twice in a row");
            }
            boolean isEmpty = this.f14321b.isEmpty();
            this.f14321b.add(abstractC3916b);
            if (!isEmpty) {
                return;
            }
            m37202c();
            return;
        }
        throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
    }

    /* renamed from: b */
    public final void m37204b() {
        Bitmap bitmap = this.f14327h;
        if (bitmap != null) {
            this.f14333n.mo37266a(bitmap);
            this.f14327h = null;
        }
    }

    /* renamed from: b */
    public final void m37203b(AbstractC3916b abstractC3916b) {
        this.f14321b.remove(abstractC3916b);
        if (this.f14321b.isEmpty()) {
            this.f14323d = false;
        }
    }
}
