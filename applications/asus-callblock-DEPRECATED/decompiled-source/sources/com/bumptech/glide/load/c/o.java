package com.bumptech.glide.load.c;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.a.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/o.class */
public abstract class o<T> implements j<Uri, T> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3582a;

    /* renamed from: b  reason: collision with root package name */
    private final j<d, T> f3583b;

    public o(Context context, j<d, T> jVar) {
        this.f3582a = context;
        this.f3583b = jVar;
    }

    public abstract c<T> a(Context context, Uri uri);

    public abstract c<T> a(Context context, String str);

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
        if ("https".equals(r0) != false) goto L_0x0085;
     */
    @Override // com.bumptech.glide.load.c.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.bumptech.glide.load.a.c a(android.net.Uri r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r6
            android.net.Uri r0 = (android.net.Uri) r0
            r9 = r0
            r0 = r9
            java.lang.String r0 = r0.getScheme()
            r10 = r0
            r0 = 0
            r11 = r0
            java.lang.String r0 = "file"
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x002e
            java.lang.String r0 = "content"
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x002e
            java.lang.String r0 = "android.resource"
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0050
        L_0x002e:
            r0 = 1
            r12 = r0
        L_0x0031:
            r0 = r12
            if (r0 == 0) goto L_0x0064
            r0 = r9
            boolean r0 = com.bumptech.glide.load.c.a.a(r0)
            if (r0 == 0) goto L_0x0056
            r0 = r9
            java.lang.String r0 = com.bumptech.glide.load.c.a.b(r0)
            r6 = r0
            r0 = r5
            r1 = r5
            android.content.Context r1 = r1.f3582a
            r2 = r6
            com.bumptech.glide.load.a.c r0 = r0.a(r1, r2)
            r6 = r0
        L_0x004e:
            r0 = r6
            return r0
        L_0x0050:
            r0 = 0
            r12 = r0
            goto L_0x0031
        L_0x0056:
            r0 = r5
            r1 = r5
            android.content.Context r1 = r1.f3582a
            r2 = r9
            com.bumptech.glide.load.a.c r0 = r0.a(r1, r2)
            r6 = r0
            goto L_0x004e
        L_0x0064:
            r0 = r11
            r6 = r0
            r0 = r5
            com.bumptech.glide.load.c.j<com.bumptech.glide.load.c.d, T> r0 = r0.f3583b
            if (r0 == 0) goto L_0x004e
            java.lang.String r0 = "http"
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0085
            r0 = r11
            r6 = r0
            java.lang.String r0 = "https"
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004e
        L_0x0085:
            r0 = r5
            com.bumptech.glide.load.c.j<com.bumptech.glide.load.c.d, T> r0 = r0.f3583b
            com.bumptech.glide.load.c.d r1 = new com.bumptech.glide.load.c.d
            r2 = r1
            r3 = r9
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            r2 = r7
            r3 = r8
            com.bumptech.glide.load.a.c r0 = r0.a(r1, r2, r3)
            r6 = r0
            goto L_0x004e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.c.o.a(java.lang.Object, int, int):com.bumptech.glide.load.a.c");
    }
}
