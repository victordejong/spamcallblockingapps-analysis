package com.google.android.exoplayer2.upstream;

import android.content.Context;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
/* renamed from: com.google.android.exoplayer2.upstream.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/n.class */
public final class C11579n implements AbstractC11567h.AbstractC11568a {

    /* renamed from: a */
    private final Context f38582a;

    /* renamed from: b */
    private final AbstractC11590v f38583b;

    /* renamed from: c */
    private final AbstractC11567h.AbstractC11568a f38584c;

    public C11579n(Context context) {
        this(context, (String) null, (AbstractC11590v) null);
    }

    public C11579n(Context context, AbstractC11567h.AbstractC11568a abstractC11568a) {
        this(context, (AbstractC11590v) null, abstractC11568a);
    }

    public C11579n(Context context, AbstractC11590v abstractC11590v, AbstractC11567h.AbstractC11568a abstractC11568a) {
        this.f38582a = context.getApplicationContext();
        this.f38583b = abstractC11590v;
        this.f38584c = abstractC11568a;
    }

    public C11579n(Context context, String str) {
        this(context, str, (AbstractC11590v) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C11579n(android.content.Context r6, java.lang.String r7, com.google.android.exoplayer2.upstream.AbstractC11590v r8) {
        /*
            r5 = this;
            com.google.android.exoplayer2.upstream.o$a r0 = new com.google.android.exoplayer2.upstream.o$a
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r7
            r0.f38603a = r1
            r0 = r5
            r1 = r6
            r2 = r8
            r3 = r9
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.C11579n.<init>(android.content.Context, java.lang.String, com.google.android.exoplayer2.upstream.v):void");
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h.AbstractC11568a
    public final /* synthetic */ AbstractC11567h createDataSource() {
        C11578m c11578m = new C11578m(this.f38582a, this.f38584c.createDataSource());
        AbstractC11590v abstractC11590v = this.f38583b;
        if (abstractC11590v != null) {
            c11578m.mo20034a(abstractC11590v);
        }
        return c11578m;
    }
}
