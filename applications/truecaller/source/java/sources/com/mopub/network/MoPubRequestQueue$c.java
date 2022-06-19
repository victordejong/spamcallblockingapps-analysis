package com.mopub.network;

import android.os.Handler;
import com.mopub.volley.Request;
import e.n.e.b;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubRequestQueue$c.class */
public class MoPubRequestQueue$c {

    /* renamed from: a */
    public final int f9235a;

    /* renamed from: b */
    public final Handler f9236b;

    /* renamed from: c */
    public final Runnable f9237c;

    /* renamed from: d */
    public final /* synthetic */ MoPubRequestQueue f9238d;

    public MoPubRequestQueue$c(MoPubRequestQueue moPubRequestQueue, Request<?> request, int i) {
        Handler handler = new Handler();
        this.f9238d = moPubRequestQueue;
        this.f9235a = i;
        this.f9236b = handler;
        this.f9237c = new b(this, moPubRequestQueue, request);
    }
}
