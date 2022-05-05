package dagger.android.support;

import android.support.p001v4.app.Fragment;
import dagger.Module;
import dagger.android.AndroidInjectionModule;
import dagger.android.AndroidInjector;
import dagger.multibindings.Multibinds;
import java.util.Map;
@Module(includes = {AndroidInjectionModule.class})
/* loaded from: classes2-dex2jar.jar:dagger/android/support/AndroidSupportInjectionModule.class */
public abstract class AndroidSupportInjectionModule {
    private AndroidSupportInjectionModule() {
    }

    @Multibinds
    abstract Map<Class<? extends Fragment>, AndroidInjector.Factory<? extends Fragment>> supportFragmentInjectorFactories();
}
