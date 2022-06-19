package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.widget.ImageView;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.VolleyError;
import e.m.d.y.n;
import e.n.f.b.a;
import e.n.f.b.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader.class */
public class ImageLoader {

    /* renamed from: a */
    public final RequestQueue f9329a;

    /* renamed from: c */
    public final ImageCache f9331c;

    /* renamed from: g */
    public Runnable f9335g;

    /* renamed from: b */
    public int f9330b = 100;

    /* renamed from: d */
    public final HashMap<String, C2726c> f9332d = new HashMap<>();

    /* renamed from: e */
    public final HashMap<String, C2726c> f9333e = new HashMap<>();

    /* renamed from: f */
    public final Handler f9334f = new Handler(Looper.getMainLooper());

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageCache.class */
    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageContainer.class */
    public class ImageContainer {

        /* renamed from: a */
        public Bitmap f9336a;

        /* renamed from: b */
        public final ImageListener f9337b;

        /* renamed from: c */
        public final String f9338c;

        /* renamed from: d */
        public final String f9339d;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            ImageLoader.this = r4;
            this.f9336a = bitmap;
            this.f9339d = str;
            this.f9338c = str2;
            this.f9337b = imageListener;
        }

        @MainThread
        public void cancelRequest() {
            n.o1();
            if (this.f9337b == null) {
                return;
            }
            C2726c c2726c = ImageLoader.this.f9332d.get(this.f9338c);
            if (c2726c != null) {
                if (!c2726c.removeContainerAndCancelIfNecessary(this)) {
                    return;
                }
                ImageLoader.this.f9332d.remove(this.f9338c);
                return;
            }
            C2726c c2726c2 = ImageLoader.this.f9333e.get(this.f9338c);
            if (c2726c2 == null) {
                return;
            }
            c2726c2.removeContainerAndCancelIfNecessary(this);
            if (c2726c2.f9345d.size() != 0) {
                return;
            }
            ImageLoader.this.f9333e.remove(this.f9338c);
        }

        public Bitmap getBitmap() {
            return this.f9336a;
        }

        public String getRequestUrl() {
            return this.f9339d;
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$b.class */
    public class RunnableC2725b implements Runnable {
        public RunnableC2725b() {
            ImageLoader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (C2726c c2726c : ImageLoader.this.f9333e.values()) {
                for (ImageContainer imageContainer : c2726c.f9345d) {
                    if (imageContainer.f9337b != null) {
                        if (c2726c.getError() == null) {
                            imageContainer.f9336a = c2726c.f9343b;
                            imageContainer.f9337b.onResponse(imageContainer, false);
                        } else {
                            imageContainer.f9337b.onErrorResponse(c2726c.getError());
                        }
                    }
                }
            }
            ImageLoader.this.f9333e.clear();
            ImageLoader.this.f9335g = null;
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$c.class */
    public static class C2726c {

        /* renamed from: a */
        public final Request<?> f9342a;

        /* renamed from: b */
        public Bitmap f9343b;

        /* renamed from: c */
        public VolleyError f9344c;

        /* renamed from: d */
        public final List<ImageContainer> f9345d;

        public C2726c(Request<?> request, ImageContainer imageContainer) {
            ArrayList arrayList = new ArrayList();
            this.f9345d = arrayList;
            this.f9342a = request;
            arrayList.add(imageContainer);
        }

        public void addContainer(ImageContainer imageContainer) {
            this.f9345d.add(imageContainer);
        }

        public VolleyError getError() {
            return this.f9344c;
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.f9345d.remove(imageContainer);
            if (this.f9345d.size() == 0) {
                this.f9342a.cancel();
                return true;
            }
            return false;
        }

        public void setError(VolleyError volleyError) {
            this.f9344c = volleyError;
        }
    }

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.f9329a = requestQueue;
        this.f9331c = imageCache;
    }

    /* renamed from: b */
    public static String m36151b(String str, int i, int i2, ImageView.ScaleType scaleType) {
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
        return new a(i2, imageView, i);
    }

    /* renamed from: a */
    public final void m36152a(String str, C2726c c2726c) {
        this.f9333e.put(str, c2726c);
        if (this.f9335g == null) {
            RunnableC2725b runnableC2725b = new RunnableC2725b();
            this.f9335g = runnableC2725b;
            this.f9334f.postDelayed(runnableC2725b, this.f9330b);
        }
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2) {
        return get(str, imageListener, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    @MainThread
    public ImageContainer get(String str, ImageListener imageListener, int i, int i2, ImageView.ScaleType scaleType) {
        n.o1();
        String m36151b = m36151b(str, i, i2, scaleType);
        Bitmap bitmap = this.f9331c.getBitmap(m36151b);
        if (bitmap != null) {
            ImageContainer imageContainer = new ImageContainer(bitmap, str, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, str, m36151b, imageListener);
        imageListener.onResponse(imageContainer2, true);
        C2726c c2726c = this.f9332d.get(m36151b);
        C2726c c2726c2 = c2726c;
        if (c2726c == null) {
            c2726c2 = this.f9333e.get(m36151b);
        }
        if (c2726c2 != null) {
            c2726c2.addContainer(imageContainer2);
            return imageContainer2;
        }
        ImageRequest imageRequest = new ImageRequest(str, new a(this, m36151b), i, i2, scaleType, Bitmap.Config.RGB_565, new b(this, m36151b));
        this.f9329a.add(imageRequest);
        this.f9332d.put(m36151b, new C2726c(imageRequest, imageContainer2));
        return imageContainer2;
    }

    public boolean isCached(String str, int i, int i2) {
        return isCached(str, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    @MainThread
    public boolean isCached(String str, int i, int i2, ImageView.ScaleType scaleType) {
        n.o1();
        return this.f9331c.getBitmap(m36151b(str, i, i2, scaleType)) != null;
    }

    public void setBatchedResponseDelay(int i) {
        this.f9330b = i;
    }
}
