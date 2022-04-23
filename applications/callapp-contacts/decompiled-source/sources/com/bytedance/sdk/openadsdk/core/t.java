package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/t.class */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private static t f9098a;

    /* renamed from: b  reason: collision with root package name */
    private c f9099b;

    /* renamed from: d  reason: collision with root package name */
    private i f9101d;
    private TTRewardVideoAd.RewardAdInteractionListener e;
    private com.a.a.a.a.a.c f;
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener g;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9100c = true;
    private boolean h = false;

    private t() {
    }

    public static t a() {
        if (f9098a == null) {
            f9098a = new t();
        }
        return f9098a;
    }

    public void a(com.a.a.a.a.a.c cVar) {
        this.f = cVar;
    }

    public void a(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        this.g = fullScreenVideoAdInteractionListener;
    }

    public void a(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        this.e = rewardAdInteractionListener;
    }

    public void a(i iVar) {
        this.f9101d = iVar;
    }

    public void a(boolean z) {
        this.f9100c = z;
    }

    public void b(boolean z) {
        this.h = z;
    }

    public boolean b() {
        return this.f9100c;
    }

    public i c() {
        return this.f9101d;
    }

    public TTRewardVideoAd.RewardAdInteractionListener d() {
        return this.e;
    }

    public TTFullScreenVideoAd.FullScreenVideoAdInteractionListener e() {
        return this.g;
    }

    public com.a.a.a.a.a.c f() {
        return this.f;
    }

    public void g() {
        this.f9099b = null;
        this.f9101d = null;
        this.e = null;
        this.g = null;
        this.f = null;
        this.h = false;
        this.f9100c = true;
    }
}
