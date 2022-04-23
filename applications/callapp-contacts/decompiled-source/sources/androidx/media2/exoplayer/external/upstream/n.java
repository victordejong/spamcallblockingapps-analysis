package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import androidx.media2.exoplayer.external.upstream.f;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/n.class */
public final class n implements f.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4092a;

    /* renamed from: b  reason: collision with root package name */
    private final w f4093b;

    /* renamed from: c  reason: collision with root package name */
    private final f.a f4094c;

    public n(Context context, f.a aVar) {
        this(context, (w) null, aVar);
    }

    public n(Context context, w wVar, f.a aVar) {
        this.f4092a = context.getApplicationContext();
        this.f4093b = wVar;
        this.f4094c = aVar;
    }

    public n(Context context, String str) {
        this(context, str, (w) null);
    }

    public n(Context context, String str, w wVar) {
        this(context, wVar, new p(str, wVar));
    }

    @Override // androidx.media2.exoplayer.external.upstream.f.a
    public final /* synthetic */ f a() {
        m mVar = new m(this.f4092a, this.f4094c.a());
        w wVar = this.f4093b;
        if (wVar != null) {
            mVar.a(wVar);
        }
        return mVar;
    }
}
