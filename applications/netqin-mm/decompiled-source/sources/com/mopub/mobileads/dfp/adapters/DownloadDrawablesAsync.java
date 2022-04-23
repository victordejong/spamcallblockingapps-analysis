package com.mopub.mobileads.dfp.adapters;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.Log;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync.class */
public class DownloadDrawablesAsync extends AsyncTask<Object, Void, HashMap<String, Drawable>> {
    public static final String KEY_ICON = "icon_key";
    public static final String KEY_IMAGE = "image_key";

    /* renamed from: a */
    public DrawableDownloadListener f34446a;

    /* renamed from: com.mopub.mobileads.dfp.adapters.DownloadDrawablesAsync$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync$a.class */
    public class CallableC8854a implements Callable<Drawable> {

        /* renamed from: a */
        public final /* synthetic */ URL f34447a;

        public CallableC8854a(DownloadDrawablesAsync downloadDrawablesAsync, URL url) {
            this.f34447a = url;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Drawable call() throws Exception {
            Bitmap decodeStream = BitmapFactory.decodeStream(this.f34447a.openStream());
            decodeStream.setDensity(160);
            return new BitmapDrawable(Resources.getSystem(), decodeStream);
        }
    }

    public DownloadDrawablesAsync(DrawableDownloadListener drawableDownloadListener) {
        this.f34446a = drawableDownloadListener;
    }

    /* renamed from: a */
    public final Future<Drawable> m4158a(URL url, ExecutorService executorService) {
        return executorService.submit(new CallableC8854a(this, url));
    }

    /* renamed from: a */
    public void onPostExecute(HashMap<String, Drawable> hashMap) {
        super.onPostExecute(hashMap);
        if (hashMap != null) {
            this.f34446a.onDownloadSuccess(hashMap);
        } else {
            this.f34446a.onDownloadFailure();
        }
    }

    @Override // android.os.AsyncTask
    public HashMap<String, Drawable> doInBackground(Object... objArr) {
        HashMap hashMap = (HashMap) objArr[0];
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        Future<Drawable> a = m4158a((URL) hashMap.get(KEY_IMAGE), newCachedThreadPool);
        Future<Drawable> a2 = m4158a((URL) hashMap.get(KEY_ICON), newCachedThreadPool);
        try {
            Drawable drawable = a.get(10L, TimeUnit.SECONDS);
            Drawable drawable2 = a2.get(10L, TimeUnit.SECONDS);
            HashMap<String, Drawable> hashMap2 = new HashMap<>();
            hashMap2.put(KEY_IMAGE, drawable);
            hashMap2.put(KEY_ICON, drawable2);
            return hashMap2;
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            Log.d(MoPubAdapter.TAG, "Native ad images failed to download");
            return null;
        }
    }
}
