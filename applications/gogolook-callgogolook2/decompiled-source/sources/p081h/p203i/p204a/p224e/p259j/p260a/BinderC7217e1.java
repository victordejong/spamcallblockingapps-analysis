package p081h.p203i.p204a.p224e.p259j.p260a;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.e1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/e1.class */
public final class BinderC7217e1 extends AbstractBinderC7165a1 {
    @Nullable

    /* renamed from: a */
    public RewardedVideoAdListener f17322a;

    public BinderC7217e1(@Nullable RewardedVideoAdListener rewardedVideoAdListener) {
        this.f17322a = rewardedVideoAdListener;
    }

    @Nullable
    /* renamed from: G0 */
    public final RewardedVideoAdListener m20939G0() {
        return this.f17322a;
    }

    /* renamed from: a */
    public final void m20938a(RewardedVideoAdListener rewardedVideoAdListener) {
        this.f17322a = rewardedVideoAdListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7475z0
    /* renamed from: a */
    public final void mo20462a(AbstractC7366q0 q0Var) {
        RewardedVideoAdListener rewardedVideoAdListener = this.f17322a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewarded(new C7191c1(q0Var));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7475z0
    public final void onRewardedVideoAdClosed() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f17322a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdClosed();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7475z0
    public final void onRewardedVideoAdFailedToLoad(int i) {
        RewardedVideoAdListener rewardedVideoAdListener = this.f17322a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdFailedToLoad(i);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7475z0
    public final void onRewardedVideoAdLeftApplication() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f17322a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7475z0
    public final void onRewardedVideoAdLoaded() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f17322a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdLoaded();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7475z0
    public final void onRewardedVideoAdOpened() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f17322a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdOpened();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7475z0
    public final void onRewardedVideoCompleted() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f17322a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoCompleted();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7475z0
    public final void onRewardedVideoStarted() {
        RewardedVideoAdListener rewardedVideoAdListener = this.f17322a;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoStarted();
        }
    }
}
