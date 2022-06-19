package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader.class */
public class ImageLoader {

    /* renamed from: a */
    public final RequestQueue f5539a;

    /* renamed from: c */
    public final ImageCache f5541c;

    /* renamed from: g */
    public Runnable f5545g;

    /* renamed from: b */
    public int f5540b = 100;

    /* renamed from: d */
    public final HashMap<String, C1243e> f5542d = new HashMap<>();

    /* renamed from: e */
    public final HashMap<String, C1243e> f5543e = new HashMap<>();

    /* renamed from: f */
    public final Handler f5544f = new Handler(Looper.getMainLooper());

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageCache.class */
    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageContainer.class */
    public class ImageContainer {

        /* renamed from: a */
        public Bitmap f5546a;

        /* renamed from: b */
        public final ImageListener f5547b;

        /* renamed from: c */
        public final String f5548c;

        /* renamed from: d */
        public final String f5549d;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            ImageLoader.this = r4;
            this.f5546a = bitmap;
            this.f5549d = str;
            this.f5548c = str2;
            this.f5547b = imageListener;
        }

        public void cancelRequest() {
            HashMap hashMap;
            gi1.m1659a();
            if (this.f5547b == null) {
                return;
            }
            C1243e c1243e = (C1243e) ImageLoader.this.f5542d.get(this.f5548c);
            if (c1243e == null) {
                C1243e c1243e2 = (C1243e) ImageLoader.this.f5543e.get(this.f5548c);
                if (c1243e2 == null) {
                    return;
                }
                c1243e2.removeContainerAndCancelIfNecessary(this);
                if (c1243e2.f5562d.size() != 0) {
                    return;
                }
                hashMap = ImageLoader.this.f5543e;
            } else if (!c1243e.removeContainerAndCancelIfNecessary(this)) {
                return;
            } else {
                hashMap = ImageLoader.this.f5542d;
            }
            hashMap.remove(this.f5548c);
        }

        public Bitmap getBitmap() {
            return this.f5546a;
        }

