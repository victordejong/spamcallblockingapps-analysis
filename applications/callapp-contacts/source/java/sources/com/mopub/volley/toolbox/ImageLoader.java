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
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader.class */
public class ImageLoader {

    /* renamed from: a */
    final ImageCache f60428a;

    /* renamed from: c */
    private final RequestQueue f60430c;

    /* renamed from: g */
    private Runnable f60434g;

    /* renamed from: d */
    private int f60431d = 100;

    /* renamed from: b */
    final HashMap<String, C17023a> f60429b = new HashMap<>();

    /* renamed from: e */
    private final HashMap<String, C17023a> f60432e = new HashMap<>();

    /* renamed from: f */
    private final Handler f60433f = new Handler(Looper.getMainLooper());

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageCache.class */
    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageContainer.class */
    public class ImageContainer {

        /* renamed from: b */
        private Bitmap f60444b;

        /* renamed from: c */
        private final ImageListener f60445c;

        /* renamed from: d */
        private final String f60446d;

        /* renamed from: e */
        private final String f60447e;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            ImageLoader.this = r4;
            this.f60444b = bitmap;
            this.f60447e = str;
            this.f60446d = str2;
            this.f60445c = imageListener;
        }

        public void cancelRequest() {
            C17026a.m5978a();
            if (this.f60445c == null) {
                return;
            }
            C17023a c17023a = (C17023a) ImageLoader.this.f60429b.get(this.f60446d);
            if (c17023a != null) {
                if (!c17023a.removeContainerAndCancelIfNecessary(this)) {
                    return;
                }
                ImageLoader.this.f60429b.remove(this.f60446d);
                return;
            }
            C17023a c17023a2 = (C17023a) ImageLoader.this.f60432e.get(this.f60446d);
            if (c17023a2 == null) {
                return;
            }
            c17023a2.removeContainerAndCancelIfNecessary(this);
            if (c17023a2.f60449b.size() != 0) {
                return;
            }
            ImageLoader.this.f60432e.remove(this.f60446d);
        }

        public Bitmap getBitmap() {
            return this.f60444b;
        }

        public String getRequestUrl() {
            return this.f60447e;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageListener.class */
    public interface ImageListener extends Response.ErrorListener {
        void onResponse(ImageContainer imageContainer, boolean z);
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$a.class */
    public static final class C17023a {

        /* renamed from: a */
        Bitmap f60448a;

        /* renamed from: b */
        final List<ImageContainer> f60449b;

        /* renamed from: c */
        private final Request<?> f60450c;

        /* renamed from: d */
        private VolleyError f60451d;

        public C17023a(Request<?> request, ImageContainer imageContainer) {
            ArrayList arrayList = new ArrayList();
            this.f60449b = arrayList;
            this.f60450c = request;
            arrayList.add(imageContainer);
        }

        public final void addContainer(ImageContainer imageContainer) {
            this.f60449b.add(imageContainer);
        }

        public final VolleyError getError() {
            return this.f60451d;
        }

        public final boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.f60449b.remove(imageContainer);
            if (this.f60449b.size() == 0) {
                this.f60450c.cancel();
                return true;
            }
            return false;
        }

        public final void setError(VolleyError volleyError) {
            this.f60451d = volleyError;
        }
    }

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.f60430c = requestQueue;
        this.f60428a = imageCache;
    }

    /* renamed from: a */
    private static String m5993a(String str, int i, int i2, ImageView.ScaleType scaleType) {
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

    public static ImageListener getImageListener(final ImageView imageView, final int i, final int i2) {
        return new ImageListener() { // from class: com.mopub.volley.toolbox.ImageLoader.1
            @Override // com.mopub.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                int i3 = i2;
                if (i3 != 0) {
                    imageView.setImageResource(i3);
                }
            }

            @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
            public final void onResponse(ImageContainer imageContainer, boolean z) {
                if (imageContainer.getBitmap() != null) {
                    imageView.setImageBitmap(imageContainer.getBitmap());
                    return;
                }
                int i3 = i;
                if (i3 == 0) {
                    return;
                }
                imageView.setImageResource(i3);
            }
        };
    }

    /* renamed from: a */
    final void m5992a(String str, C17023a c17023a) {
        this.f60432e.put(str, c17023a);
        if (this.f60434g == null) {
            Runnable runnable = new Runnable() { // from class: com.mopub.volley.toolbox.ImageLoader.4
                @Override // java.lang.Runnable
                public final void run() {
                    for (C17023a c17023a2 : ImageLoader.this.f60432e.values()) {
                        for (ImageContainer imageContainer : c17023a2.f60449b) {
                            if (imageContainer.f60445c != null) {
                                if (c17023a2.getError() == null) {
                                    imageContainer.f60444b = c17023a2.f60448a;
                                    imageContainer.f60445c.onResponse(imageContainer, false);
                                } else {
                                    imageContainer.f60445c.onErrorResponse(c17023a2.getError());
                                }
                            }
                        }
                    }
                    ImageLoader.this.f60432e.clear();
                    ImageLoader.this.f60434g = null;
                }
            };
            this.f60434g = runnable;
            this.f60433f.postDelayed(runnable, this.f60431d);
        }
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2) {
        return get(str, imageListener, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2, ImageView.ScaleType scaleType) {
        C17026a.m5978a();
        final String m5993a = m5993a(str, i, i2, scaleType);
        Bitmap bitmap = this.f60428a.getBitmap(m5993a);
        if (bitmap != null) {
            ImageContainer imageContainer = new ImageContainer(bitmap, str, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, str, m5993a, imageListener);
        imageListener.onResponse(imageContainer2, true);
        C17023a c17023a = this.f60429b.get(m5993a);
        C17023a c17023a2 = c17023a;
        if (c17023a == null) {
            c17023a2 = this.f60432e.get(m5993a);
        }
        if (c17023a2 != null) {
            c17023a2.addContainer(imageContainer2);
            return imageContainer2;
        }
        ImageRequest imageRequest = new ImageRequest(str, new Response.Listener<Bitmap>() { // from class: com.mopub.volley.toolbox.ImageLoader.2
            public final void onResponse(Bitmap bitmap2) {
                ImageLoader imageLoader = ImageLoader.this;
                String str2 = m5993a;
                imageLoader.f60428a.putBitmap(str2, bitmap2);
                C17023a remove = imageLoader.f60429b.remove(str2);
                if (remove != null) {
                    remove.f60448a = bitmap2;
                    imageLoader.m5992a(str2, remove);
                }
            }
        }, i, i2, scaleType, Bitmap.Config.RGB_565, new Response.ErrorListener() { // from class: com.mopub.volley.toolbox.ImageLoader.3
            @Override // com.mopub.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                ImageLoader imageLoader = ImageLoader.this;
                String str2 = m5993a;
                C17023a remove = imageLoader.f60429b.remove(str2);
                if (remove != null) {
                    remove.setError(volleyError);
                    imageLoader.m5992a(str2, remove);
                }
            }
        });
        this.f60430c.add(imageRequest);
        this.f60429b.put(m5993a, new C17023a(imageRequest, imageContainer2));
        return imageContainer2;
    }

    public boolean isCached(String str, int i, int i2) {
        return isCached(str, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public boolean isCached(String str, int i, int i2, ImageView.ScaleType scaleType) {
        C17026a.m5978a();
        return this.f60428a.getBitmap(m5993a(str, i, i2, scaleType)) != null;
    }

    public void setBatchedResponseDelay(int i) {
        this.f60431d = i;
    }
}
