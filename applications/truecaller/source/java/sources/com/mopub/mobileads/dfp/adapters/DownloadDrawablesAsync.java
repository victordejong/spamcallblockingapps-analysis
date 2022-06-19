package com.mopub.mobileads.dfp.adapters;

import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import e.n.b.b1.a.a;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync.class */
public class DownloadDrawablesAsync extends AsyncTask<Object, Void, HashMap<String, Drawable>> {
    public static final String KEY_ICON = "icon_key";
    public static final String KEY_IMAGE = "image_key";

    /* renamed from: a */
    public DrawableDownloadListener f8981a;

    public DownloadDrawablesAsync(DrawableDownloadListener drawableDownloadListener) {
        this.f8981a = drawableDownloadListener;
    }

    @Override // android.os.AsyncTask
    public HashMap<String, Drawable> doInBackground(Object[] objArr) {
        HashMap<String, Drawable> hashMap;
        HashMap hashMap2 = (HashMap) objArr[0];
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        Future submit = newCachedThreadPool.submit((Callable) new a((URL) hashMap2.get(KEY_IMAGE)));
        Future submit2 = newCachedThreadPool.submit((Callable) new a((URL) hashMap2.get(KEY_ICON)));
        try {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            Drawable drawable = (Drawable) submit.get(10L, timeUnit);
            hashMap = new HashMap<>();
            hashMap.put(KEY_IMAGE, drawable);
            hashMap.put(KEY_ICON, (Drawable) submit2.get(10L, timeUnit));
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            hashMap = null;
        }
        return hashMap;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(HashMap<String, Drawable> hashMap) {
        HashMap<String, Drawable> hashMap2 = hashMap;
        super.onPostExecute(hashMap2);
        if (hashMap2 != null) {
            this.f8981a.onDownloadSuccess(hashMap2);
        } else {
            this.f8981a.onDownloadFailure();
        }
    }
}
