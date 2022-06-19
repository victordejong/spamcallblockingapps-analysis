package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
/* renamed from: androidx.fragment.app.d */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d.class */
public abstract class AbstractC0713d {
    /* renamed from: a */
    public abstract View mo5632a(int i);

    @Deprecated
    /* renamed from: a */
    public Fragment m5662a(Context context, String str, Bundle bundle) {
        return Fragment.instantiate(context, str, bundle);
    }

    /* renamed from: a */
    public abstract boolean mo5633a();
}
