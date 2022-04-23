package com.aotter.net.trek.ads;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.aotter.net.trek.ads.cache.Cache;
import com.aotter.net.trek.ads.cache.LruCache;
import com.aotter.net.trek.ads.interfaces.InstreamVideoListener;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.common.CacheService;
import com.aotter.net.trek.common.Constants;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.util.Utils;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.model.VideoConfig;
import com.aotter.net.trek.network.VideoDownloader;
import com.aotter.net.trek.util.CollectionUtils;
import com.aotter.net.trek.util.TrekLog;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/AdCache.class */
public class AdCache {

    /* renamed from: a */
    public static Context f1149a;

    /* renamed from: b */
    public static Cache<String, NativeAd> f1150b = new LruCache();

    /* renamed from: c */
    public static final Cache<String, ArrayList<NativeAd>> f1151c = new LruCache();

    /* renamed from: d */
    public static AdCache f1152d;

    /* renamed from: e */
    public MFTCApiClient.APICallFinishedListener f1153e = new C1665d(this);

    public AdCache(Context context) {
        f1149a = context;
    }

    @Deprecated
    /* renamed from: a */
    private int m36595a(String str, String str2, HashMap<String, ArrayList<NativeAd>> hashMap) {
        if (hashMap == null || hashMap.size() <= 0) {
            return 0;
        }
        return m36590b(str, str2, hashMap);
    }

