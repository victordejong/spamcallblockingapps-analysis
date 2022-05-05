package dagger.android;

import android.app.Service;
import dagger.MapKey;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@MapKey
@Target({ElementType.METHOD})
/* loaded from: classes2-dex2jar.jar:dagger/android/ServiceKey.class */
public @interface ServiceKey {
    Class<? extends Service> value();
}
