package com.bytedance.sdk.openadsdk.multipro.aidl.b;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/b/a.class */
public class a extends IFullScreenVideoAdInteractionListener.Stub {

    /* renamed from: a  reason: collision with root package name */
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f9867a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f9868b = new Handler(Looper.getMainLooper());

    public a(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        this.f9867a = fullScreenVideoAdInteractionListener;
    }

    private void a() {
        this.f9867a = null;
        this.f9868b = null;
    }

    private Handler b() {
        Handler handler = this.f9868b;
        Handler handler2 = handler;
        if (handler == null) {
            handler2 = new Handler(Looper.getMainLooper());
            this.f9868b = handler2;
        }
        return handler2;
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdClose() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.3
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f9867a != null) {
                    a.this.f9867a.onAdClose();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdShow() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f9867a != null) {
                    a.this.f9867a.onAdShow();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f9867a != null) {
                    a.this.f9867a.onAdVideoBarClick();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onDestroy() throws RemoteException {
        a();
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onSkippedVideo() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.5
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f9867a != null) {
                    a.this.f9867a.onSkippedVideo();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onVideoComplete() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.a.4
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f9867a != null) {
                    a.this.f9867a.onVideoComplete();
                }
            }
        });
    }
}
