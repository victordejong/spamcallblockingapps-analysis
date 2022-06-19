package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
/* renamed from: androidx.media2.exoplayer.external.upstream.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/n.class */
public final class C1980n implements AbstractC1968f.AbstractC1969a {

    /* renamed from: a */
    private final Context f8014a;

    /* renamed from: b */
    private final AbstractC1990w f8015b;

    /* renamed from: c */
    private final AbstractC1968f.AbstractC1969a f8016c;

    public C1980n(Context context, AbstractC1968f.AbstractC1969a abstractC1969a) {
        this(context, (AbstractC1990w) null, abstractC1969a);
    }

    public C1980n(Context context, AbstractC1990w abstractC1990w, AbstractC1968f.AbstractC1969a abstractC1969a) {
        this.f8014a = context.getApplicationContext();
        this.f8015b = abstractC1990w;
        this.f8016c = abstractC1969a;
    }

    public C1980n(Context context, String str) {
        this(context, str, (AbstractC1990w) null);
    }

    public C1980n(Context context, String str, AbstractC1990w abstractC1990w) {
        this(context, abstractC1990w, new C1982p(str, abstractC1990w));
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f.AbstractC1969a
    /* renamed from: a */
    public final /* synthetic */ AbstractC1968f mo41195a() {
        C1979m c1979m = new C1979m(this.f8014a, this.f8016c.mo41195a());
        AbstractC1990w abstractC1990w = this.f8015b;
        if (abstractC1990w != null) {
            c1979m.mo41697a(abstractC1990w);
        }
        return c1979m;
    }
}
