package com.appnext.core;

import android.content.Context;
import com.appnext.base.Appnext;
import com.appnext.base.C0472a;
import com.appnext.core.callbacks.OnAdClicked;
import com.appnext.core.callbacks.OnAdClosed;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnAdLoaded;
import com.appnext.core.callbacks.OnAdOpened;
import com.appnext.core.callbacks.OnECPMLoaded;
import com.tenor.android.core.constant.StringConstant;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.net.URLEncoder;
/* renamed from: com.appnext.core.Ad */
/* loaded from: classes-dex2jar.jar:com/appnext/core/Ad.class */
public abstract class AbstractC0501Ad {
    public static final String ORIENTATION_AUTO = "automatic";
    public static final String ORIENTATION_DEFAULT = "not_set";
    public static final String ORIENTATION_LANDSCAPE = "landscape";
    public static final String ORIENTATION_PORTRAIT = "portrait";

    /* renamed from: fq */
    public static boolean f1697fq = false;
    private WeakReference<OnAdOpened> adOpenedCallbackWR;
    private AbstractC0529c adRequest;
    private String cat;
    private WeakReference<OnAdClosed> closeCallbackWR;
    private int cnt;
    public Context context;
    private String mSpecificCategories;
    private int maxVideoLength;
    private int minVideoLength;
    private boolean mute;
    private WeakReference<OnAdClicked> onAdClickedWR;
    private WeakReference<OnAdError> onAdErrorWR;
    private WeakReference<OnAdLoaded> onAdLoadedWR;
    private String orientation;
    private String packageName;
    private String pbk;
    private String placementID;
    private String sessionId;
    public boolean setMute;

