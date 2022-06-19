package com.criteo.publisher.p246f;

import com.criteo.publisher.model.C8507t;
import com.criteo.publisher.p251j0.C8364g;
import com.criteo.publisher.p256m0.C8433g;
import java.util.concurrent.Executor;
/* renamed from: com.criteo.publisher.f.ab */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/ab.class */
public class C8286ab {

    /* renamed from: a */
    private final AbstractC8332z f29875a;

    /* renamed from: b */
    private final C8364g f29876b;

    /* renamed from: c */
    private final C8433g f29877c;

    /* renamed from: d */
    private final C8507t f29878d;

    /* renamed from: e */
    private final Executor f29879e;

    public C8286ab(AbstractC8332z abstractC8332z, C8364g c8364g, C8433g c8433g, C8507t c8507t, Executor executor) {
        this.f29875a = abstractC8332z;
        this.f29876b = c8364g;
        this.f29877c = c8433g;
        this.f29878d = c8507t;
        this.f29879e = executor;
    }

    /* renamed from: a */
    public final void m25922a() {
        if (this.f29878d.m25524g()) {
            this.f29879e.execute(new C8289ad(this.f29875a, this.f29876b, this.f29877c));
        }
    }
}
