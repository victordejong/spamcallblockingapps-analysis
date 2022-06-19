package com.bytedance.sdk.openadsdk.multipro.aidl.p189b;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.aidl.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/b/a.class */
public class BinderC5080a extends IFullScreenVideoAdInteractionListener.Stub {

    /* renamed from: a */
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f18338a;

    /* renamed from: b */
    private Handler f18339b = new Handler(Looper.getMainLooper());

    public BinderC5080a(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        this.f18338a = fullScreenVideoAdInteractionListener;
    }

    /* renamed from: a */
    private void m33098a() {
        this.f18338a = null;
        this.f18339b = null;
    }

    /* renamed from: b */
    private Handler m33096b() {
        Handler handler = this.f18339b;
        Handler handler2 = handler;
        if (handler == null) {
            handler2 = new Handler(Looper.getMainLooper());
            this.f18339b = handler2;
        }
        return handler2;
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdClose() throws RemoteException {
        m33096b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.3
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5080a.this.f18338a != null) {
                    BinderC5080a.this.f18338a.onAdClose();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdShow() throws RemoteException {
        m33096b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5080a.this.f18338a != null) {
                    BinderC5080a.this.f18338a.onAdShow();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        m33096b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5080a.this.f18338a != null) {
                    BinderC5080a.this.f18338a.onAdVideoBarClick();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onDestroy() throws RemoteException {
        m33098a();
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onSkippedVideo() throws RemoteException {
        m33096b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.5
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5080a.this.f18338a != null) {
                    BinderC5080a.this.f18338a.onSkippedVideo();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onVideoComplete() throws RemoteException {
        m33096b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.4
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5080a.this.f18338a != null) {
                    BinderC5080a.this.f18338a.onVideoComplete();
                }
            }
        });
    }
}
