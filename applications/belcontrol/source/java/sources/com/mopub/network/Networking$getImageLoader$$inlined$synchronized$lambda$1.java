package com.mopub.network;

import android.content.Context;
import android.graphics.Bitmap;
import com.mopub.common.util.DeviceUtils;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1.class */
public final class Networking$getImageLoader$$inlined$synchronized$lambda$1 extends rk1 implements ik1<MaxWidthImageLoader> {

    /* renamed from: b */
    public final /* synthetic */ Context f5426b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Networking$getImageLoader$$inlined$synchronized$lambda$1(Context context) {
        super(0);
        this.f5426b = context;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1$1] */
    @Override // p000.ik1
    public final MaxWidthImageLoader invoke() {
        MoPubRequestQueue requestQueue = Networking.getRequestQueue(this.f5426b);
        int memoryCacheSizeBytes = DeviceUtils.memoryCacheSizeBytes(this.f5426b);
        final ?? r0 = new C1394f4<String, Bitmap>(memoryCacheSizeBytes, memoryCacheSizeBytes) { // from class: com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1.1
            {
                super(memoryCacheSizeBytes);
            }

            /* renamed from: a */
            public int sizeOf(String str, Bitmap bitmap) {
                qk1.m744c(str, "key");
                qk1.m744c(bitmap, "value");
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        };
        MaxWidthImageLoader maxWidthImageLoader = new MaxWidthImageLoader(requestQueue, this.f5426b, new ImageLoader.ImageCache() { // from class: com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1.2
            @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
            public Bitmap getBitmap(String str) {
                qk1.m744c(str, "key");
                return get(str);
            }

            @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
            public void putBitmap(String str, Bitmap bitmap) {
                qk1.m744c(str, "key");
                qk1.m744c(bitmap, "bitmap");
                put(str, bitmap);
            }
        });
        Networking networking = Networking.INSTANCE;
        Networking.f5422d = maxWidthImageLoader;
        return maxWidthImageLoader;
    }
}