    /* renamed from: a */
    public static AdCache m36602a(Context context) {
        AdCache adCache = f1152d;
        AdCache adCache2 = adCache;
        if (adCache == null) {
            synchronized (AdCache.class) {
                try {
                    AdCache adCache3 = f1152d;
                    adCache2 = adCache3;
                    if (adCache3 == null) {
                        adCache2 = new AdCache(context);
                        f1152d = adCache2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return adCache2;
    }

    /* renamed from: a */
    public static NativeAd m36597a(String str, String str2, String str3, boolean z) {
        synchronized (AdCache.class) {
            try {
                String RenderCacheKey = Utils.RenderCacheKey(str, str2, str3, z);
                ArrayList<NativeAd> arrayList = f1151c.get(RenderCacheKey);
                if (CollectionUtils.isNullOrEmpty(arrayList)) {
                    m36591b(str, str2, str3, z);
                    return null;
                }
                if (arrayList.size() < 2) {
                    m36591b(str, str2, str3, z);
                }
                NativeAd nativeAd = arrayList.get(0);
                arrayList.remove(0);
                f1151c.put(RenderCacheKey, arrayList);
                if (nativeAd.getValidUntil() != null && (nativeAd.getValidUntil() == null || System.currentTimeMillis() >= nativeAd.getValidUntil().longValue())) {
                    return null;
                }
                TrekLog.m36319d("[TrekCache] response ad uid= " + nativeAd.getUnitInstanceId());
                if (!CollectionUtils.isNullOrEmpty(arrayList)) {
                    Iterator<NativeAd> it = arrayList.iterator();
                    while (it.hasNext()) {
                        NativeAd next = it.next();
                        TrekLog.m36319d("[TrekCache] cachepool uid= " + next.getUnitInstanceId());
                    }
                } else {
                    TrekLog.m36319d("[TrekCache] cachepool empty ");
                }
                return nativeAd;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m36599a(String str) {
    }

    /* renamed from: a */
    public static void m36598a(String str, String str2, NativeAd nativeAd, String str3, boolean z) {
        synchronized (AdCache.class) {
            try {
                String RenderCacheKey = Utils.RenderCacheKey(str, str2, str3, z);
                ArrayList<NativeAd> arrayList = f1151c.get(RenderCacheKey);
                ArrayList<NativeAd> arrayList2 = arrayList;
                if (CollectionUtils.isNullOrEmpty(arrayList)) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(nativeAd);
                f1151c.put(RenderCacheKey, arrayList2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m36596a(String str, String str2, ArrayList<NativeAd> arrayList, InstreamVideoListener instreamVideoListener, boolean z) {
        synchronized (AdCache.class) {
            try {
                Iterator<NativeAd> it = arrayList.iterator();
                while (it.hasNext()) {
                    NativeAd next = it.next();
                    if (CollectionUtils.isNullOrEmpty(next.getAdCategories())) {
                        m36598a(str, str2, next, (String) null, z);
                    } else {
                        for (String str3 : next.getAdCategories()) {
                            m36598a(str, str2, next, str3, z);
                        }
                    }
                }
                if (TextUtils.equals(str, Constants.AD_TYPE_NATIVE_VIDEO)) {
                    m36593a(arrayList, instreamVideoListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private void m36594a(ArrayList<NativeAd> arrayList) {
        String str = "";
        try {
            Iterator<NativeAd> it = arrayList.iterator();
            String str2 = "";
            while (it.hasNext()) {
                NativeAd next = it.next();
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(next.getAdUUID());
                sb.append(",");
                str2 = sb.toString();
            }
            str = str2;
            str = str2.substring(0, str2.length() - 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (f1149a != null && !TextUtils.isEmpty(str)) {
            MFTCApiClient.getSharedInstance(f1149a).activeAd(str, this.f1153e);
            MFTCApiClient.getSharedInstance(f1149a).activeHouseAd(str, this.f1153e);
        }
    }

    /* renamed from: a */
    public static void m36593a(ArrayList<NativeAd> arrayList, InstreamVideoListener instreamVideoListener) {
        Iterator<NativeAd> it = arrayList.iterator();
        while (it.hasNext()) {
            NativeAd next = it.next();
            VideoConfig videoConfig = new VideoConfig();
            videoConfig.setuID(next.getSrc().getVideoId());
            videoConfig.setNetworkMediaFileUrl(next.getSrc().getDirectDownloadLink());
            C1663c cVar = new C1663c(videoConfig, instreamVideoListener);
            if (!new File(CacheService.getFilePathDiskCache(next.getSrc().getVideoId())).exists()) {
                VideoDownloader.cache(videoConfig.getuID(), videoConfig.getNetworkMediaFileUrl(), cVar);
            }
        }
    }

    @Deprecated
    /* renamed from: b */
    private int m36590b(String str, String str2, HashMap<String, ArrayList<NativeAd>> hashMap) {
        ArrayList<NativeAd> arrayList;
        if (!hashMap.containsKey(str2) || (arrayList = hashMap.get(str2)) == null || arrayList.size() <= 0) {
            return 0;
        }
        return arrayList.size();
    }

    /* renamed from: b */
    public static void m36591b(String str, String str2, String str3, boolean z) {
        String RenderPayloadJson = Utils.RenderPayloadJson(str, str2, str3, 4);
        C1661a aVar = new C1661a(str2, z, str);
        MFTCApiClient sharedInstance = MFTCApiClient.getSharedInstance(f1149a);
        if (z) {
            sharedInstance.getMFTCHouseAd(RenderPayloadJson, aVar);
        } else {
            sharedInstance.getMFTCAd(RenderPayloadJson, aVar);
        }
    }

    /* renamed from: b */
    public static boolean m36592b(@NonNull VideoConfig videoConfig) {
        Preconditions.checkNotNull(videoConfig, "VideoConfig cannot be null");
        String str = videoConfig.getuID();
        if (!CacheService.containsKeyDiskCache(str)) {
            return false;
        }
        videoConfig.setDiskMediaFileUrl(CacheService.getFilePathDiskCache(str));
        return true;
    }

    @Deprecated
    /* renamed from: c */
    private NativeAd m36589c(String str, String str2, HashMap<String, ArrayList<NativeAd>> hashMap) {
        return null;
    }

    @Deprecated
    public static void checkCacheState() {
    }

    public static void clear() {
    }

    public static void clear(String str) {
    }

    @Deprecated
    /* renamed from: d */
    private NativeAd m36588d(String str, String str2, HashMap<String, ArrayList<NativeAd>> hashMap) {
        if (!hashMap.containsKey(str2)) {
            return null;
        }
        ArrayList<NativeAd> arrayList = hashMap.get(str2);
        if (arrayList == null || arrayList.size() <= 0) {
            hashMap.remove(str2);
            return null;
        }
        NativeAd nativeAd = arrayList.get(0);
        arrayList.remove(0);
        return nativeAd;
    }

    public static Cache<String, NativeAd> getImpCache() {
        if (f1150b == null) {
            f1150b = new LruCache();
        }
        return f1150b;
    }

    @Deprecated
    public int checkCacheCount(String str, String str2) {
        return 0;
    }

    @Deprecated
    public NativeAd getCacheAD(@NonNull String str, @NonNull String str2) {
        return null;
    }

    @Deprecated
    public void setNativeCache(@NonNull String str, @NonNull String str2, ArrayList<NativeAd> arrayList, InstreamVideoListener instreamVideoListener) {
    }
}
