package p012b.p016b.p026q;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* renamed from: b.b.q.e0 */
/* loaded from: classes-dex2jar.jar:b/b/q/e0.class */
public class C0688e0 extends C0735w {

    /* renamed from: b */
    public final WeakReference<Context> f3401b;

    public C0688e0(Context context, Resources resources) {
        super(resources);
        this.f3401b = new WeakReference<>(context);
    }

    @Override // p012b.p016b.p026q.C0735w, android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f3401b.get();
        if (!(drawable == null || context == null)) {
            C0728v.m36215a().m36209a(context, i, drawable);
        }
        return drawable;
    }
}
