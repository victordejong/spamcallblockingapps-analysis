package dagger.android;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import javax.inject.Inject;
/* loaded from: classes2-dex2jar.jar:dagger/android/DaggerActivity.class */
public abstract class DaggerActivity extends Activity implements HasFragmentInjector {
    @Inject
    DispatchingAndroidInjector<Fragment> fragmentInjector;

    @Override // dagger.android.HasFragmentInjector
    public AndroidInjector<Fragment> fragmentInjector() {
        return this.fragmentInjector;
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        AndroidInjection.inject(this);
        super.onCreate(bundle);
    }
}
