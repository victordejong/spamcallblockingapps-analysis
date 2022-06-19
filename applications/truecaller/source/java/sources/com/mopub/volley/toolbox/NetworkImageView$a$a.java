package com.mopub.volley.toolbox;

import com.mopub.volley.toolbox.ImageLoader;
import com.mopub.volley.toolbox.NetworkImageView;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView$a$a.class */
public class NetworkImageView$a$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ImageLoader.ImageContainer f9353a;

    /* renamed from: b */
    public final /* synthetic */ NetworkImageView.a f9354b;

    public NetworkImageView$a$a(NetworkImageView.a aVar, ImageLoader.ImageContainer imageContainer) {
        this.f9354b = aVar;
        this.f9353a = imageContainer;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f9354b.onResponse(this.f9353a, false);
    }
}
