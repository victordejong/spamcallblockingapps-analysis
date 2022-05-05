package io.fabric.sdk.android.services.concurrency;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/DependsOn.class */
public @interface DependsOn {
    Class<?>[] value();
}
