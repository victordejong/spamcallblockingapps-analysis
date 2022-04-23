package com.applovin.mediation.adapters;

import android.app.Activity;
import android.view.View;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/MediationAdapterRouter.class */
public abstract class MediationAdapterRouter {
    public static final Map<String, MediationAdapterRouter> sharedInstances = new HashMap();
    public static final Object sharedInstancesLock = new Object();
    public MaxAdapter.OnCompletionListener mOnCompletionListener;
    public C2341l mSdk;
    public final String mTag = MediationAdapterRouter.class.getSimpleName();
    public final Map<String, List<MediationAdapterRouterListenerWrapper>> listeners = new HashMap();
    public final Object listenersLock = new Object();
    public final Set<MaxAdapter> loadedAdapters = new HashSet();
    public final Object loadedAdaptersLock = new Object();
    public final Set<MaxAdapter> showingAdapters = new HashSet();
    public final Object showingAdaptersLock = new Object();

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper.class */
    public final class MediationAdapterRouterListenerWrapper {
        public View mAdView;
        public final MaxAdapter mAdapter;
        public final MaxAdapterListener mListener;
        public final RouterAdLoadType mLoadType;

        public MediationAdapterRouterListenerWrapper(MaxAdapter maxAdapter, MaxAdapterListener maxAdapterListener, RouterAdLoadType routerAdLoadType, View view) {
            this.mAdapter = maxAdapter;
            this.mListener = maxAdapterListener;
            this.mLoadType = routerAdLoadType;
            this.mAdView = view;
        }

        public View getAdView() {
            return this.mAdView;
        }

        public MaxAdapter getAdapter() {
            return this.mAdapter;
        }

        public MaxAdapterListener getListener() {
            return this.mListener;
        }

        public RouterAdLoadType getLoadType() {
            return this.mLoadType;
        }

