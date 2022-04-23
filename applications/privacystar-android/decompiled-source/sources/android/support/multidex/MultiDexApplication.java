package android.support.multidex;

import android.app.Application;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:android/support/multidex/MultiDexApplication.class */
public class MultiDexApplication extends Application {
    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }
}
