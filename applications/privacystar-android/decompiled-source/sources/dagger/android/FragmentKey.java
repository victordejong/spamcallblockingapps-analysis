package dagger.android;

import android.app.Fragment;
import dagger.MapKey;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@MapKey
@Target({ElementType.METHOD})
/* loaded from: classes2-dex2jar.jar:dagger/android/FragmentKey.class */
public @interface FragmentKey {
    Class<? extends Fragment> value();
}
