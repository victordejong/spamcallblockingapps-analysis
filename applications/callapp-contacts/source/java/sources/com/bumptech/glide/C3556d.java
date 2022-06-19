package com.bumptech.glide;

import androidx.p023b.C0428a;
import com.bumptech.glide.C3610f;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.load.engine.C3788k;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.engine.p120b.AbstractC3731a;
import com.bumptech.glide.load.engine.p120b.AbstractC3746h;
import com.bumptech.glide.load.engine.p120b.C3748i;
import com.bumptech.glide.load.engine.p121c.ExecutorServiceC3756a;
import com.bumptech.glide.manager.AbstractC3934d;
import com.bumptech.glide.manager.C3946o;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.C3605h;
import com.bumptech.glide.p116g.C3643j;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d.class */
public final class C3556d {

    /* renamed from: c */
    C3788k f13545c;

    /* renamed from: d */
    AbstractC3712e f13546d;

    /* renamed from: e */
    AbstractC3707b f13547e;

    /* renamed from: f */
    public AbstractC3746h f13548f;

    /* renamed from: g */
    ExecutorServiceC3756a f13549g;

    /* renamed from: h */
    public ExecutorServiceC3756a f13550h;

    /* renamed from: i */
    AbstractC3731a.AbstractC3732a f13551i;

    /* renamed from: j */
    C3748i f13552j;

    /* renamed from: k */
    AbstractC3934d f13553k;

    /* renamed from: n */
    C3946o.AbstractC3948a f13556n;

    /* renamed from: o */
    ExecutorServiceC3756a f13557o;

    /* renamed from: p */
    boolean f13558p;

    /* renamed from: q */
    List<AbstractC3604g<Object>> f13559q;

    /* renamed from: a */
    final Map<Class<?>, AbstractC3657l<?, ?>> f13543a = new C0428a();

    /* renamed from: b */
    final C3610f.C3611a f13544b = new C3610f.C3611a();

    /* renamed from: l */
    public int f13554l = 4;

    /* renamed from: m */
    ComponentCallbacks2C3548c.AbstractC3549a f13555m = new ComponentCallbacks2C3548c.AbstractC3549a() { // from class: com.bumptech.glide.d.1
        @Override // com.bumptech.glide.ComponentCallbacks2C3548c.AbstractC3549a
        /* renamed from: a */
        public final C3605h mo37713a() {
            return new C3605h();
        }
    };

    /* renamed from: com.bumptech.glide.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$a.class */
    static final class C3559a {
        C3559a() {
        }
    }

    /* renamed from: com.bumptech.glide.d$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$b.class */
    public static final class C3560b {
    }

    /* renamed from: com.bumptech.glide.d$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d$c.class */
    public static final class C3561c {
        private C3561c() {
        }
    }

    /* renamed from: a */
    public final C3556d m37714a(final C3605h c3605h) {
        this.f13555m = (ComponentCallbacks2C3548c.AbstractC3549a) C3643j.m37588a(new ComponentCallbacks2C3548c.AbstractC3549a() { // from class: com.bumptech.glide.d.2
            @Override // com.bumptech.glide.ComponentCallbacks2C3548c.AbstractC3549a
            /* renamed from: a */
            public final C3605h mo37713a() {
                C3605h c3605h2 = c3605h;
                return c3605h2 != null ? c3605h2 : new C3605h();
            }
        }, "Argument must not be null");
        return this;
    }
}
