package com.aotter.net.trek.network;

import com.aotter.net.trek.network.ImageHelper;
import com.aotter.net.trek.util.TrekLog;
import com.aotter.net.volley.VolleyError;
import com.aotter.net.volley.toolbox.ImageLoader;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.aotter.net.trek.network.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/a.class */
public final class C1755a implements ImageLoader.ImageListener {

    /* renamed from: a */
    public final /* synthetic */ AtomicInteger f1565a;

    /* renamed from: b */
    public final /* synthetic */ AtomicBoolean f1566b;

    /* renamed from: c */
    public final /* synthetic */ ImageHelper.ImageListener f1567c;

    public C1755a(AtomicInteger atomicInteger, AtomicBoolean atomicBoolean, ImageHelper.ImageListener imageListener) {
        this.f1565a = atomicInteger;
        this.f1566b = atomicBoolean;
        this.f1567c = imageListener;
    }

    @Override // com.aotter.net.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        TrekLog.m36318d("Failed to download a native ads image:", volleyError);
        this.f1566b.getAndSet(true);
        this.f1565a.decrementAndGet();
    }

    @Override // com.aotter.net.volley.toolbox.ImageLoader.ImageListener
    public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
        if (imageContainer.getBitmap() != null && this.f1565a.decrementAndGet() == 0 && !this.f1566b.get()) {
            this.f1567c.onImagesCached();
        }
    }
}
