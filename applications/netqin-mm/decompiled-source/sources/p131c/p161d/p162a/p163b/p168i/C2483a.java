package p131c.p161d.p162a.p163b.p168i;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.ads.mediation.mopub.MoPubMediationAdapter;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.common.SdkConfiguration;
import com.mopub.common.SdkInitializationListener;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubRewardedVideoListener;
import com.mopub.mobileads.MoPubRewardedVideoManager;
import com.mopub.mobileads.MoPubRewardedVideos;
import com.mopub.mobileads.dfp.adapters.MoPubAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: c.d.a.b.i.a */
/* loaded from: classes-dex2jar.jar:c/d/a/b/i/a.class */
public class C2483a implements MoPubRewardedVideoListener {

    /* renamed from: b */
    public static C2483a f9464b;

    /* renamed from: c */
    public static boolean f9465c;

    /* renamed from: d */
    public static HashMap<String, WeakReference<MoPubRewardedVideoListener>> f9466d = new HashMap<>();

    /* renamed from: a */
    public ArrayList<SdkInitializationListener> f9467a = new ArrayList<>();

    /* renamed from: c.d.a.b.i.a$a */
    /* loaded from: classes-dex2jar.jar:c/d/a/b/i/a$a.class */
    public class C2484a implements SdkInitializationListener {
        public C2484a() {
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            MoPubLog.m4582d("MoPub SDK initialized.");
            MoPubRewardedVideos.setRewardedVideoListener(C2483a.this);
            Iterator it = C2483a.this.f9467a.iterator();
            while (it.hasNext()) {
                ((SdkInitializationListener) it.next()).onInitializationFinished();
            }
            C2483a.this.f9467a.clear();
            boolean unused = C2483a.f9465c = false;
        }
    }

    /* renamed from: c.d.a.b.i.a$b */
    /* loaded from: classes-dex2jar.jar:c/d/a/b/i/a$b.class */
    public class C2485b implements SdkInitializationListener {

        /* renamed from: a */
        public final /* synthetic */ String f9469a;

        /* renamed from: b */
        public final /* synthetic */ MoPubRewardedVideoManager.RequestParameters f9470b;

        public C2485b(C2483a aVar, String str, MoPubRewardedVideoManager.RequestParameters requestParameters) {
            this.f9469a = str;
            this.f9470b = requestParameters;
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            MoPubRewardedVideos.loadRewardedVideo(this.f9469a, this.f9470b, new MediationSettings[0]);
        }
    }

    /* renamed from: a */
    public static C2483a m29673a() {
        if (f9464b == null) {
            f9464b = new C2483a();
        }
        return f9464b;
    }

    /* renamed from: a */
    public static String m29668a(MediationAdConfiguration mediationAdConfiguration, boolean z) {
        String str = MoPubAdapter.MOPUB_NATIVE_CEVENT_VERSION;
        if (!z) {
            if (m29669a(mediationAdConfiguration)) {
                str = "";
            }
            return str;
        } else if (!MoPub.canCollectPersonalInformation()) {
            return "";
        } else {
            if (!m29669a(mediationAdConfiguration)) {
                str = "";
            }
            return str;
        }
    }

    /* renamed from: a */
    public static boolean m29669a(MediationAdConfiguration mediationAdConfiguration) {
        return mediationAdConfiguration.m17941c() != null;
    }

    /* renamed from: a */
    public void m29672a(Context context, SdkConfiguration sdkConfiguration, SdkInitializationListener sdkInitializationListener) {
        if (MoPub.isSdkInitialized()) {
            MoPubRewardedVideos.setRewardedVideoListener(this);
            sdkInitializationListener.onInitializationFinished();
            return;
        }
        this.f9467a.add(sdkInitializationListener);
        if (!f9465c) {
            f9465c = true;
            MoPub.initializeSdk(context, sdkConfiguration, new C2484a());
        }
    }

    /* renamed from: a */
    public void m29671a(Context context, String str, MoPubRewardedVideoManager.RequestParameters requestParameters, MoPubRewardedVideoListener moPubRewardedVideoListener) {
        if (m29667a(str)) {
            String str2 = MoPubMediationAdapter.f21914e;
            Log.w(str2, "An ad has already been requested for the MoPub Ad Unit ID: " + str);
            moPubRewardedVideoListener.onRewardedVideoLoadFailure(str, MoPubErrorCode.CANCELLED);
            return;
        }
        f9466d.put(str, new WeakReference<>(moPubRewardedVideoListener));
        m29672a(context, new SdkConfiguration.Builder(str).build(), new C2485b(this, str, requestParameters));
    }

    /* renamed from: a */
    public void m29666a(String str, MoPubRewardedVideoListener moPubRewardedVideoListener) {
        if (m29667a(str) && moPubRewardedVideoListener != null && moPubRewardedVideoListener.equals(f9466d.get(str).get())) {
            f9466d.remove(str);
        }
    }

    /* renamed from: a */
    public final boolean m29667a(String str) {
        return !TextUtils.isEmpty(str) && f9466d.containsKey(str) && f9466d.get(str).get() != null;
    }

    /* renamed from: b */
    public boolean m29664b(String str) {
        if (TextUtils.isEmpty(str) || !MoPubRewardedVideos.hasRewardedVideo(str)) {
            Log.e(MoPubMediationAdapter.f21914e, "Failed to show a MoPub rewarded video. Either the video is not ready or the ad unit ID is empty.");
            f9466d.remove(str);
            return false;
        }
        Log.d(MoPubMediationAdapter.f21914e, "Showing a MoPub rewarded video.");
        MoPubRewardedVideos.showRewardedVideo(str);
        return true;
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoClicked(String str) {
        if (m29667a(str)) {
            f9466d.get(str).get().onRewardedVideoClicked(str);
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoClosed(String str) {
        if (m29667a(str)) {
            f9466d.get(str).get().onRewardedVideoClosed(str);
        }
        f9466d.remove(str);
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoCompleted(Set<String> set, MoPubReward moPubReward) {
        for (String str : set) {
            if (m29667a(str)) {
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                f9466d.get(str).get().onRewardedVideoCompleted(hashSet, moPubReward);
            }
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoLoadFailure(String str, MoPubErrorCode moPubErrorCode) {
        if (m29667a(str)) {
            f9466d.get(str).get().onRewardedVideoLoadFailure(str, moPubErrorCode);
        }
        f9466d.remove(str);
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoLoadSuccess(String str) {
        if (m29667a(str)) {
            f9466d.get(str).get().onRewardedVideoLoadSuccess(str);
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoPlaybackError(String str, MoPubErrorCode moPubErrorCode) {
        if (m29667a(str)) {
            f9466d.get(str).get().onRewardedVideoPlaybackError(str, moPubErrorCode);
        }
        f9466d.remove(str);
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoStarted(String str) {
        if (m29667a(str)) {
            f9466d.get(str).get().onRewardedVideoStarted(str);
        }
    }
}
