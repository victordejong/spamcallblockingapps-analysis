package com.bumptech.glide.load.b.b;

import com.bumptech.glide.load.b.b.a;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/d.class */
public class d implements a.AbstractC0098a {

    /* renamed from: a  reason: collision with root package name */
    private final int f3511a;

    /* renamed from: b  reason: collision with root package name */
    private final a f3512b;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/d$a.class */
    public interface a {
        File a();
    }

    public d(a aVar, int i) {
        this.f3511a = i;
        this.f3512b = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        if (r0.isDirectory() != false) goto L_0x002d;
     */
    @Override // com.bumptech.glide.load.b.b.a.AbstractC0098a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bumptech.glide.load.b.b.a build() {
        /*
            r3 = this;
            r0 = 0
            r4 = r0
            r0 = r3
            com.bumptech.glide.load.b.b.d$a r0 = r0.f3512b
            java.io.File r0 = r0.a()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0014
            r0 = r4
            r6 = r0
        L_0x0012:
            r0 = r6
            return r0
        L_0x0014:
            r0 = r5
            boolean r0 = r0.mkdirs()
            if (r0 != 0) goto L_0x002d
            r0 = r4
            r6 = r0
            r0 = r5
            boolean r0 = r0.exists()
            if (r0 == 0) goto L_0x0012
            r0 = r4
            r6 = r0
            r0 = r5
            boolean r0 = r0.isDirectory()
            if (r0 == 0) goto L_0x0012
        L_0x002d:
            r0 = r5
            r1 = r3
            int r1 = r1.f3511a
            com.bumptech.glide.load.b.b.a r0 = com.bumptech.glide.load.b.b.e.a(r0, r1)
            r6 = r0
            goto L_0x0012
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.b.d.build():com.bumptech.glide.load.b.b.a");
    }
}
