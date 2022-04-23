package androidx.multidex;

import android.app.Application;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexApplication.class */
public class MultiDexApplication extends Application {
    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        C0403a.m12879k(this);
    }
}
