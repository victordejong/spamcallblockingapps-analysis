package dagger.android;

import android.content.ContentProvider;
import dagger.MapKey;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@MapKey
@Target({ElementType.METHOD})
/* loaded from: classes2-dex2jar.jar:dagger/android/ContentProviderKey.class */
public @interface ContentProviderKey {
    Class<? extends ContentProvider> value();
}
