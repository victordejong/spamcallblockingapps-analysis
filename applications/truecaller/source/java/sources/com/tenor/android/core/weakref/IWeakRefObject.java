package com.tenor.android.core.weakref;

import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/weakref/IWeakRefObject.class */
public interface IWeakRefObject<CTX> {
    WeakReference<CTX> getWeakRef();

    boolean hasRef();
}
