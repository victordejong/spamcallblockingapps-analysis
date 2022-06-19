package com.tenor.android.core.util;

import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractWeakReferenceUtils.class */
public abstract class AbstractWeakReferenceUtils {
    public static <T> boolean isAlive(WeakReference<T> weakReference) {
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }
}
