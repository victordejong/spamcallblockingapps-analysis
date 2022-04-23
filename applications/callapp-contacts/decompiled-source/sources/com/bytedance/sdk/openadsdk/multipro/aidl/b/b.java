package com.bytedance.sdk.openadsdk.multipro.aidl.b;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/b/b.class */
public class b extends IRewardAdInteractionListener.Stub {

    /* renamed from: a  reason: collision with root package name */
    private TTRewardVideoAd.RewardAdInteractionListener f9874a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f9875b = new Handler(Looper.getMainLooper());

    public b(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        this.f9874a = rewardAdInteractionListener;
    }

    private void a() {
        this.f9874a = null;
        this.f9875b = null;
    }

    private Handler b() {
        Handler handler = this.f9875b;
        Handler handler2 = handler;
        if (handler == null) {
            handler2 = new Handler(Looper.getMainLooper());
            this.f9875b = handler2;
        }
        return handler2;
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdClose() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.3
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f9874a != null) {
                    b.this.f9874a.onAdClose();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdShow() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f9874a != null) {
                    b.this.f9874a.onAdShow();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f9874a != null) {
                    b.this.f9874a.onAdVideoBarClick();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onDestroy() throws RemoteException {
        a();
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onRewardVerify(final boolean z, final int i, final String str) throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.7
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f9874a != null) {
                    b.this.f9874a.onRewardVerify(z, i, str);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onSkippedVideo() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.6
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f9874a != null) {
                    b.this.f9874a.onSkippedVideo();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onVideoComplete() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.4
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f9874a != null) {
                    b.this.f9874a.onVideoComplete();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onVideoError() throws RemoteException {
        b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.5
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f9874a != null) {
                    b.this.f9874a.onVideoError();
                }
            }
        });
    }
}
