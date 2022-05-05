package com.android.contacts.util;

import android.os.AsyncTask;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsyncTaskExecutor.class */
public interface AsyncTaskExecutor {
    <T> AsyncTask<T, ?, ?> submit(Object obj, AsyncTask<T, ?, ?> asyncTask, T... tArr);
}
