package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.C3966f;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.load.engine.C4060i;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.engine.p209x.C4097f;
import com.bumptech.glide.load.engine.p209x.C4102j;
import com.bumptech.glide.load.engine.p209x.C4105k;
import com.bumptech.glide.load.engine.p210y.AbstractC4114a;
import com.bumptech.glide.load.engine.p210y.AbstractC4127h;
import com.bumptech.glide.load.engine.p210y.C4124f;
import com.bumptech.glide.load.engine.p210y.C4126g;
import com.bumptech.glide.load.engine.p210y.C4129i;
import com.bumptech.glide.load.engine.p211z.ExecutorServiceC4136a;
import com.bumptech.glide.manager.AbstractC4335d;
import com.bumptech.glide.manager.C4338f;
import com.bumptech.glide.manager.C4347o;
import com.bumptech.glide.request.AbstractC4400d;
import com.bumptech.glide.request.C4401e;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p020b.p036e.C1489a;
/* renamed from: com.bumptech.glide.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d.class */
public final class C3960d {

    /* renamed from: c */
    private C4060i f12455c;

    /* renamed from: d */
    private AbstractC4096e f12456d;

    /* renamed from: e */
    private AbstractC4091b f12457e;

    /* renamed from: f */
    private AbstractC4127h f12458f;

    /* renamed from: g */
    private ExecutorServiceC4136a f12459g;

    /* renamed from: h */
    private ExecutorServiceC4136a f12460h;

    /* renamed from: i */
    private AbstractC4114a.AbstractC4115a f12461i;

    /* renamed from: j */
    private C4129i f12462j;

    /* renamed from: k */
    private AbstractC4335d f12463k;

    /* renamed from: n */
    private C4347o.AbstractC4349b f12466n;

    /* renamed from: o */
    private ExecutorServiceC4136a f12467o;

    /* renamed from: p */
    private boolean f12468p;

    /* renamed from: q */
    private List<AbstractC4400d<Object>> f12469q;

    /* renamed from: a */
    private final Map<Class<?>, AbstractC3974j<?, ?>> f12453a = new C1489a();

    /* renamed from: b */
    private final C3966f.C3967a f12454b = new C3966f.C3967a();

    /* renamed from: l */
    private int f12464l = 4;

    /* renamed from: m */
    private ComponentCallbacks2C3958c.AbstractC3959a f12465m = new C3961a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$a.class */
    public class C3961a implements ComponentCallbacks2C3958c.AbstractC3959a {
        C3961a() {
            C3960d.this = r4;
        }

        @Override // com.bumptech.glide.ComponentCallbacks2C3958c.AbstractC3959a
        /* renamed from: a */
        public C4401e mo23673a() {
            return new C4401e();
        }
    }

    /* renamed from: com.bumptech.glide.d$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$b.class */
    static final class C3962b {
        C3962b() {
        }
    }

    /* renamed from: com.bumptech.glide.d$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$c.class */
    public static final class C3963c {
    }

    /* renamed from: com.bumptech.glide.d$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$d.class */
    public static final class C3964d {
        private C3964d() {
        }
    }

    /* renamed from: a */
    public ComponentCallbacks2C3958c m23675a(Context context) {
        if (this.f12459g == null) {
            this.f12459g = ExecutorServiceC4136a.m23189i();
        }
        if (this.f12460h == null) {
            this.f12460h = ExecutorServiceC4136a.m23191g();
        }
        if (this.f12467o == null) {
            this.f12467o = ExecutorServiceC4136a.m23193e();
        }
        if (this.f12462j == null) {
            this.f12462j = new C4129i.C4130a(context).m23201a();
        }
        if (this.f12463k == null) {
            this.f12463k = new C4338f();
        }
        if (this.f12456d == null) {
            int m23206b = this.f12462j.m23206b();
            if (m23206b > 0) {
                this.f12456d = new C4105k(m23206b);
            } else {
                this.f12456d = new C4097f();
            }
        }
        if (this.f12457e == null) {
            this.f12457e = new C4102j(this.f12462j.m23207a());
        }
        if (this.f12458f == null) {
            this.f12458f = new C4126g(this.f12462j.m23204d());
        }
        if (this.f12461i == null) {
            this.f12461i = new C4124f(context);
        }
        if (this.f12455c == null) {
            this.f12455c = new C4060i(this.f12458f, this.f12461i, this.f12460h, this.f12459g, ExecutorServiceC4136a.m23188j(), this.f12467o, this.f12468p);
        }
        List<AbstractC4400d<Object>> list = this.f12469q;
        if (list == null) {
            this.f12469q = Collections.emptyList();
        } else {
            this.f12469q = Collections.unmodifiableList(list);
        }
        C3966f m23661b = this.f12454b.m23661b();
        return new ComponentCallbacks2C3958c(context, this.f12455c, this.f12458f, this.f12456d, this.f12457e, new C4347o(this.f12466n, m23661b), this.f12463k, this.f12464l, this.f12465m, this.f12453a, this.f12469q, m23661b);
    }

    /* renamed from: b */
    public void m23674b(C4347o.AbstractC4349b abstractC4349b) {
        this.f12466n = abstractC4349b;
    }
}
