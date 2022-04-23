package androidx.multidex;

import android.app.Application;
import android.content.Context;
import p012b.p119t.C1880a;
/* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexApplication.class */
public class MultiDexApplication extends Application {
    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        C1880a.m31823d(this);
    }
}
