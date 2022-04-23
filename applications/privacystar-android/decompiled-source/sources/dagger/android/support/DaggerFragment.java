package dagger.android.support;

import android.content.Context;
import android.support.p001v4.app.Fragment;
import dagger.android.DispatchingAndroidInjector;
import javax.inject.Inject;
/* loaded from: classes2-dex2jar.jar:dagger/android/support/DaggerFragment.class */
public abstract class DaggerFragment extends Fragment implements HasDispatchingSupportFragmentInjector {
    @Inject
    DispatchingAndroidInjector<Fragment> childFragmentInjector;

    @Override // android.support.p001v4.app.Fragment
    public void onAttach(Context context) {
        AndroidSupportInjection.inject(this);
        super.onAttach(context);
    }

    @Override // dagger.android.support.HasDispatchingSupportFragmentInjector
    public DispatchingAndroidInjector<Fragment> supportFragmentInjector() {
        return this.childFragmentInjector;
    }
}
