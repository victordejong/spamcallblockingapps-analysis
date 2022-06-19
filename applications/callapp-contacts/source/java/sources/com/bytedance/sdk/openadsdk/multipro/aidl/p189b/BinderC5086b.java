package com.bytedance.sdk.openadsdk.multipro.aidl.p189b;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.aidl.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/aidl/b/b.class */
public class BinderC5086b extends IRewardAdInteractionListener.Stub {

    /* renamed from: a */
    private TTRewardVideoAd.RewardAdInteractionListener f18345a;

    /* renamed from: b */
    private Handler f18346b = new Handler(Looper.getMainLooper());

    public BinderC5086b(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        this.f18345a = rewardAdInteractionListener;
    }

    /* renamed from: a */
    private void m33095a() {
        this.f18345a = null;
        this.f18346b = null;
    }

    /* renamed from: b */
    private Handler m33093b() {
        Handler handler = this.f18346b;
        Handler handler2 = handler;
        if (handler == null) {
            handler2 = new Handler(Looper.getMainLooper());
            this.f18346b = handler2;
        }
        return handler2;
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdClose() throws RemoteException {
        m33093b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.3
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5086b.this.f18345a != null) {
                    BinderC5086b.this.f18345a.onAdClose();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdShow() throws RemoteException {
        m33093b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5086b.this.f18345a != null) {
                    BinderC5086b.this.f18345a.onAdShow();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        m33093b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5086b.this.f18345a != null) {
                    BinderC5086b.this.f18345a.onAdVideoBarClick();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onDestroy() throws RemoteException {
        m33095a();
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onRewardVerify(final boolean z, final int i, final String str) throws RemoteException {
        m33093b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.7
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5086b.this.f18345a != null) {
                    BinderC5086b.this.f18345a.onRewardVerify(z, i, str);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onSkippedVideo() throws RemoteException {
        m33093b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.6
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5086b.this.f18345a != null) {
                    BinderC5086b.this.f18345a.onSkippedVideo();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onVideoComplete() throws RemoteException {
        m33093b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.4
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5086b.this.f18345a != null) {
                    BinderC5086b.this.f18345a.onVideoComplete();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onVideoError() throws RemoteException {
        m33093b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.5
            @Override // java.lang.Runnable
            public void run() {
                if (BinderC5086b.this.f18345a != null) {
                    BinderC5086b.this.f18345a.onVideoError();
                }
            }
        });
    }
}
