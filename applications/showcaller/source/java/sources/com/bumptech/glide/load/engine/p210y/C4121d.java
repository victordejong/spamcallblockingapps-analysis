package com.bumptech.glide.load.engine.p210y;

import com.bumptech.glide.load.engine.p210y.AbstractC4114a;
import java.io.File;
/* renamed from: com.bumptech.glide.load.engine.y.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/d.class */
public class C4121d implements AbstractC4114a.AbstractC4115a {

    /* renamed from: a */
    private final long f12961a;

    /* renamed from: b */
    private final AbstractC4122a f12962b;

    /* renamed from: com.bumptech.glide.load.engine.y.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/d$a.class */
    public interface AbstractC4122a {
        /* renamed from: a */
        File mo23216a();
    }

    public C4121d(AbstractC4122a abstractC4122a, long j) {
        this.f12961a = j;
        this.f12962b = abstractC4122a;
    }

    @Override // com.bumptech.glide.load.engine.p210y.AbstractC4114a.AbstractC4115a
    /* renamed from: a */
    public AbstractC4114a mo23221a() {
        File mo23216a = this.f12962b.mo23216a();
        if (mo23216a == null) {
            return null;
        }
        if (!mo23216a.isDirectory() && !mo23216a.mkdirs()) {
            return null;
        }
        return C4123e.m23218c(mo23216a, this.f12961a);
    }
}
