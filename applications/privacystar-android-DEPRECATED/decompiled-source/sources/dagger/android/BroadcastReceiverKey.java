package dagger.android;

import android.content.BroadcastReceiver;
import dagger.MapKey;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@MapKey
@Target({ElementType.METHOD})
/* loaded from: classes2-dex2jar.jar:dagger/android/BroadcastReceiverKey.class */
public @interface BroadcastReceiverKey {
    Class<? extends BroadcastReceiver> value();
}