        public void setAdView(View view) {
            this.mAdView = view;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType.class */
    public enum RouterAdLoadType {
        INTERSTITIAL,
        REWARDED,
        ADVIEW
    }

    public MediationAdapterRouter() {
        for (AppLovinSdk appLovinSdk : AppLovinSdk.m18784a()) {
            if (AppLovinMediationProvider.MAX.equalsIgnoreCase(appLovinSdk.getMediationProvider())) {
                this.mSdk = AbstractC2426r.m29811a(appLovinSdk);
            }
        }
        if (this.mSdk == null) {
            C2374t.m30034j(this.mTag, "Invalid mediation provider detected. Please set AppLovin SDK mediation provider to MAX via AppLovinSdk.getInstance(context).setMediationProvider( AppLovinMediationProvider.MAX )");
        }
    }

    private void addAdapter(MaxAdapter maxAdapter, MaxAdapterListener maxAdapterListener, String str, RouterAdLoadType routerAdLoadType, View view) {
        synchronized (this.listenersLock) {
            MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper = new MediationAdapterRouterListenerWrapper(maxAdapter, maxAdapterListener, routerAdLoadType, view);
            List<MediationAdapterRouterListenerWrapper> arrayList = this.listeners.get(str) != null ? this.listeners.get(str) : new ArrayList<>(1);
            arrayList.add(mediationAdapterRouterListenerWrapper);
            this.listeners.put(str, arrayList);
        }
    }

    private void addLoadedAdapter(MaxAdapter maxAdapter) {
        synchronized (this.loadedAdaptersLock) {
            this.loadedAdapters.add(maxAdapter);
        }
    }

    private List<MediationAdapterRouterListenerWrapper> getListenerWrappers(String str) {
        return this.listeners.containsKey(str) ? new ArrayList(this.listeners.get(str)) : null;
    }

    private List<MediationAdapterRouterListenerWrapper> getLoadingListenerWrappers(String str) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.listenersLock) {
            try {
                List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
                if (listenerWrappers == null || listenerWrappers.size() <= 0) {
                    return null;
                }
                for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : listenerWrappers) {
                    if (!isAdLoaded(mediationAdapterRouterListenerWrapper.getAdapter())) {
                        arrayList.add(mediationAdapterRouterListenerWrapper);
                    }
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0052 -> B:8:0x0039). Please submit an issue!!! */
    public static MediationAdapterRouter getSharedInstance(Class cls) {
        MediationAdapterRouter mediationAdapterRouter;
        MediationAdapterRouter mediationAdapterRouter2;
        synchronized (sharedInstancesLock) {
            String name = cls.getName();
            MediationAdapterRouter mediationAdapterRouter3 = sharedInstances.get(name);
            mediationAdapterRouter = mediationAdapterRouter3;
            if (mediationAdapterRouter3 == null) {
                try {
                    Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    mediationAdapterRouter2 = (MediationAdapterRouter) declaredConstructor.newInstance(new Object[0]);
                } catch (Throwable th) {
                    mediationAdapterRouter2 = mediationAdapterRouter3;
                }
                sharedInstances.put(name, mediationAdapterRouter2);
                mediationAdapterRouter = mediationAdapterRouter2;
            }
        }
        return mediationAdapterRouter;
    }

    private List<MediationAdapterRouterListenerWrapper> getShowingListenerWrappers(String str) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.listenersLock) {
            try {
                List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
                if (listenerWrappers == null || listenerWrappers.size() <= 0) {
                    return null;
                }
                for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : listenerWrappers) {
                    if (isAdShowing(mediationAdapterRouterListenerWrapper.getAdapter())) {
                        arrayList.add(mediationAdapterRouterListenerWrapper);
                    }
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean isAdLoaded(MaxAdapter maxAdapter) {
        boolean contains;
        synchronized (this.loadedAdaptersLock) {
            contains = this.loadedAdapters.contains(maxAdapter);
        }
        return contains;
    }

    private boolean isAdShowing(MaxAdapter maxAdapter) {
        boolean contains;
        synchronized (this.showingAdaptersLock) {
            contains = this.showingAdapters.contains(maxAdapter);
        }
        return contains;
    }

    private void removeLoadedAdapter(MaxAdapter maxAdapter) {
        synchronized (this.loadedAdaptersLock) {
            this.loadedAdapters.remove(maxAdapter);
        }
    }

    private void removeShowingAdapter(MaxAdapter maxAdapter) {
        synchronized (this.showingAdaptersLock) {
            this.showingAdapters.remove(maxAdapter);
        }
    }

    public void addAdViewAdapter(MaxAdapter maxAdapter, MaxAdViewAdapterListener maxAdViewAdapterListener, String str, View view) {
        addAdapter(maxAdapter, maxAdViewAdapterListener, str, RouterAdLoadType.ADVIEW, view);
    }

    public void addInterstitialAdapter(MaxAdapter maxAdapter, MaxInterstitialAdapterListener maxInterstitialAdapterListener, String str) {
        addAdapter(maxAdapter, maxInterstitialAdapterListener, str, RouterAdLoadType.INTERSTITIAL, null);
    }

    public void addRewardedAdapter(MaxAdapter maxAdapter, MaxRewardedAdapterListener maxRewardedAdapterListener, String str) {
        addAdapter(maxAdapter, maxRewardedAdapterListener, str, RouterAdLoadType.REWARDED, null);
    }

    public void addShowingAdapter(MaxAdapter maxAdapter) {
        synchronized (this.showingAdaptersLock) {
            this.showingAdapters.add(maxAdapter);
        }
    }

    public MaxReward getReward(String str) {
        synchronized (this.listenersLock) {
            List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
            if (listenerWrappers != null && listenerWrappers.size() > 0) {
                MaxAdapter adapter = listenerWrappers.get(0).getAdapter();
                if (adapter instanceof MediationAdapterBase) {
                    return ((MediationAdapterBase) adapter).getReward();
                }
            }
            return MaxReward.createDefault();
        }
    }

    public abstract void initialize(MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity, MaxAdapter.OnCompletionListener onCompletionListener);

    public void log(String str) {
        C2341l lVar = this.mSdk;
        if (lVar != null) {
            lVar.m30262d0().m30042c(this.mTag, str);
        }
    }

    public void log(String str, Throwable th) {
        C2341l lVar = this.mSdk;
        if (lVar != null) {
            lVar.m30262d0().m30043b(this.mTag, str, th);
        }
    }

    public void onAdClicked(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers != null && showingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.INTERSTITIAL) {
                    log("Interstitial clicked");
                    ((MaxInterstitialAdapterListener) listener).onInterstitialAdClicked();
                } else if (loadType == RouterAdLoadType.REWARDED) {
                    log("Rewarded clicked");
                    ((MaxRewardedAdapterListener) listener).onRewardedAdClicked();
                } else if (loadType == RouterAdLoadType.ADVIEW) {
                    log("AdView clicked");
                    ((MaxAdViewAdapterListener) listener).onAdViewAdClicked();
                }
            }
        }
    }