    public AbstractC0501Ad(final Context context, String str) {
        this.onAdClickedWR = null;
        this.onAdErrorWR = null;
        this.onAdLoadedWR = null;
        this.closeCallbackWR = null;
        this.adOpenedCallbackWR = null;
        this.placementID = "";
        this.cat = "";
        this.mSpecificCategories = "";
        this.pbk = "";
        this.cnt = 50;
        this.maxVideoLength = 0;
        this.minVideoLength = 0;
        this.setMute = false;
        this.mute = false;
        this.orientation = ORIENTATION_DEFAULT;
        this.sessionId = "";
        this.packageName = "";
        if (context != null) {
            if (str == null) {
                throw new IllegalArgumentException("placementID cannot be null");
            }
            this.context = context;
            setPlacementID(str);
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.Ad.1
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC0501Ad.this.setSessionId(C0551g.m42371h(context));
                }
            });
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.Ad.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Appnext.init(context);
                    } catch (Throwable th) {
                    }
                }
            });
            return;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public AbstractC0501Ad(AbstractC0501Ad abstractC0501Ad) {
        this.onAdClickedWR = null;
        this.onAdErrorWR = null;
        this.onAdLoadedWR = null;
        this.closeCallbackWR = null;
        this.adOpenedCallbackWR = null;
        this.placementID = "";
        this.cat = "";
        this.mSpecificCategories = "";
        this.pbk = "";
        this.cnt = 50;
        this.maxVideoLength = 0;
        this.minVideoLength = 0;
        this.setMute = false;
        this.mute = false;
        this.orientation = ORIENTATION_DEFAULT;
        this.sessionId = "";
        this.packageName = "";
        try {
            this.context = abstractC0501Ad.context;
            setPlacementID(abstractC0501Ad.getPlacementID());
            setCategories(abstractC0501Ad.cat);
            setSpecificCategories(abstractC0501Ad.mSpecificCategories);
            setPostback(abstractC0501Ad.getPostback());
            setCount(abstractC0501Ad.getCount());
            setMinVideoLength(abstractC0501Ad.getMinVideoLength());
            setMaxVideoLength(abstractC0501Ad.getMaxVideoLength());
            setSessionId(abstractC0501Ad.getSessionId());
            this.onAdClickedWR = abstractC0501Ad.onAdClickedWR;
            this.onAdErrorWR = abstractC0501Ad.onAdErrorWR;
            this.onAdLoadedWR = abstractC0501Ad.onAdLoadedWR;
            this.closeCallbackWR = abstractC0501Ad.closeCallbackWR;
            this.adOpenedCallbackWR = abstractC0501Ad.adOpenedCallbackWR;
        } catch (Throwable th) {
            C0472a.m42577a("Ad$Ad", th);
        }
    }

    public void destroy() {
        this.context = null;
        this.onAdClickedWR = null;
        this.onAdErrorWR = null;
        this.onAdLoadedWR = null;
        this.closeCallbackWR = null;
        this.adOpenedCallbackWR = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        try {
            if (!getClass().isInstance(obj) && !obj.getClass().isInstance(this)) {
                return false;
            }
            return obj instanceof AbstractC0501Ad ? ((AbstractC0501Ad) obj).getPlacementID().equals(getPlacementID()) && ((AbstractC0501Ad) obj).getCategories().equals(getCategories()) && ((AbstractC0501Ad) obj).getSpecificCategories().equals(getSpecificCategories()) && ((AbstractC0501Ad) obj).getPostback().equals(getPostback()) && ((AbstractC0501Ad) obj).getMinVideoLength() == getMinVideoLength() && ((AbstractC0501Ad) obj).getMaxVideoLength() == getMaxVideoLength() && ((AbstractC0501Ad) obj).getCount() == getCount() : super.equals(obj);
        } catch (Throwable th) {
            return false;
        }
    }

    public abstract String getAUID();

    public AbstractC0529c getAdRequest() {
        return this.adRequest;
    }

    public String getCategories() {
        return this.cat;
    }

    public Context getContext() {
        return this.context;
    }

    public int getCount() {
        return this.cnt;
    }

    public abstract void getECPM(OnECPMLoaded onECPMLoaded);

    public int getMaxVideoLength() {
        return this.maxVideoLength;
    }

    public int getMinVideoLength() {
        return this.minVideoLength;
    }

    public boolean getMute() {
        return this.mute;
    }

    public OnAdClicked getOnAdClickedCallback() {
        OnAdClicked onAdClicked;
        WeakReference<OnAdClicked> weakReference = this.onAdClickedWR;
        if (weakReference == null || (onAdClicked = weakReference.get()) == null) {
            return null;
        }
        return onAdClicked;
    }

    public OnAdClosed getOnAdClosedCallback() {
        OnAdClosed onAdClosed;
        WeakReference<OnAdClosed> weakReference = this.closeCallbackWR;
        if (weakReference == null || (onAdClosed = weakReference.get()) == null) {
            return null;
        }
        return onAdClosed;
    }

    public OnAdError getOnAdErrorCallback() {
        OnAdError onAdError;
        WeakReference<OnAdError> weakReference = this.onAdErrorWR;
        if (weakReference == null || (onAdError = weakReference.get()) == null) {
            return null;
        }
        return onAdError;
    }

    public OnAdLoaded getOnAdLoadedCallback() {
        OnAdLoaded onAdLoaded;
        WeakReference<OnAdLoaded> weakReference = this.onAdLoadedWR;
        if (weakReference == null || (onAdLoaded = weakReference.get()) == null) {
            return null;
        }
        return onAdLoaded;
    }

    public OnAdOpened getOnAdOpenedCallback() {
        OnAdOpened onAdOpened;
        WeakReference<OnAdOpened> weakReference = this.adOpenedCallbackWR;
        if (weakReference == null || (onAdOpened = weakReference.get()) == null) {
            return null;
        }
        return onAdOpened;
    }

    public String getOrientation() {
        return this.orientation;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPlacementID() {
        return this.placementID;
    }

    public String getPostback() {
        return this.pbk;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public String getSpecificCategories() {
        return this.mSpecificCategories;
    }

    public abstract String getTID();

    public abstract String getVID();

    public int hashCode() {
        try {
            int hashCode = getPlacementID().hashCode();
            int hashCode2 = getCategories().hashCode();
            int hashCode3 = getSpecificCategories().hashCode();
            int hashCode4 = getPostback().hashCode();
            int count = getCount();
            return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + count) * 31) + getMinVideoLength()) * 31) + getMaxVideoLength();
        } catch (Throwable th) {
            return 31;
        }
    }

    public abstract boolean isAdLoaded();

    public abstract void loadAd();

    public void setAdRequest(AbstractC0529c abstractC0529c) {
        this.adRequest = abstractC0529c;
    }

    public void setCategories(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        String str3 = str2;
        try {
            if (str2.equals(URLDecoder.decode(str2, StringConstant.UTF8))) {
                str3 = URLEncoder.encode(str2, StringConstant.UTF8);
            }
        } catch (Throwable th) {
            str3 = "";
        }
        this.cat = str3;
    }

    public void setCount(int i) {
        this.cnt = i;
    }

    public void setMaxVideoLength(int i) {
        if (i >= 0) {
            if (i > 0 && getMinVideoLength() > 0 && i < getMinVideoLength()) {
                throw new IllegalArgumentException("Max Length cannot be lower than min length");
            }
            this.maxVideoLength = i;
            return;
        }
        throw new IllegalArgumentException("Max Length must be higher than 0");
    }

    public void setMinVideoLength(int i) {
        if (i >= 0) {
            if (i > 0 && getMaxVideoLength() > 0 && i > getMaxVideoLength()) {
                throw new IllegalArgumentException("Min Length cannot be higher than max length");
            }
            this.minVideoLength = i;
            return;
        }
        throw new IllegalArgumentException("Min Length must be higher than 0");
    }

    public void setMute(boolean z) {
        this.setMute = true;
        this.mute = z;
    }

    public void setOnAdClickedCallback(OnAdClicked onAdClicked) {
        if (onAdClicked != null) {
            this.onAdClickedWR = new WeakReference<>(onAdClicked);
        }
    }

    public void setOnAdClosedCallback(OnAdClosed onAdClosed) {
        if (onAdClosed != null) {
            this.closeCallbackWR = new WeakReference<>(onAdClosed);
        }
    }

    public void setOnAdErrorCallback(OnAdError onAdError) {
        if (onAdError != null) {
            this.onAdErrorWR = new WeakReference<>(onAdError);
        }
    }

    public void setOnAdLoadedCallback(OnAdLoaded onAdLoaded) {
        if (onAdLoaded != null) {
            this.onAdLoadedWR = new WeakReference<>(onAdLoaded);
        }
    }

    public void setOnAdOpenedCallback(OnAdOpened onAdOpened) {
        if (onAdOpened != null) {
            this.adOpenedCallbackWR = new WeakReference<>(onAdOpened);
        }
    }

    public void setOrientation(String str) {
        if (str != null) {
            if (!str.equals(ORIENTATION_AUTO) && !str.equals(ORIENTATION_DEFAULT) && !str.equals("landscape") && !str.equals("portrait")) {
                throw new IllegalArgumentException("Wrong orientation type");
            }
            this.orientation = str;
            return;
        }
        throw new IllegalArgumentException("orientation type");
    }

    public void setPackageName(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        String str3 = str2;
        try {
            if (str2.equals(URLDecoder.decode(str2, StringConstant.UTF8))) {
                str3 = URLEncoder.encode(str2, StringConstant.UTF8);
            }
        } catch (Throwable th) {
            str3 = "";
        }
        this.packageName = str3;
    }

    public void setPlacementID(String str) {
        this.placementID = str;
    }

    public void setPostback(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        String str3 = str2;
        try {
            if (str2.equals(URLDecoder.decode(str2, StringConstant.UTF8))) {
                str3 = URLEncoder.encode(str2, StringConstant.UTF8);
            }
        } catch (Throwable th) {
            str3 = "";
        }
        this.pbk = str3;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public void setSpecificCategories(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        try {
            if (str2.equals(URLDecoder.decode(str2, StringConstant.UTF8))) {
                this.mSpecificCategories = URLEncoder.encode(str2, StringConstant.UTF8);
            }
        } catch (Throwable th) {
            this.mSpecificCategories = "";
        }
        this.mSpecificCategories = str2;
    }

    public abstract void showAd();
}
