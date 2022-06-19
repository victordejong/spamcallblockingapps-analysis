package com.tenor.android.core.util;

import e.m.e.k;
import e.m.e.l;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractGsonUtils.class */
public abstract class AbstractGsonUtils {
    private static k sGson;

    public static k getInstance() {
        if (sGson == null) {
            sGson = new l().a();
        }
        return sGson;
    }
}
