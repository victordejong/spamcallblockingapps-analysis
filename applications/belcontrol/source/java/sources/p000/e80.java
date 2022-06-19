package p000;

import android.content.Context;
import android.content.res.Resources;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
/* renamed from: e80 */
/* loaded from: classes-dex2jar.jar:e80.class */
public class e80 extends ContextThemeWrapper {

    /* renamed from: a */
    public LayoutInflater f6309a;

    /* renamed from: b */
    public g80 f6310b = new g80(this, getAssets(), super.getResources().getDisplayMetrics(), super.getResources().getConfiguration());

    public e80(Context context, int i) {
        super(context, i);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f6310b;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f6309a == null) {
                this.f6309a = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f6309a;
        }
        return super.getSystemService(str);
    }
}
