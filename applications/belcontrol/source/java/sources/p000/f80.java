package p000;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.view.LayoutInflater;
/* renamed from: f80 */
/* loaded from: classes-dex2jar.jar:f80.class */
public class f80 extends ContextWrapper {

    /* renamed from: a */
    public LayoutInflater f6547a;

    /* renamed from: b */
    public g80 f6548b = new g80(this, getAssets(), super.getResources().getDisplayMetrics(), super.getResources().getConfiguration());

    public f80(Context context) {
        super(context);
    }

    /* renamed from: a */
    public static Context m1920a(Context context) {
        return ((context instanceof f80) || (context instanceof e80)) ? context : new f80(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f6548b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f6547a == null) {
                this.f6547a = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f6547a;
        }
        return super.getSystemService(str);
    }
}
