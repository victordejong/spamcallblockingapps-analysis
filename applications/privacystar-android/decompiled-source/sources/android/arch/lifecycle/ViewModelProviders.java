package android.arch.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.arch.lifecycle.ViewModelProvider;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
/* loaded from: classes-dex2jar.jar:android/arch/lifecycle/ViewModelProviders.class */
public class ViewModelProviders {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:android/arch/lifecycle/ViewModelProviders$DefaultFactory.class */
    public static class DefaultFactory extends ViewModelProvider.AndroidViewModelFactory {
        @Deprecated
        public DefaultFactory(@NonNull Application application) {
            super(application);
        }
    }

    private static Activity checkActivity(Fragment fragment) {
        FragmentActivity activity = fragment.getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Can't create ViewModelProvider for detached fragment");
    }

    private static Application checkApplication(Activity activity) {
        Application application = activity.getApplication();
        if (application != null) {
            return application;
        }
        throw new IllegalStateException("Your activity/fragment is not yet attached to Application. You can't request ViewModel before onCreate call.");
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelProvider m435of(@NonNull Fragment fragment) {
        return new ViewModelProvider(ViewModelStores.m431of(fragment), ViewModelProvider.AndroidViewModelFactory.getInstance(checkApplication(checkActivity(fragment))));
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelProvider m434of(@NonNull Fragment fragment, @NonNull ViewModelProvider.Factory factory) {
        checkApplication(checkActivity(fragment));
        return new ViewModelProvider(ViewModelStores.m431of(fragment), factory);
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelProvider m433of(@NonNull FragmentActivity fragmentActivity) {
        return new ViewModelProvider(ViewModelStores.m430of(fragmentActivity), ViewModelProvider.AndroidViewModelFactory.getInstance(checkApplication(fragmentActivity)));
    }

    @NonNull
    @MainThread
    /* renamed from: of */
    public static ViewModelProvider m432of(@NonNull FragmentActivity fragmentActivity, @NonNull ViewModelProvider.Factory factory) {
        checkApplication(fragmentActivity);
        return new ViewModelProvider(ViewModelStores.m430of(fragmentActivity), factory);
    }
}
