package com.revenuecat.purchases.common.caching;

import android.content.SharedPreferences;
import com.revenuecat.purchases.Offerings;
import com.revenuecat.purchases.PurchaserInfo;
import com.revenuecat.purchases.common.DateProvider;
import com.revenuecat.purchases.common.DefaultDateProvider;
import com.revenuecat.purchases.common.FactoriesKt;
import com.revenuecat.purchases.common.LogUtilsKt;
import com.revenuecat.purchases.common.PurchaseWrapper;
import com.revenuecat.purchases.common.UtilsKt;
import com.revenuecat.purchases.common.attribution.AttributionNetwork;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKt;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.g;
import kotlin.h;
import kotlin.r;
import kotlin.s.b0;
import kotlin.s.h0;
import kotlin.w.c.k;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/caching/DeviceCache.class */
public final class DeviceCache {
    private final String apiKey;
    private final g appUserIDCacheKey$delegate;
    private final String attributionCacheKey;
    private final DateProvider dateProvider;
    private final g legacyAppUserIDCacheKey$delegate;
    private final InMemoryCachedObject<Offerings> offeringsCachedObject;
    private final SharedPreferences preferences;
    private final g purchaserInfoCachesLastUpdatedCacheBaseKey$delegate;
    private final g subscriberAttributesCacheKey$delegate;
    private final g tokensCacheKey$delegate;

    public DeviceCache(SharedPreferences sharedPreferences, String str, InMemoryCachedObject<Offerings> inMemoryCachedObject, DateProvider dateProvider) {
        k.f(sharedPreferences, "preferences");
        k.f(str, "apiKey");
        k.f(inMemoryCachedObject, "offeringsCachedObject");
        k.f(dateProvider, "dateProvider");
        this.preferences = sharedPreferences;
        this.apiKey = str;
        this.offeringsCachedObject = inMemoryCachedObject;
        this.dateProvider = dateProvider;
        this.legacyAppUserIDCacheKey$delegate = h.a(new legacyAppUserIDCacheKey.2(this));
        this.appUserIDCacheKey$delegate = h.a(new appUserIDCacheKey.2(this));
        this.attributionCacheKey = "com.revenuecat.purchases..attribution";
        this.tokensCacheKey$delegate = h.a(new tokensCacheKey.2(this));
        this.subscriberAttributesCacheKey$delegate = h.a(new subscriberAttributesCacheKey.2(this));
        this.purchaserInfoCachesLastUpdatedCacheBaseKey$delegate = h.a(new purchaserInfoCachesLastUpdatedCacheBaseKey.2(this));
    }

    public /* synthetic */ DeviceCache(SharedPreferences sharedPreferences, String str, InMemoryCachedObject inMemoryCachedObject, DateProvider dateProvider, int i, kotlin.w.c.g gVar) {
        this(sharedPreferences, str, (i & 4) != 0 ? new InMemoryCachedObject(null, null, 3, null) : inMemoryCachedObject, (i & 8) != 0 ? new DefaultDateProvider() : dateProvider);
    }

    private final SharedPreferences.Editor clearAppUserID(SharedPreferences.Editor editor) {
        editor.remove(getAppUserIDCacheKey());
        editor.remove(getLegacyAppUserIDCacheKey());
        return editor;
    }

    private final void clearOfferingsCache() {
        this.offeringsCachedObject.clearCache();
    }

    private final SharedPreferences.Editor clearPurchaserInfo(SharedPreferences.Editor editor) {
        String cachedAppUserID = getCachedAppUserID();
        if (cachedAppUserID != null) {
            editor.remove(purchaserInfoCacheKey(cachedAppUserID));
        }
        String legacyCachedAppUserID = getLegacyCachedAppUserID();
        if (legacyCachedAppUserID != null) {
            editor.remove(purchaserInfoCacheKey(legacyCachedAppUserID));
        }
        return editor;
    }

    private final SharedPreferences.Editor clearPurchaserInfoCacheTimestamp(SharedPreferences.Editor editor, String str) {
        editor.remove(purchaserInfoLastUpdatedCacheKey(str));
        return editor;
    }

