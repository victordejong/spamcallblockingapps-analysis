package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zj3.class */
public final class zj3 implements xk3 {

    /* renamed from: a */
    private final AbstractC7171y6 f32964a;

    /* renamed from: b */
    private final SparseArray<xk3> f32965b;

    /* renamed from: c */
    private final int[] f32966c;

    public zj3(Context context, br3 br3Var) {
        xn3 xn3Var = new xn3(context);
        this.f32964a = xn3Var;
        SparseArray<xk3> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, (xk3) Class.forName("androidx.media3.exoplayer.dash.DashMediaSource$Factory").asSubclass(xk3.class).getConstructor(AbstractC7171y6.class).newInstance(xn3Var));
        } catch (Exception e) {
        }
        try {
            sparseArray.put(1, (xk3) Class.forName("androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory").asSubclass(xk3.class).getConstructor(AbstractC7171y6.class).newInstance(xn3Var));
        } catch (Exception e2) {
        }
        try {
            sparseArray.put(2, (xk3) Class.forName("androidx.media3.exoplayer.hls.HlsMediaSource$Factory").asSubclass(xk3.class).getConstructor(AbstractC7171y6.class).newInstance(xn3Var));
        } catch (Exception e3) {
        }
        try {
            sparseArray.put(3, (xk3) Class.forName("androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(xk3.class).getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Exception e4) {
        }
        sparseArray.put(4, new ql3(xn3Var, br3Var));
        this.f32965b = sparseArray;
        this.f32966c = new int[sparseArray.size()];
        for (int i = 0; i < this.f32965b.size(); i++) {
            this.f32966c[i] = this.f32965b.keyAt(i);
        }
    }
}
