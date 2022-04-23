package p131c.p161d.p162a.p163b.p166h;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import com.mopub.mobileads.dfp.adapters.DownloadDrawablesAsync;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: c.d.a.b.h.a */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/a.class */
public class AsyncTaskC2466a extends AsyncTask<Object, Void, HashMap<String, Drawable>> {

    /* renamed from: a */
    public final AbstractC2468b f9420a;

    /* renamed from: b */
    public final C2474e f9421b = new C2474e();

    /* renamed from: c.d.a.b.h.a$a */
    /* loaded from: classes-dex2jar.jar:c/d/a/b/h/a$a.class */
    public class CallableC2467a implements Callable<Drawable> {

        /* renamed from: a */
        public final /* synthetic */ URL f9422a;

        public CallableC2467a(AsyncTaskC2466a aVar, URL url) {
            this.f9422a = url;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Drawable call() throws Exception {
            Bitmap decodeStream = BitmapFactory.decodeStream(this.f9422a.openStream());
            decodeStream.setDensity(160);
            return new BitmapDrawable(Resources.getSystem(), decodeStream);
        }
    }

    /* renamed from: c.d.a.b.h.a$b */
    /* loaded from: classes-dex2jar.jar:c/d/a/b/h/a$b.class */
    public interface AbstractC2468b {
        void onDownloadFailure();

        void onDownloadSuccess(HashMap<String, Drawable> hashMap);
    }

    public AsyncTaskC2466a(AbstractC2468b bVar) {
        this.f9420a = bVar;
    }

    /* renamed from: a */
    public final Future<Drawable> m29720a(URL url, ExecutorService executorService) {
        return executorService.submit(new CallableC2467a(this, url));
    }

    /* renamed from: a */
    public void onPostExecute(HashMap<String, Drawable> hashMap) {
        super.onPostExecute(hashMap);
        if (hashMap != null) {
            this.f9420a.onDownloadSuccess(hashMap);
        } else {
            this.f9420a.onDownloadFailure();
        }
    }

    @Override // android.os.AsyncTask
    public HashMap<String, Drawable> doInBackground(Object... objArr) {
        Drawable drawable;
        HashMap hashMap = (HashMap) objArr[0];
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        try {
            if (this.f9421b.m29696a(String.valueOf(hashMap.get(DownloadDrawablesAsync.KEY_ICON))) != null) {
                drawable = this.f9421b.m29696a(String.valueOf(hashMap.get(DownloadDrawablesAsync.KEY_ICON)));
            } else {
                drawable = m29720a((URL) hashMap.get(DownloadDrawablesAsync.KEY_ICON), newCachedThreadPool).get(10L, TimeUnit.SECONDS);
                this.f9421b.m29695a(String.valueOf(hashMap.get(DownloadDrawablesAsync.KEY_ICON)), drawable);
            }
            HashMap<String, Drawable> hashMap2 = new HashMap<>();
            hashMap2.put(DownloadDrawablesAsync.KEY_ICON, drawable);
            return hashMap2;
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            e.printStackTrace();
            return null;
        }
    }
}
