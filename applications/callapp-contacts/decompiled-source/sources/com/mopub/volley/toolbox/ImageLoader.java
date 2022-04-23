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

    /* renamed from: a  reason: collision with root package name */
    final ImageCache f34842a;

    /* renamed from: c  reason: collision with root package name */
    private final RequestQueue f34844c;
    private Runnable g;

    /* renamed from: d  reason: collision with root package name */
    private int f34845d = 100;

    /* renamed from: b  reason: collision with root package name */
    final HashMap<String, a> f34843b = new HashMap<>();
    private final HashMap<String, a> e = new HashMap<>();
    private final Handler f = new Handler(Looper.getMainLooper());

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageCache.class */
    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageContainer.class */
    public class ImageContainer {

        /* renamed from: b  reason: collision with root package name */
        private Bitmap f34855b;

        /* renamed from: c  reason: collision with root package name */
        private final ImageListener f34856c;

        /* renamed from: d  reason: collision with root package name */
        private final String f34857d;
        private final String e;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            this.f34855b = bitmap;
            this.e = str;
            this.f34857d = str2;
            this.f34856c = imageListener;
        }

        public void cancelRequest() {
            com.mopub.volley.toolbox.a.a();
            if (this.f34856c != null) {
                a aVar = (a) ImageLoader.this.f34843b.get(this.f34857d);
                if (aVar == null) {
                    a aVar2 = (a) ImageLoader.this.e.get(this.f34857d);
                    if (aVar2 != null) {
                        aVar2.removeContainerAndCancelIfNecessary(this);
                        if (aVar2.f34859b.size() == 0) {
                            ImageLoader.this.e.remove(this.f34857d);
                        }
                    }
                } else if (aVar.removeContainerAndCancelIfNecessary(this)) {
                    ImageLoader.this.f34843b.remove(this.f34857d);
                }
            }
        }

        public Bitmap getBitmap() {
            return this.f34855b;
        }

        public String getRequestUrl() {
            return this.e;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageListener.class */
    public interface ImageListener extends Response.ErrorListener {
        void onResponse(ImageContainer imageContainer, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Bitmap f34858a;

        /* renamed from: b  reason: collision with root package name */
        final List<ImageContainer> f34859b;

        /* renamed from: c  reason: collision with root package name */
        private final Request<?> f34860c;

        /* renamed from: d  reason: collision with root package name */
        private VolleyError f34861d;

        public a(Request<?> request, ImageContainer imageContainer) {
            ArrayList arrayList = new ArrayList();
            this.f34859b = arrayList;
            this.f34860c = request;
            arrayList.add(imageContainer);
        }

        public final void addContainer(ImageContainer imageContainer) {
            this.f34859b.add(imageContainer);
        }

        public final VolleyError getError() {
            return this.f34861d;
        }

        public final boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.f34859b.remove(imageContainer);
            if (this.f34859b.size() != 0) {
                return false;
            }
            this.f34860c.cancel();
            return true;
        }

        public final void setError(VolleyError volleyError) {
            this.f34861d = volleyError;
        }
    }

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.f34844c = requestQueue;
        this.f34842a = imageCache;
    }

    private static String a(String str, int i, int i2, ImageView.ScaleType scaleType) {
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
                if (i3 != 0) {
                    imageView.setImageResource(i3);
                }
            }
        };
    }

    final void a(String str, a aVar) {
        this.e.put(str, aVar);
        if (this.g == null) {
            Runnable runnable = new Runnable() { // from class: com.mopub.volley.toolbox.ImageLoader.4
                @Override // java.lang.Runnable
                public final void run() {
                    for (a aVar2 : ImageLoader.this.e.values()) {
                        for (ImageContainer imageContainer : aVar2.f34859b) {
                            if (imageContainer.f34856c != null) {
                                if (aVar2.getError() == null) {
                                    imageContainer.f34855b = aVar2.f34858a;
                                    imageContainer.f34856c.onResponse(imageContainer, false);
                                } else {
                                    imageContainer.f34856c.onErrorResponse(aVar2.getError());
                                }
                            }
                        }
                    }
                    ImageLoader.this.e.clear();
                    ImageLoader.this.g = null;
                }
            };
            this.g = runnable;
            this.f.postDelayed(runnable, this.f34845d);
        }
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2) {
        return get(str, imageListener, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2, ImageView.ScaleType scaleType) {
        com.mopub.volley.toolbox.a.a();
        final String a2 = a(str, i, i2, scaleType);
        Bitmap bitmap = this.f34842a.getBitmap(a2);
        if (bitmap != null) {
            ImageContainer imageContainer = new ImageContainer(bitmap, str, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, str, a2, imageListener);
        imageListener.onResponse(imageContainer2, true);
        a aVar = this.f34843b.get(a2);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = this.e.get(a2);
        }
        if (aVar2 != null) {
            aVar2.addContainer(imageContainer2);
            return imageContainer2;
        }
        ImageRequest imageRequest = new ImageRequest(str, new Response.Listener<Bitmap>() { // from class: com.mopub.volley.toolbox.ImageLoader.2
            public final void onResponse(Bitmap bitmap2) {
                ImageLoader imageLoader = ImageLoader.this;
                String str2 = a2;
                imageLoader.f34842a.putBitmap(str2, bitmap2);
                a remove = imageLoader.f34843b.remove(str2);
                if (remove != null) {
                    remove.f34858a = bitmap2;
                    imageLoader.a(str2, remove);
                }
            }
        }, i, i2, scaleType, Bitmap.Config.RGB_565, new Response.ErrorListener() { // from class: com.mopub.volley.toolbox.ImageLoader.3
            @Override // com.mopub.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                ImageLoader imageLoader = ImageLoader.this;
                String str2 = a2;
                a remove = imageLoader.f34843b.remove(str2);
                if (remove != null) {
                    remove.setError(volleyError);
                    imageLoader.a(str2, remove);
                }
            }
        });
        this.f34844c.add(imageRequest);
        this.f34843b.put(a2, new a(imageRequest, imageContainer2));
        return imageContainer2;
    }

    public boolean isCached(String str, int i, int i2) {
        return isCached(str, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public boolean isCached(String str, int i, int i2, ImageView.ScaleType scaleType) {
        com.mopub.volley.toolbox.a.a();
        return this.f34842a.getBitmap(a(str, i, i2, scaleType)) != null;
    }

    public void setBatchedResponseDelay(int i) {
        this.f34845d = i;
    }
}