    public void onAdDisplayFailed(String str, MaxAdapterError maxAdapterError) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers != null && showingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.INTERSTITIAL) {
                    log("Interstitial failed to display with error: " + maxAdapterError.toString());
                    ((MaxInterstitialAdapterListener) listener).onInterstitialAdDisplayFailed(maxAdapterError);
                } else if (loadType == RouterAdLoadType.REWARDED) {
                    log("Rewarded failed to display with error: " + maxAdapterError.toString());
                    ((MaxRewardedAdapterListener) listener).onRewardedAdDisplayFailed(maxAdapterError);
                } else if (loadType == RouterAdLoadType.ADVIEW) {
                    log("AdView failed to display with error: " + maxAdapterError.toString());
                    ((MaxAdViewAdapterListener) listener).onAdViewAdDisplayFailed(maxAdapterError);
                }
            }
        }
    }

    public void onAdDisplayed(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers != null && showingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.INTERSTITIAL) {
                    log("Interstitial shown");
                    ((MaxInterstitialAdapterListener) listener).onInterstitialAdDisplayed();
                } else if (loadType == RouterAdLoadType.REWARDED) {
                    log("Rewarded shown");
                    ((MaxRewardedAdapterListener) listener).onRewardedAdDisplayed();
                } else if (loadType == RouterAdLoadType.ADVIEW) {
                    log("AdView shown");
                    ((MaxAdViewAdapterListener) listener).onAdViewAdDisplayed();
                }
            }
        }
    }

    public void onAdHidden(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers != null && showingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.INTERSTITIAL) {
                    log("Interstitial hidden");
                    ((MaxInterstitialAdapterListener) listener).onInterstitialAdHidden();
                } else if (loadType == RouterAdLoadType.REWARDED) {
                    log("Rewarded hidden");
                    ((MaxRewardedAdapterListener) listener).onRewardedAdHidden();
                } else if (loadType == RouterAdLoadType.ADVIEW) {
                    log("AdView hidden");
                    ((MaxAdViewAdapterListener) listener).onAdViewAdHidden();
                }
            }
        }
    }

    public void onAdLoadFailed(String str, MaxAdapterError maxAdapterError) {
        List<MediationAdapterRouterListenerWrapper> loadingListenerWrappers = getLoadingListenerWrappers(str);
        if (loadingListenerWrappers != null && loadingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : loadingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.INTERSTITIAL) {
                    log("Interstitial failed to load with error: " + maxAdapterError.toString());
                    ((MaxInterstitialAdapterListener) listener).onInterstitialAdLoadFailed(maxAdapterError);
                } else if (loadType == RouterAdLoadType.REWARDED) {
                    log("Rewarded failed to load with error: " + maxAdapterError.toString());
                    ((MaxRewardedAdapterListener) listener).onRewardedAdLoadFailed(maxAdapterError);
                } else if (loadType == RouterAdLoadType.ADVIEW) {
                    log("AdView failed to load with error: " + maxAdapterError.toString());
                    ((MaxAdViewAdapterListener) listener).onAdViewAdLoadFailed(maxAdapterError);
                }
            }
        }
    }

    public void onAdLoaded(String str) {
        List<MediationAdapterRouterListenerWrapper> loadingListenerWrappers = getLoadingListenerWrappers(str);
        if (loadingListenerWrappers != null && loadingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : loadingListenerWrappers) {
                addLoadedAdapter(mediationAdapterRouterListenerWrapper.getAdapter());
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.INTERSTITIAL) {
                    log("Interstitial loaded");
                    ((MaxInterstitialAdapterListener) listener).onInterstitialAdLoaded();
                } else if (loadType == RouterAdLoadType.REWARDED) {
                    log("Rewarded loaded");
                    ((MaxRewardedAdapterListener) listener).onRewardedAdLoaded();
                } else if (loadType == RouterAdLoadType.ADVIEW) {
                    log("AdView loaded");
                    ((MaxAdViewAdapterListener) listener).onAdViewAdLoaded(mediationAdapterRouterListenerWrapper.getAdView());
                }
            }
        }
    }

    public void onAdViewAdCollapsed(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers != null && showingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.ADVIEW) {
                    log("AdView collapsed");
                    ((MaxAdViewAdapterListener) listener).onAdViewAdCollapsed();
                }
            }
        }
    }

    public void onAdViewAdExpanded(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers != null && showingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.ADVIEW) {
                    log("AdView expanded");
                    ((MaxAdViewAdapterListener) listener).onAdViewAdExpanded();
                }
            }
        }
    }

    public void onRewardedAdVideoCompleted(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers != null && showingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.REWARDED) {
                    log("Rewarded video completed");
                    ((MaxRewardedAdapterListener) listener).onRewardedAdVideoCompleted();
                }
            }
        }
    }

    public void onRewardedAdVideoStarted(String str) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers != null && showingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.REWARDED) {
                    log("Rewarded video started");
                    ((MaxRewardedAdapterListener) listener).onRewardedAdVideoStarted();
                }
            }
        }
    }

    public void onUserRewarded(String str, MaxReward maxReward) {
        List<MediationAdapterRouterListenerWrapper> showingListenerWrappers = getShowingListenerWrappers(str);
        if (showingListenerWrappers != null && showingListenerWrappers.size() > 0) {
            for (MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper : showingListenerWrappers) {
                RouterAdLoadType loadType = mediationAdapterRouterListenerWrapper.getLoadType();
                MaxAdapterListener listener = mediationAdapterRouterListenerWrapper.getListener();
                if (loadType == RouterAdLoadType.REWARDED) {
                    log("Rewarded user with reward: " + maxReward);
                    ((MaxRewardedAdapterListener) listener).onUserRewarded(maxReward);
                }
            }
        }
    }

    public void removeAdapter(MaxAdapter maxAdapter, String str) {
        removeLoadedAdapter(maxAdapter);
        removeShowingAdapter(maxAdapter);
        synchronized (this.listenersLock) {
            try {
                List<MediationAdapterRouterListenerWrapper> list = this.listeners.get(str);
                if (list != null && list.size() > 0) {
                    MediationAdapterRouterListenerWrapper mediationAdapterRouterListenerWrapper = null;
                    Iterator<MediationAdapterRouterListenerWrapper> it = list.iterator();
                    do {
                        if (!it.hasNext()) {
                            break;
                        }
                        mediationAdapterRouterListenerWrapper = it.next();
                    } while (mediationAdapterRouterListenerWrapper.getAdapter() != maxAdapter);
                    if (mediationAdapterRouterListenerWrapper != null) {
                        list.remove(mediationAdapterRouterListenerWrapper);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean shouldAlwaysRewardUser(String str) {
        synchronized (this.listenersLock) {
            List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
            if (listenerWrappers != null && listenerWrappers.size() > 0) {
                MaxAdapter adapter = listenerWrappers.get(0).getAdapter();
                if (adapter instanceof MediationAdapterBase) {
                    return ((MediationAdapterBase) adapter).shouldAlwaysRewardUser();
                }
            }
            return false;
        }
    }

    public void updateAdView(View view, String str) {
        synchronized (this.listenersLock) {
            try {
                List<MediationAdapterRouterListenerWrapper> listenerWrappers = getListenerWrappers(str);
                if (listenerWrappers != null && listenerWrappers.size() > 0) {
                    Iterator<MediationAdapterRouterListenerWrapper> it = listenerWrappers.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        MediationAdapterRouterListenerWrapper next = it.next();
                        if (next.getAdView() == null) {
                            next.setAdView(view);
                            break;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
