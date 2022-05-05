package dagger.android.support;

import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
import android.util.Log;
import dagger.android.DispatchingAndroidInjector;
import dagger.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:dagger/android/support/AndroidSupportInjection.class */
public final class AndroidSupportInjection {
    private static final String TAG = "dagger.android.support";

    private AndroidSupportInjection() {
    }

    private static HasDispatchingSupportFragmentInjector findHasFragmentInjector(Fragment fragment) {
        Fragment parentFragment;
        Fragment fragment2 = fragment;
        do {
            parentFragment = fragment2.getParentFragment();
            if (parentFragment != null) {
                fragment2 = parentFragment;
            } else {
                FragmentActivity activity = fragment.getActivity();
                if (activity instanceof HasDispatchingSupportFragmentInjector) {
                    return (HasDispatchingSupportFragmentInjector) activity;
                }
                if (activity.getApplication() instanceof HasDispatchingSupportFragmentInjector) {
                    return (HasDispatchingSupportFragmentInjector) activity.getApplication();
                }
                throw new IllegalArgumentException(String.format("No injector was found for %s", fragment.getClass().getCanonicalName()));
            }
        } while (!(parentFragment instanceof HasDispatchingSupportFragmentInjector));
        return (HasDispatchingSupportFragmentInjector) parentFragment;
    }

    public static void inject(Fragment fragment) {
        Preconditions.checkNotNull(fragment, "fragment");
        HasDispatchingSupportFragmentInjector findHasFragmentInjector = findHasFragmentInjector(fragment);
        Log.d(TAG, String.format("An injector for %s was found in %s", fragment.getClass().getCanonicalName(), findHasFragmentInjector.getClass().getCanonicalName()));
        DispatchingAndroidInjector<Fragment> supportFragmentInjector = findHasFragmentInjector.supportFragmentInjector();
        Preconditions.checkNotNull(supportFragmentInjector, "%s.supportFragmentInjector() returned null", findHasFragmentInjector.getClass().getCanonicalName());
        supportFragmentInjector.inject(fragment);
    }
}
