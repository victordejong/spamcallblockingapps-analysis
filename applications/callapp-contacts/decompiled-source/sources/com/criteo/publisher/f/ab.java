package com.criteo.publisher.f;

import com.criteo.publisher.j0.g;
import com.criteo.publisher.model.t;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/ab.class */
public class ab {

    /* renamed from: a  reason: collision with root package name */
    private final z f17243a;

    /* renamed from: b  reason: collision with root package name */
    private final g f17244b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.m0.g f17245c;

    /* renamed from: d  reason: collision with root package name */
    private final t f17246d;
    private final Executor e;

    public ab(z zVar, g gVar, com.criteo.publisher.m0.g gVar2, t tVar, Executor executor) {
        this.f17243a = zVar;
        this.f17244b = gVar;
        this.f17245c = gVar2;
        this.f17246d = tVar;
        this.e = executor;
    }

    public final void a() {
        if (this.f17246d.g()) {
            this.e.execute(new ad(this.f17243a, this.f17244b, this.f17245c));
        }
    }
}