    private final String getAttributionDataCacheKey(String str, AttributionNetwork attributionNetwork) {
        return this.attributionCacheKey + '.' + str + '.' + attributionNetwork;
    }

    private final String getPurchaserInfoCachesLastUpdatedCacheBaseKey() {
        return (String) this.purchaserInfoCachesLastUpdatedCacheBaseKey$delegate.getValue();
    }

    private final boolean isStale(Date date, boolean z) {
        boolean z2 = true;
        if (date != null) {
            LogUtilsKt.debugLog("Checking if cache is stale AppInBackground " + z);
            z2 = this.dateProvider.getNow().getTime() - date.getTime() >= ((long) (z ? 86400000 : 300000));
        }
        return z2;
    }

    private final void setSavedTokenHashes(Set<String> set) {
        synchronized (this) {
            LogUtilsKt.debugLog("[QueryPurchases] Saving tokens " + set);
            this.preferences.edit().putStringSet(getTokensCacheKey(), set).apply();
        }
    }

    public final void addSuccessfullyPostedToken(String str) {
        synchronized (this) {
            k.f(str, "token");
            LogUtilsKt.debugLog("[QueryPurchases] Saving token " + str + " with hash " + UtilsKt.sha1(str));
            Set<String> previouslySentHashedTokens = getPreviouslySentHashedTokens();
            StringBuilder sb = new StringBuilder();
            sb.append("[QueryPurchases] Tokens in cache before saving ");
            sb.append(previouslySentHashedTokens);
            LogUtilsKt.debugLog(sb.toString());
            Set<String> k0 = kotlin.s.k.k0(previouslySentHashedTokens);
            k0.add(UtilsKt.sha1(str));
            r rVar = r.a;
            setSavedTokenHashes(k0);
        }
    }

    public final void cacheAppUserID(String str) {
        synchronized (this) {
            k.f(str, "appUserID");
            this.preferences.edit().putString(getAppUserIDCacheKey(), str).apply();
        }
    }

    public final void cacheAttributionData(AttributionNetwork attributionNetwork, String str, String str2) {
        synchronized (this) {
            k.f(attributionNetwork, "network");
            k.f(str, "userId");
            k.f(str2, "cacheValue");
            this.preferences.edit().putString(getAttributionDataCacheKey(str, attributionNetwork), str2).apply();
        }
    }

    public final void cacheOfferings(Offerings offerings) {
        synchronized (this) {
            k.f(offerings, "offerings");
            this.offeringsCachedObject.cacheInstance(offerings);
        }
    }

    public final void cachePurchaserInfo(String str, PurchaserInfo purchaserInfo) {
        synchronized (this) {
            k.f(str, "appUserID");
            k.f(purchaserInfo, "info");
            JSONObject jsonObject = purchaserInfo.getJsonObject();
            jsonObject.put("schema_version", 3);
            this.preferences.edit().putString(purchaserInfoCacheKey(str), jsonObject.toString()).apply();
            setPurchaserInfoCacheTimestampToNow(str);
        }
    }

    public final void cleanPreviouslySentTokens(Set<String> set, Set<String> set2) {
        synchronized (this) {
            k.f(set, "activeSubsHashedTokens");
            k.f(set2, "unconsumedInAppsHashedTokens");
            LogUtilsKt.debugLog("[QueryPurchases] Cleaning previously sent tokens");
            setSavedTokenHashes(kotlin.s.k.N(h0.f(set, set2), getPreviouslySentHashedTokens()));
        }
    }

    public final void clearCachesForAppUserID(String str) {
        synchronized (this) {
            k.f(str, "appUserID");
            SharedPreferences.Editor edit = this.preferences.edit();
            k.e(edit, "preferences.edit()");
            clearPurchaserInfoCacheTimestamp(clearAppUserID(clearPurchaserInfo(edit)), str).apply();
            clearOfferingsCache();
        }
    }

    public final void clearLatestAttributionData(String str) {
        synchronized (this) {
            k.f(str, "userId");
            SharedPreferences.Editor edit = this.preferences.edit();
            for (AttributionNetwork attributionNetwork : AttributionNetwork.values()) {
                edit.remove(getAttributionDataCacheKey(str, attributionNetwork));
            }
            edit.apply();
        }
    }

