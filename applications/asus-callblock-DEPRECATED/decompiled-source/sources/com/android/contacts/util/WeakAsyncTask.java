package com.android.contacts.util;

import android.os.AsyncTask;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/WeakAsyncTask.class */
public abstract class WeakAsyncTask<Params, Progress, Result, WeakTarget> extends AsyncTask<Params, Progress, Result> {
    protected WeakReference<WeakTarget> mTarget;

    public WeakAsyncTask(WeakTarget weaktarget) {
        this.mTarget = new WeakReference<>(weaktarget);
    }

    public abstract Result doInBackground(WeakTarget weaktarget, Params... paramsArr);

    @Override // android.os.AsyncTask
    protected final Result doInBackground(Params... paramsArr) {
        WeakTarget weaktarget = this.mTarget.get();
        return weaktarget != null ? doInBackground(weaktarget, paramsArr) : null;
    }

    @Override // android.os.AsyncTask
    protected final void onPostExecute(Result result) {
        WeakTarget weaktarget = this.mTarget.get();
        if (weaktarget != null) {
            onPostExecute(weaktarget, result);
        }
    }

    public void onPostExecute(WeakTarget weaktarget, Result result) {
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        WeakTarget weaktarget = this.mTarget.get();
        if (weaktarget != null) {
            onPreExecute(weaktarget);
        }
    }

    public void onPreExecute(WeakTarget weaktarget) {
    }
}