        public String getRequestUrl() {
            return this.f5549d;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageListener.class */
    public interface ImageListener extends Response.ErrorListener {
        @Override // com.mopub.volley.Response.ErrorListener
        /* synthetic */ void onErrorResponse(VolleyError volleyError);

        void onResponse(ImageContainer imageContainer, boolean z);
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$a.class */
    public static final class C1239a implements ImageListener {

        /* renamed from: a */
        public final /* synthetic */ int f5551a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f5552b;

        /* renamed from: c */
        public final /* synthetic */ int f5553c;

        public C1239a(int i, ImageView imageView, int i2) {
            this.f5551a = i;
            this.f5552b = imageView;
            this.f5553c = i2;
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            int i = this.f5551a;
            if (i != 0) {
                this.f5552b.setImageResource(i);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageContainer imageContainer, boolean z) {
            if (imageContainer.getBitmap() != null) {
                this.f5552b.setImageBitmap(imageContainer.getBitmap());
                return;
            }
            int i = this.f5553c;
            if (i == 0) {
                return;
            }
            this.f5552b.setImageResource(i);
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$b.class */
    public class C1240b implements Response.Listener<Bitmap> {

        /* renamed from: a */
        public final /* synthetic */ String f5554a;

        public C1240b(String str) {
            ImageLoader.this = r4;
            this.f5554a = str;
        }

        public void onResponse(Bitmap bitmap) {
            ImageLoader.this.m3104h(this.f5554a, bitmap);
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$c.class */
    public class C1241c implements Response.ErrorListener {

        /* renamed from: a */
        public final /* synthetic */ String f5556a;

        public C1241c(String str) {
            ImageLoader.this = r4;
            this.f5556a = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            ImageLoader.this.m3105g(this.f5556a, volleyError);
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$d.class */
    public class RunnableC1242d implements Runnable {
        public RunnableC1242d() {
            ImageLoader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (C1243e c1243e : ImageLoader.this.f5543e.values()) {
                for (ImageContainer imageContainer : c1243e.f5562d) {
                    if (imageContainer.f5547b != null) {
                        if (c1243e.getError() == null) {
                            imageContainer.f5546a = c1243e.f5560b;
                            imageContainer.f5547b.onResponse(imageContainer, false);
                        } else {
                            imageContainer.f5547b.onErrorResponse(c1243e.getError());
                        }
                    }
                }
            }
            ImageLoader.this.f5543e.clear();
            ImageLoader.this.f5545g = null;
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$e.class */
    public static class C1243e {

        /* renamed from: a */
        public final Request<?> f5559a;

        /* renamed from: b */
        public Bitmap f5560b;

        /* renamed from: c */
        public VolleyError f5561c;

        /* renamed from: d */
        public final List<ImageContainer> f5562d;

        public C1243e(Request<?> request, ImageContainer imageContainer) {
            ArrayList arrayList = new ArrayList();
            this.f5562d = arrayList;
            this.f5559a = request;
            arrayList.add(imageContainer);
        }

        public void addContainer(ImageContainer imageContainer) {
            this.f5562d.add(imageContainer);
        }

        public VolleyError getError() {
            return this.f5561c;
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.f5562d.remove(imageContainer);
            if (this.f5562d.size() == 0) {
                this.f5559a.cancel();
                return true;
            }
            return false;
        }

        public void setError(VolleyError volleyError) {
            this.f5561c = volleyError;
        }
    }

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.f5539a = requestQueue;
        this.f5541c = imageCache;
    }

    /* renamed from: e */
    public static String m3107e(String str, int i, int i2, ImageView.ScaleType scaleType) {
        StringBuilder sb = new StringBuilder(str.length() + 12);
        sb.append("#W");
        sb.append(i);
        sb.append("#H");
        sb.append(i2);
        sb.append("#S");
        sb.append(scaleType.ordinal());
        sb.append(str);
        return sb.toString();
    }

    public static ImageListener getImageListener(ImageView imageView, int i, int i2) {
        return new C1239a(i2, imageView, i);
    }

    /* renamed from: d */
    public final void m3108d(String str, C1243e c1243e) {
        this.f5543e.put(str, c1243e);
        if (this.f5545g == null) {
            RunnableC1242d runnableC1242d = new RunnableC1242d();
            this.f5545g = runnableC1242d;
            this.f5544f.postDelayed(runnableC1242d, this.f5540b);
        }
    }

    /* renamed from: f */
    public Request<Bitmap> m3106f(String str, int i, int i2, ImageView.ScaleType scaleType, String str2) {
        return new ImageRequest(str, new C1240b(str2), i, i2, scaleType, Bitmap.Config.RGB_565, new C1241c(str2));
    }

    /* renamed from: g */
    public void m3105g(String str, VolleyError volleyError) {
        C1243e remove = this.f5542d.remove(str);
        if (remove != null) {
            remove.setError(volleyError);
            m3108d(str, remove);
        }
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2) {
        return get(str, imageListener, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2, ImageView.ScaleType scaleType) {
        gi1.m1659a();
        String m3107e = m3107e(str, i, i2, scaleType);
        Bitmap bitmap = this.f5541c.getBitmap(m3107e);
        if (bitmap != null) {
            ImageContainer imageContainer = new ImageContainer(bitmap, str, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, str, m3107e, imageListener);
        imageListener.onResponse(imageContainer2, true);
        C1243e c1243e = this.f5542d.get(m3107e);
        C1243e c1243e2 = c1243e;
        if (c1243e == null) {
            c1243e2 = this.f5543e.get(m3107e);
        }
        if (c1243e2 != null) {
            c1243e2.addContainer(imageContainer2);
            return imageContainer2;
        }
        Request<Bitmap> m3106f = m3106f(str, i, i2, scaleType, m3107e);
        this.f5539a.add(m3106f);
        this.f5542d.put(m3107e, new C1243e(m3106f, imageContainer2));
        return imageContainer2;
    }

    /* renamed from: h */
    public void m3104h(String str, Bitmap bitmap) {
        this.f5541c.putBitmap(str, bitmap);
        C1243e remove = this.f5542d.remove(str);
        if (remove != null) {
            remove.f5560b = bitmap;
            m3108d(str, remove);
        }
    }

    public boolean isCached(String str, int i, int i2) {
        return isCached(str, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public boolean isCached(String str, int i, int i2, ImageView.ScaleType scaleType) {
        gi1.m1659a();
        return this.f5541c.getBitmap(m3107e(str, i, i2, scaleType)) != null;
    }

    public void setBatchedResponseDelay(int i) {
        this.f5540b = i;
    }
}
