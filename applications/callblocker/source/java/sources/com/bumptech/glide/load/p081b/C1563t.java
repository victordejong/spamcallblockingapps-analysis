package com.bumptech.glide.load.p081b;

import com.bumptech.glide.load.AbstractC1664d;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.b.t */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/t.class */
public class C1563t implements AbstractC1664d<InputStream> {

    /* renamed from: a */
    private final AbstractC1673b f4933a;

    public C1563t(AbstractC1673b abstractC1673b) {
        this.f4933a = abstractC1673b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.OutputStream] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo16612a(java.io.InputStream r6, java.io.File r7, com.bumptech.glide.load.C1781h r8) {
        /*
            r5 = this;
            r0 = r5
            com.bumptech.glide.load.engine.a.b r0 = r0.f4933a
            r1 = 65536(0x10000, float:9.18355E-41)
            java.lang.Class<byte[]> r2 = byte[].class
            java.lang.Object r0 = r0.mo16562a(r1, r2)
            byte[] r0 = (byte[]) r0
            r9 = r0
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L8c java.io.IOException -> Lb4
            r8 = r0
            r0 = r8
            r1 = r7
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L8c java.io.IOException -> Lb4
        L1b:
            r0 = r8
            r7 = r0
            r0 = r6
            r1 = r9
            int r0 = r0.read(r1)     // Catch: java.io.IOException -> L39 java.lang.Throwable -> Lb0
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L6d
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r9
            r2 = 0
            r3 = r10
            r0.write(r1, r2, r3)     // Catch: java.io.IOException -> L39 java.lang.Throwable -> Lb0
            goto L1b
        L39:
            r7 = move-exception
            r0 = r8
            r6 = r0
            r0 = r7
            r8 = r0
        L3e:
            r0 = r6
            r7 = r0
            java.lang.String r0 = "StreamEncoder"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> Lb0
            if (r0 == 0) goto L54
            r0 = r6
            r7 = r0
            java.lang.String r0 = "StreamEncoder"
            java.lang.String r1 = "Failed to encode data onto the OutputStream"
            r2 = r8
            int r0 = android.util.Log.d(r0, r1, r2)     // Catch: java.lang.Throwable -> Lb0
        L54:
            r0 = r6
            if (r0 == 0) goto L5c
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> La8
        L5c:
            r0 = r5
            com.bumptech.glide.load.engine.a.b r0 = r0.f4933a
            r1 = r9
            r0.mo16557a(r1)
            r0 = 0
            r11 = r0
        L6a:
            r0 = r11
            return r0
        L6d:
            r0 = r8
            r7 = r0
            r0 = r8
            r0.close()     // Catch: java.io.IOException -> L39 java.lang.Throwable -> Lb0
            r0 = r8
            if (r0 == 0) goto L7b
            r0 = r8
            r0.close()     // Catch: java.io.IOException -> La4
        L7b:
            r0 = r5
            com.bumptech.glide.load.engine.a.b r0 = r0.f4933a
            r1 = r9
            r0.mo16557a(r1)
            r0 = 1
            r11 = r0
            goto L6a
        L8c:
            r6 = move-exception
            r0 = 0
            r7 = r0
        L8f:
            r0 = r7
            if (r0 == 0) goto L97
            r0 = r7
            r0.close()     // Catch: java.io.IOException -> Lac
        L97:
            r0 = r5
            com.bumptech.glide.load.engine.a.b r0 = r0.f4933a
            r1 = r9
            r0.mo16557a(r1)
            r0 = r6
            throw r0
        La4:
            r6 = move-exception
            goto L7b
        La8:
            r6 = move-exception
            goto L5c
        Lac:
            r7 = move-exception
            goto L97
        Lb0:
            r6 = move-exception
            goto L8f
        Lb4:
            r8 = move-exception
            r0 = 0
            r6 = r0
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p081b.C1563t.mo16612a(java.io.InputStream, java.io.File, com.bumptech.glide.load.h):boolean");
    }
}
