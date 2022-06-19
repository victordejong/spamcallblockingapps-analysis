package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.C3960d;
import com.bumptech.glide.C3965e;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.C4060i;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.p214j.p216e.C4244a;
import com.bumptech.glide.p223p.C4377f;
import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.p223p.p224l.AbstractC4394c;
import com.bumptech.glide.request.p225h.AbstractC4410g;
import com.bumptech.glide.request.p225h.AbstractC4411h;
import com.bumptech.glide.request.p226i.AbstractC4419c;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/SingleRequest.class */
public final class SingleRequest<R> implements AbstractC4399c, AbstractC4410g, AbstractC4402f {

    /* renamed from: a */
    private static final boolean f13406a = Log.isLoggable("Request", 2);

    /* renamed from: A */
    private int f13407A;

    /* renamed from: B */
    private int f13408B;

    /* renamed from: C */
    private boolean f13409C;

    /* renamed from: D */
    private RuntimeException f13410D;

    /* renamed from: b */
    private final String f13411b;

    /* renamed from: c */
    private final AbstractC4394c f13412c;

    /* renamed from: d */
    private final Object f13413d;

    /* renamed from: e */
    private final AbstractC4400d<R> f13414e;

    /* renamed from: f */
    private final RequestCoordinator f13415f;

    /* renamed from: g */
    private final Context f13416g;

    /* renamed from: h */
    private final C3965e f13417h;

    /* renamed from: i */
    private final Object f13418i;

    /* renamed from: j */
    private final Class<R> f13419j;

    /* renamed from: k */
    private final AbstractC4397a<?> f13420k;

    /* renamed from: l */
    private final int f13421l;

    /* renamed from: m */
    private final int f13422m;

    /* renamed from: n */
    private final Priority f13423n;

    /* renamed from: o */
    private final AbstractC4411h<R> f13424o;

    /* renamed from: p */
    private final List<AbstractC4400d<R>> f13425p;

    /* renamed from: q */
    private final AbstractC4419c<? super R> f13426q;

    /* renamed from: r */
    private final Executor f13427r;

    /* renamed from: s */
    private AbstractC4083s<R> f13428s;

    /* renamed from: t */
    private C4060i.C4066d f13429t;

    /* renamed from: u */
    private long f13430u;

    /* renamed from: v */
    private volatile C4060i f13431v;

    /* renamed from: w */
    private Status f13432w;

    /* renamed from: x */
    private Drawable f13433x;

    /* renamed from: y */
    private Drawable f13434y;

    /* renamed from: z */
    private Drawable f13435z;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/SingleRequest$Status.class */
    public enum Status {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    private SingleRequest(Context context, C3965e c3965e, Object obj, Object obj2, Class<R> cls, AbstractC4397a<?> abstractC4397a, int i, int i2, Priority priority, AbstractC4411h<R> abstractC4411h, AbstractC4400d<R> abstractC4400d, List<AbstractC4400d<R>> list, RequestCoordinator requestCoordinator, C4060i c4060i, AbstractC4419c<? super R> abstractC4419c, Executor executor) {
        this.f13411b = f13406a ? String.valueOf(super.hashCode()) : null;
        this.f13412c = AbstractC4394c.m22678a();
        this.f13413d = obj;
        this.f13416g = context;
        this.f13417h = c3965e;
        this.f13418i = obj2;
        this.f13419j = cls;
        this.f13420k = abstractC4397a;
        this.f13421l = i;
        this.f13422m = i2;
        this.f13423n = priority;
        this.f13424o = abstractC4411h;
        this.f13414e = abstractC4400d;
        this.f13425p = list;
        this.f13415f = requestCoordinator;
        this.f13431v = c4060i;
        this.f13426q = abstractC4419c;
        this.f13427r = executor;
        this.f13432w = Status.PENDING;
        if (this.f13410D != null || !c3965e.m23666g().m23663a(C3960d.C3963c.class)) {
            return;
        }
        this.f13410D = new RuntimeException("Glide request origin trace");
    }

