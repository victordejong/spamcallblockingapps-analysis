package com.google.android.exoplayer2.upstream;

import android.content.Context;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
/* renamed from: com.google.android.exoplayer2.upstream.p */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/p.class */
public final class C5488p implements AbstractC5478j.AbstractC5479a {

    /* renamed from: a */
    private final Context f17803a;

    /* renamed from: b */
    private final AbstractC5497x f17804b;

    /* renamed from: c */
    private final AbstractC5478j.AbstractC5479a f17805c;

    public C5488p(Context context, AbstractC5497x abstractC5497x, AbstractC5478j.AbstractC5479a abstractC5479a) {
        this.f17803a = context.getApplicationContext();
        this.f17804b = abstractC5497x;
        this.f17805c = abstractC5479a;
    }

    public C5488p(Context context, String str) {
        this(context, str, (AbstractC5497x) null);
    }

    public C5488p(Context context, String str, AbstractC5497x abstractC5497x) {
        this(context, abstractC5497x, new C5490r(str, abstractC5497x));
    }

    /* renamed from: b */
    public C5487o mo18976a() {
        C5487o c5487o = new C5487o(this.f17803a, this.f17805c.mo18976a());
        AbstractC5497x abstractC5497x = this.f17804b;
        if (abstractC5497x != null) {
            c5487o.mo18950a(abstractC5497x);
        }
        return c5487o;
    }
}
