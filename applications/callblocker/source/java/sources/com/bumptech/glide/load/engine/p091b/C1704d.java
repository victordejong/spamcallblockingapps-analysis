package com.bumptech.glide.load.engine.p091b;

import com.bumptech.glide.load.engine.p091b.AbstractC1697a;
import java.io.File;
/* renamed from: com.bumptech.glide.load.engine.b.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/d.class */
public class C1704d implements AbstractC1697a.AbstractC1698a {

    /* renamed from: a */
    private final long f5174a;

    /* renamed from: b */
    private final AbstractC1705a f5175b;

    /* renamed from: com.bumptech.glide.load.engine.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/d$a.class */
    public interface AbstractC1705a {
        /* renamed from: a */
        File mo16500a();
    }

    public C1704d(AbstractC1705a abstractC1705a, long j) {
        this.f5174a = j;
        this.f5175b = abstractC1705a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        if (r0.isDirectory() != false) goto L13;
     */
    @Override // com.bumptech.glide.load.engine.p091b.AbstractC1697a.AbstractC1698a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bumptech.glide.load.engine.p091b.AbstractC1697a mo16505a() {
        /*
            r4 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            com.bumptech.glide.load.engine.b.d$a r0 = r0.f5175b
            java.io.File r0 = r0.mo16500a()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L14
            r0 = r5
            r7 = r0
        L12:
            r0 = r7
            return r0
        L14:
            r0 = r6
            boolean r0 = r0.mkdirs()
            if (r0 != 0) goto L2d
            r0 = r5
            r7 = r0
            r0 = r6
            boolean r0 = r0.exists()
            if (r0 == 0) goto L12
            r0 = r5
            r7 = r0
            r0 = r6
            boolean r0 = r0.isDirectory()
            if (r0 == 0) goto L12
        L2d:
            r0 = r6
            r1 = r4
            long r1 = r1.f5174a
            com.bumptech.glide.load.engine.b.a r0 = com.bumptech.glide.load.engine.p091b.C1706e.m16501a(r0, r1)
            r7 = r0
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.p091b.C1704d.mo16505a():com.bumptech.glide.load.engine.b.a");
    }
}