    /* renamed from: A */
    private void m22675A() {
        if (!m22672l()) {
            return;
        }
        Drawable drawable = null;
        if (this.f13418i == null) {
            drawable = m22668p();
        }
        Drawable drawable2 = drawable;
        if (drawable == null) {
            drawable2 = m22669o();
        }
        Drawable drawable3 = drawable2;
        if (drawable2 == null) {
            drawable3 = m22667q();
        }
        this.f13424o.mo22559e(drawable3);
    }

    /* renamed from: i */
    private void m22674i() {
        if (!this.f13409C) {
            return;
        }
        throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
    }

    /* renamed from: k */
    private boolean m22673k() {
        RequestCoordinator requestCoordinator = this.f13415f;
        return requestCoordinator == null || requestCoordinator.mo22574k(this);
    }

    /* renamed from: l */
    private boolean m22672l() {
        RequestCoordinator requestCoordinator = this.f13415f;
        return requestCoordinator == null || requestCoordinator.mo22580e(this);
    }

    /* renamed from: m */
    private boolean m22671m() {
        RequestCoordinator requestCoordinator = this.f13415f;
        return requestCoordinator == null || requestCoordinator.mo22578g(this);
    }

    /* renamed from: n */
    private void m22670n() {
        m22674i();
        this.f13412c.mo22676c();
        this.f13424o.mo22558b(this);
        C4060i.C4066d c4066d = this.f13429t;
        if (c4066d != null) {
            c4066d.m23359a();
            this.f13429t = null;
        }
    }

    /* renamed from: o */
    private Drawable m22669o() {
        if (this.f13433x == null) {
            Drawable m22607o = this.f13420k.m22607o();
            this.f13433x = m22607o;
            if (m22607o == null && this.f13420k.m22609n() > 0) {
                this.f13433x = m22665s(this.f13420k.m22609n());
            }
        }
        return this.f13433x;
    }

    /* renamed from: p */
    private Drawable m22668p() {
        if (this.f13435z == null) {
            Drawable m22606p = this.f13420k.m22606p();
            this.f13435z = m22606p;
            if (m22606p == null && this.f13420k.m22605q() > 0) {
                this.f13435z = m22665s(this.f13420k.m22605q());
            }
        }
        return this.f13435z;
    }

    /* renamed from: q */
    private Drawable m22667q() {
        if (this.f13434y == null) {
            Drawable m22600w = this.f13420k.m22600w();
            this.f13434y = m22600w;
            if (m22600w == null && this.f13420k.m22599x() > 0) {
                this.f13434y = m22665s(this.f13420k.m22599x());
            }
        }
        return this.f13434y;
    }

    /* renamed from: r */
    private boolean m22666r() {
        RequestCoordinator requestCoordinator = this.f13415f;
        return requestCoordinator == null || !requestCoordinator.mo22582c().mo22583b();
    }

    /* renamed from: s */
    private Drawable m22665s(int i) {
        return C4244a.m23067a(this.f13417h, i, this.f13420k.m22654D() != null ? this.f13420k.m22654D() : this.f13416g.getTheme());
    }

    /* renamed from: t */
    private void m22664t(String str) {
        Log.v("Request", str + " this: " + this.f13411b);
    }

    /* renamed from: u */
    private static int m22663u(int i, float f) {
        if (i != Integer.MIN_VALUE) {
            i = Math.round(f * i);
        }
        return i;
    }

    /* renamed from: v */
    private void m22662v() {
        RequestCoordinator requestCoordinator = this.f13415f;
        if (requestCoordinator != null) {
            requestCoordinator.mo22584a(this);
        }
    }

    /* renamed from: w */
    private void m22661w() {
        RequestCoordinator requestCoordinator = this.f13415f;
        if (requestCoordinator != null) {
            requestCoordinator.mo22576i(this);
        }
    }