    public final void clearOfferingsCacheTimestamp() {
        synchronized (this) {
            this.offeringsCachedObject.clearCacheTimestamp();
        }
    }

    public final void clearPurchaserInfoCache(String str) {
        synchronized (this) {
            k.f(str, "appUserID");
            SharedPreferences.Editor edit = this.preferences.edit();
            k.e(edit, "editor");
            clearPurchaserInfoCacheTimestamp(edit, str);
            edit.remove(purchaserInfoCacheKey(str));
            edit.apply();
        }
    }

    public final void clearPurchaserInfoCacheTimestamp(String str) {
        synchronized (this) {
            k.f(str, "appUserID");
            SharedPreferences.Editor edit = this.preferences.edit();
            k.e(edit, "preferences.edit()");
            clearPurchaserInfoCacheTimestamp(edit, str).apply();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x007a, code lost:
        if (r7 != null) goto L_0x0084;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Set<java.lang.String> findKeysThatStartWith(java.lang.String r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "cacheKey"
            kotlin.w.c.k.f(r0, r1)
            r0 = r6
            android.content.SharedPreferences r0 = r0.preferences
            java.util.Map r0 = r0.getAll()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0080
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r8
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r10 = r0
        L_0x002a:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0072
            r0 = r10
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r8 = r0
            r0 = r8
            java.lang.Object r0 = r0.getKey()
            java.lang.String r0 = (java.lang.String) r0
            r11 = r0
            r0 = r11
            java.lang.String r1 = "it"
            kotlin.w.c.k.e(r0, r1)
            r0 = r11
            r1 = r7
            r2 = 0
            r3 = 2
            r4 = 0
            boolean r0 = kotlin.c0.m.D(r0, r1, r2, r3, r4)
            if (r0 == 0) goto L_0x002a
            r0 = r9
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            r2 = r8
            java.lang.Object r2 = r2.getValue()
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x002a
        L_0x0072:
            r0 = r9
            java.util.Set r0 = r0.keySet()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0080
            goto L_0x0084
        L_0x0080:
            java.util.Set r0 = kotlin.s.h0.b()
            r7 = r0
        L_0x0084:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.common.caching.DeviceCache.findKeysThatStartWith(java.lang.String):java.util.Set");
    }

    public final List<PurchaseWrapper> getActivePurchasesNotInCache(Map<String, PurchaseWrapper> map, Map<String, PurchaseWrapper> map2) {
        List<PurchaseWrapper> h0;
        synchronized (this) {
            k.f(map, "activeSubsByTheirHashedToken");
            k.f(map2, "activeInAppsByTheirHashedToken");
            h0 = kotlin.s.k.h0(b0.i(b0.l(map, map2), getPreviouslySentHashedTokens()).values());
        }
        return h0;
    }

    public final String getAppUserIDCacheKey() {
        return (String) this.appUserIDCacheKey$delegate.getValue();
    }

    public final String getAttributionCacheKey() {
        return this.attributionCacheKey;
    }

    public final String getCachedAppUserID() {
        String string;
        synchronized (this) {
            string = this.preferences.getString(getAppUserIDCacheKey(), null);
        }
        return string;
    }

    public final String getCachedAttributionData(AttributionNetwork attributionNetwork, String str) {
        String string;
        synchronized (this) {
            k.f(attributionNetwork, "network");
            k.f(str, "userId");
            string = this.preferences.getString(getAttributionDataCacheKey(str, attributionNetwork), null);
        }
        return string;
    }

    public final Offerings getCachedOfferings() {
        return this.offeringsCachedObject.getCachedInstance();
    }

    public final PurchaserInfo getCachedPurchaserInfo(String str) {
        k.f(str, "appUserID");
        SharedPreferences sharedPreferences = this.preferences;
        String purchaserInfoCacheKey = purchaserInfoCacheKey(str);
        PurchaserInfo purchaserInfo = null;
        String string = sharedPreferences.getString(purchaserInfoCacheKey, null);
        if (string == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(string);
        if (jSONObject.optInt("schema_version") == 3) {
            purchaserInfo = FactoriesKt.buildPurchaserInfo(jSONObject);
        }
        return purchaserInfo;
    }

    public final JSONObject getJSONObjectOrNull(String str) {
        k.f(str, SubscriberAttributeKt.JSON_NAME_KEY);
        JSONObject jSONObject = null;
        String string = this.preferences.getString(str, null);
        if (string != null) {
            jSONObject = new JSONObject(string);
        }
        return jSONObject;
    }

    public final String getLegacyAppUserIDCacheKey() {
        return (String) this.legacyAppUserIDCacheKey$delegate.getValue();
    }

    public final String getLegacyCachedAppUserID() {
        String string;
        synchronized (this) {
            string = this.preferences.getString(getLegacyAppUserIDCacheKey(), null);
        }
        return string;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        if (r5 != null) goto L_0x0027;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Set<java.lang.String> getPreviouslySentHashedTokens() {
        /*
            r4 = this;
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            android.content.SharedPreferences r0 = r0.preferences
            r1 = r4
            java.lang.String r1 = r1.getTokensCacheKey()
            java.util.Set r2 = kotlin.s.h0.b()
            java.util.Set r0 = r0.getStringSet(r1, r2)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0023
            r0 = r5
            java.util.Set r0 = kotlin.s.k.l0(r0)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0023
            goto L_0x0027
        L_0x0023:
            java.util.Set r0 = kotlin.s.h0.b()
            r5 = r0
        L_0x0027:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "[QueryPurchases] Tokens already posted: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            com.revenuecat.purchases.common.LogUtilsKt.debugLog(r0)
            r0 = r4
            monitor-exit(r0)
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.common.caching.DeviceCache.getPreviouslySentHashedTokens():java.util.Set");
    }

    public final Date getPurchaserInfoCachesLastUpdated(String str) {
        Date date;
        synchronized (this) {
            k.f(str, "appUserID");
            date = new Date(this.preferences.getLong(purchaserInfoLastUpdatedCacheKey(str), 0L));
        }
        return date;
    }

    public final String getSubscriberAttributesCacheKey() {
        return (String) this.subscriberAttributesCacheKey$delegate.getValue();
    }

    public final String getTokensCacheKey() {
        return (String) this.tokensCacheKey$delegate.getValue();
    }

    public final boolean isOfferingsCacheStale(boolean z) {
        boolean isStale;
        synchronized (this) {
            isStale = isStale(this.offeringsCachedObject.getLastUpdatedAt$common_release(), z);
        }
        return isStale;
    }

    public final boolean isPurchaserInfoCacheStale(String str, boolean z) {
        boolean isStale;
        synchronized (this) {
            k.f(str, "appUserID");
            isStale = isStale(getPurchaserInfoCachesLastUpdated(str), z);
        }
        return isStale;
    }

    public final String newKey(String str) {
        k.f(str, SubscriberAttributeKt.JSON_NAME_KEY);
        return "com.revenuecat.purchases." + this.apiKey + '.' + str;
    }

    public final String purchaserInfoCacheKey(String str) {
        k.f(str, "appUserID");
        return getLegacyAppUserIDCacheKey() + '.' + str;
    }

    public final String purchaserInfoLastUpdatedCacheKey(String str) {
        k.f(str, "appUserID");
        return getPurchaserInfoCachesLastUpdatedCacheBaseKey() + '.' + str;
    }

    public final void putString(String str, String str2) {
        k.f(str, "cacheKey");
        k.f(str2, "value");
        this.preferences.edit().putString(str, str2).apply();
    }

    public final void remove(String str) {
        k.f(str, "cacheKey");
        this.preferences.edit().remove(str).apply();
    }

    public final void setOfferingsCacheTimestampToNow() {
        synchronized (this) {
            this.offeringsCachedObject.updateCacheTimestamp(new Date());
        }
    }

    public final void setPurchaserInfoCacheTimestamp(String str, Date date) {
        synchronized (this) {
            k.f(str, "appUserID");
            k.f(date, "date");
            this.preferences.edit().putLong(purchaserInfoLastUpdatedCacheKey(str), date.getTime()).apply();
        }
    }

    public final void setPurchaserInfoCacheTimestampToNow(String str) {
        synchronized (this) {
            k.f(str, "appUserID");
            setPurchaserInfoCacheTimestamp(str, new Date());
        }
    }
}
