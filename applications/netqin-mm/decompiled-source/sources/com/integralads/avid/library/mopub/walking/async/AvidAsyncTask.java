package com.integralads.avid.library.mopub.walking.async;

import android.os.AsyncTask;
import android.os.Build;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/walking/async/AvidAsyncTask.class */
public abstract class AvidAsyncTask extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    public AvidAsyncTaskListener f33113a;

    /* renamed from: b */
    public final StateProvider f33114b;

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener.class */
    public interface AvidAsyncTaskListener {
        void onTaskCompleted(AvidAsyncTask avidAsyncTask);
    }

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider.class */
    public interface StateProvider {
        JSONObject getPreviousState();

        void setPreviousState(JSONObject jSONObject);
    }

    public AvidAsyncTask(StateProvider stateProvider) {
        this.f33114b = stateProvider;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AvidAsyncTaskListener avidAsyncTaskListener = this.f33113a;
        if (avidAsyncTaskListener != null) {
            avidAsyncTaskListener.onTaskCompleted(this);
        }
    }

    public AvidAsyncTaskListener getListener() {
        return this.f33113a;
    }

    public StateProvider getStateProvider() {
        return this.f33114b;
    }

    public void setListener(AvidAsyncTaskListener avidAsyncTaskListener) {
        this.f33113a = avidAsyncTaskListener;
    }

    public void start(ThreadPoolExecutor threadPoolExecutor) {
        if (Build.VERSION.SDK_INT > 11) {
            executeOnExecutor(threadPoolExecutor, new Object[0]);
        } else {
            execute(new Object[0]);
        }
    }
}
