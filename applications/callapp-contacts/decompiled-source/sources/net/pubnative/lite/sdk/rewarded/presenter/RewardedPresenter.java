package net.pubnative.lite.sdk.rewarded.presenter;

import net.pubnative.lite.sdk.models.Ad;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter.class */
public interface RewardedPresenter {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/presenter/RewardedPresenter$Listener.class */
    public interface Listener {
        void onRewardedClicked(RewardedPresenter rewardedPresenter);

        void onRewardedClosed(RewardedPresenter rewardedPresenter);

        void onRewardedError(RewardedPresenter rewardedPresenter);

        void onRewardedFinished(RewardedPresenter rewardedPresenter);

        void onRewardedLoaded(RewardedPresenter rewardedPresenter);

        void onRewardedOpened(RewardedPresenter rewardedPresenter);
    }

    void destroy();

    Ad getAd();

    boolean isReady();

    void load();

    void setListener(Listener listener);

    void show();
}
