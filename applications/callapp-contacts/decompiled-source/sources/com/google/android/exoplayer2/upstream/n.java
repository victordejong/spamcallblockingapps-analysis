package com.google.android.exoplayer2.upstream;

import android.content.Context;
import com.google.android.exoplayer2.upstream.h;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/n.class */
public final class n implements h.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22231a;

    /* renamed from: b  reason: collision with root package name */
    private final v f22232b;

    /* renamed from: c  reason: collision with root package name */
    private final h.a f22233c;

    public n(Context context) {
        this(context, (String) null, (v) null);
    }

    public n(Context context, h.a aVar) {
        this(context, (v) null, aVar);
    }

    public n(Context context, v vVar, h.a aVar) {
        this.f22231a = context.getApplicationContext();
        this.f22232b = vVar;
        this.f22233c = aVar;
    }

    public n(Context context, String str) {
        this(context, str, (v) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public n(android.content.Context r6, java.lang.String r7, com.google.android.exoplayer2.upstream.v r8) {
        /*
            r5 = this;
            com.google.android.exoplayer2.upstream.o$a r0 = new com.google.android.exoplayer2.upstream.o$a
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r7
            r0.f22237a = r1
            r0 = r5
            r1 = r6
            r2 = r8
            r3 = r9
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.n.<init>(android.content.Context, java.lang.String, com.google.android.exoplayer2.upstream.v):void");
    }

    @Override // com.google.android.exoplayer2.upstream.h.a
    public final /* synthetic */ h createDataSource() {
        m mVar = new m(this.f22231a, this.f22233c.createDataSource());
        v vVar = this.f22232b;
        if (vVar != null) {
            mVar.a(vVar);
        }
        return mVar;
    }
}