    /* renamed from: x */
    public static <R> SingleRequest<R> m22660x(Context context, C3965e c3965e, Object obj, Object obj2, Class<R> cls, AbstractC4397a<?> abstractC4397a, int i, int i2, Priority priority, AbstractC4411h<R> abstractC4411h, AbstractC4400d<R> abstractC4400d, List<AbstractC4400d<R>> list, RequestCoordinator requestCoordinator, C4060i c4060i, AbstractC4419c<? super R> abstractC4419c, Executor executor) {
        return new SingleRequest<>(context, c3965e, obj, obj2, cls, abstractC4397a, i, i2, priority, abstractC4411h, abstractC4400d, list, requestCoordinator, c4060i, abstractC4419c, executor);
    }

    /* renamed from: y */
    private void m22659y(GlideException glideException, int i) {
        boolean z;
        this.f13412c.mo22676c();
        synchronized (this.f13413d) {
            glideException.setOrigin(this.f13410D);
            int m23665h = this.f13417h.m23665h();
            if (m23665h <= i) {
                Log.w("Glide", "Load failed for " + this.f13418i + " with size [" + this.f13407A + "x" + this.f13408B + "]", glideException);
                if (m23665h <= 4) {
                    glideException.logRootCauses("Glide");
                }
            }
            this.f13429t = null;
            this.f13432w = Status.FAILED;
            this.f13409C = true;
            List<AbstractC4400d<R>> list = this.f13425p;
            if (list != null) {
                Iterator<AbstractC4400d<R>> it = list.iterator();
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    z2 |= it.next().m22592a(glideException, this.f13418i, this.f13424o, m22666r());
                }
            } else {
                z = false;
            }
            AbstractC4400d<R> abstractC4400d = this.f13414e;
            if (!(z | (abstractC4400d != null && abstractC4400d.m22592a(glideException, this.f13418i, this.f13424o, m22666r())))) {
                m22675A();
            }
            this.f13409C = false;
            m22662v();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: z */
    private void m22658z(AbstractC4083s<R> abstractC4083s, R r, DataSource dataSource, boolean z) {
        boolean z2;
        boolean m22666r = m22666r();
        this.f13432w = Status.COMPLETE;
        this.f13428s = abstractC4083s;
        if (this.f13417h.m23665h() <= 3) {
            Log.d("Glide", "Finished loading " + r.getClass().getSimpleName() + " from " + dataSource + " for " + this.f13418i + " with size [" + this.f13407A + "x" + this.f13408B + "] in " + C4377f.m22736a(this.f13430u) + " ms");
        }
        this.f13409C = true;
        try {
            List<AbstractC4400d<R>> list = this.f13425p;
            if (list != null) {
                Iterator<AbstractC4400d<R>> it = list.iterator();
                boolean z3 = false;
                while (true) {
                    z2 = z3;
                    if (!it.hasNext()) {
                        break;
                    }
                    z3 |= it.next().m22591b(r, this.f13418i, this.f13424o, dataSource, m22666r);
                }
            } else {
                z2 = false;
            }
            AbstractC4400d<R> abstractC4400d = this.f13414e;
            if (!((abstractC4400d != null && abstractC4400d.m22591b(r, this.f13418i, this.f13424o, dataSource, m22666r)) | z2)) {
                this.f13424o.mo22560c(r, this.f13426q.mo22535a(dataSource, m22666r));
            }
            this.f13409C = false;
            m22661w();
        } catch (Throwable th) {
            this.f13409C = false;
            throw th;
        }
    }

    @Override // com.bumptech.glide.request.AbstractC4402f
    /* renamed from: a */
    public void mo22587a(GlideException glideException) {
        m22659y(glideException, 5);
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: b */
    public boolean mo22583b() {
        boolean z;
        synchronized (this.f13413d) {
            z = this.f13432w == Status.COMPLETE;
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.AbstractC4402f
    /* renamed from: c */
    public void mo22586c(AbstractC4083s<?> abstractC4083s, DataSource dataSource, boolean z) {
        Throwable th;
        this.f13412c.mo22676c();
        AbstractC4083s<?> abstractC4083s2 = null;
        try {
            synchronized (this.f13413d) {
                try {
                    this.f13429t = null;
                    if (abstractC4083s == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected to receive a Resource<R> with an object of ");
                        sb.append(this.f13419j);
                        sb.append(" inside, but instead got null.");
                        mo22587a(new GlideException(sb.toString()));
                        return;
                    }
                    Object obj = abstractC4083s.get();
                    try {
                        if (obj != null && this.f13419j.isAssignableFrom(obj.getClass())) {
                            if (m22671m()) {
                                m22658z(abstractC4083s, obj, dataSource, z);
                                return;
                            }
                            this.f13428s = null;
                            this.f13432w = Status.COMPLETE;
                            this.f13431v.m23366k(abstractC4083s);
                            return;
                        }
                        this.f13428s = null;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Expected to receive an object of ");
                        sb2.append(this.f13419j);
                        sb2.append(" but instead got ");
                        sb2.append(obj != null ? obj.getClass() : "");
                        sb2.append("{");
                        sb2.append(obj);
                        sb2.append("} inside Resource{");
                        sb2.append(abstractC4083s);
                        sb2.append("}.");
                        sb2.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        mo22587a(new GlideException(sb2.toString()));
                        this.f13431v.m23366k(abstractC4083s);
                    } catch (Throwable th2) {
                        th = th2;
                        abstractC4083s2 = abstractC4083s;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    abstractC4083s = null;
                }
            }
        } catch (Throwable th4) {
            if (abstractC4083s2 != null) {
                this.f13431v.m23366k(abstractC4083s2);
            }
            throw th4;
        }
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    public void clear() {
        synchronized (this.f13413d) {
            m22674i();
            this.f13412c.mo22676c();
            Status status = this.f13432w;
            Status status2 = Status.CLEARED;
            if (status == status2) {
                return;
            }
            m22670n();
            AbstractC4083s<R> abstractC4083s = this.f13428s;
            if (abstractC4083s != null) {
                this.f13428s = null;
            } else {
                abstractC4083s = null;
            }
            if (m22673k()) {
                this.f13424o.mo22554h(m22667q());
            }
            this.f13432w = status2;
            if (abstractC4083s == null) {
                return;
            }
            this.f13431v.m23366k(abstractC4083s);
        }
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: d */
    public boolean mo22581d(AbstractC4399c abstractC4399c) {
        int i;
        int i2;
        Object obj;
        Class<R> cls;
        AbstractC4397a<?> abstractC4397a;
        Priority priority;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class<R> cls2;
        AbstractC4397a<?> abstractC4397a2;
        Priority priority2;
        int size2;
        if (!(abstractC4399c instanceof SingleRequest)) {
            return false;
        }
        synchronized (this.f13413d) {
            i = this.f13421l;
            i2 = this.f13422m;
            obj = this.f13418i;
            cls = this.f13419j;
            abstractC4397a = this.f13420k;
            priority = this.f13423n;
            List<AbstractC4400d<R>> list = this.f13425p;
            size = list != null ? list.size() : 0;
        }
        SingleRequest singleRequest = (SingleRequest) abstractC4399c;
        synchronized (singleRequest.f13413d) {
            i3 = singleRequest.f13421l;
            i4 = singleRequest.f13422m;
            obj2 = singleRequest.f13418i;
            cls2 = singleRequest.f13419j;
            abstractC4397a2 = singleRequest.f13420k;
            priority2 = singleRequest.f13423n;
            List<AbstractC4400d<R>> list2 = singleRequest.f13425p;
            size2 = list2 != null ? list2.size() : 0;
        }
        return i == i3 && i2 == i4 && C4383k.m22716b(obj, obj2) && cls.equals(cls2) && abstractC4397a.equals(abstractC4397a2) && priority == priority2 && size == size2;
    }

    /* JADX WARN: Not initialized variable reg: 28, insn: 0x01d0: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r28 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:53:0x01d0 */
    @Override // com.bumptech.glide.request.p225h.AbstractC4410g
    /* renamed from: e */
    public void mo22561e(int i, int i2) {
        Object obj;
        this.f13412c.mo22676c();
        Object obj2 = this.f13413d;
        synchronized (obj2) {
            try {
                try {
                    boolean z = f13406a;
                    if (z) {
                        m22664t("Got onSizeReady in " + C4377f.m22736a(this.f13430u));
                    }
                    if (this.f13432w != Status.WAITING_FOR_SIZE) {
                        return;
                    }
                    Status status = Status.RUNNING;
                    this.f13432w = status;
                    float m22655C = this.f13420k.m22655C();
                    this.f13407A = m22663u(i, m22655C);
                    this.f13408B = m22663u(i2, m22655C);
                    if (z) {
                        m22664t("finished setup for calling load in " + C4377f.m22736a(this.f13430u));
                    }
                    try {
                        this.f13429t = this.f13431v.m23371f(this.f13417h, this.f13418i, this.f13420k.m22656B(), this.f13407A, this.f13408B, this.f13420k.m22657A(), this.f13419j, this.f13423n, this.f13420k.m22611m(), this.f13420k.m22653E(), this.f13420k.m22643O(), this.f13420k.m22647K(), this.f13420k.m22603s(), this.f13420k.m22649I(), this.f13420k.m22651G(), this.f13420k.m22652F(), this.f13420k.m22604r(), this, this.f13427r);
                        if (this.f13432w != status) {
                            this.f13429t = null;
                        }
                        if (z) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("finished onSizeReady in ");
                            sb.append(C4377f.m22736a(this.f13430u));
                            m22664t(sb.toString());
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                obj2 = obj;
            }
        }
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: f */
    public boolean mo22579f() {
        boolean z;
        synchronized (this.f13413d) {
            z = this.f13432w == Status.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.AbstractC4402f
    /* renamed from: g */
    public Object mo22585g() {
        this.f13412c.mo22676c();
        return this.f13413d;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: h */
    public void mo22577h() {
        synchronized (this.f13413d) {
            m22674i();
            this.f13412c.mo22676c();
            this.f13430u = C4377f.m22735b();
            if (this.f13418i == null) {
                if (C4383k.m22699s(this.f13421l, this.f13422m)) {
                    this.f13407A = this.f13421l;
                    this.f13408B = this.f13422m;
                }
                m22659y(new GlideException("Received null model"), m22668p() == null ? 5 : 3);
                return;
            }
            Status status = this.f13432w;
            Status status2 = Status.RUNNING;
            if (status == status2) {
                throw new IllegalArgumentException("Cannot restart a running request");
            }
            if (status == Status.COMPLETE) {
                mo22586c(this.f13428s, DataSource.MEMORY_CACHE, false);
                return;
            }
            Status status3 = Status.WAITING_FOR_SIZE;
            this.f13432w = status3;
            if (C4383k.m22699s(this.f13421l, this.f13422m)) {
                mo22561e(this.f13421l, this.f13422m);
            } else {
                this.f13424o.mo22553i(this);
            }
            Status status4 = this.f13432w;
            if ((status4 == status2 || status4 == status3) && m22672l()) {
                this.f13424o.mo22556f(m22667q());
            }
            if (f13406a) {
                m22664t("finished run method in " + C4377f.m22736a(this.f13430u));
            }
        }
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    public boolean isRunning() {
        boolean z;
        synchronized (this.f13413d) {
            Status status = this.f13432w;
            if (status != Status.RUNNING && status != Status.WAITING_FOR_SIZE) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: j */
    public boolean mo22575j() {
        boolean z;
        synchronized (this.f13413d) {
            z = this.f13432w == Status.COMPLETE;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    public void pause() {
        synchronized (this.f13413d) {
            if (isRunning()) {
                clear();
            }
        }
    }
}
