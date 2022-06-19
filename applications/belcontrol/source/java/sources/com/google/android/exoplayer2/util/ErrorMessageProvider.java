package com.google.android.exoplayer2.util;

import android.util.Pair;
import java.lang.Throwable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/ErrorMessageProvider.class */
public interface ErrorMessageProvider<T extends Throwable> {
    Pair<Integer, String> getErrorMessage(T t);
}
