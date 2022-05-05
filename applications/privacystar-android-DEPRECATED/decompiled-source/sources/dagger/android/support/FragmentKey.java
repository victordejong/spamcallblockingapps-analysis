package dagger.android.support;

import android.support.p001v4.app.Fragment;
import dagger.MapKey;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@MapKey
@Target({ElementType.METHOD})
/* loaded from: classes2-dex2jar.jar:dagger/android/support/FragmentKey.class */
public @interface FragmentKey {
    Class<? extends Fragment> value();
}
