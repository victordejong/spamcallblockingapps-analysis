package com.verizon.ads;

import com.verizon.ads.events.Events;
import com.verizon.ads.utils.TextUtils;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdSession.class */
public class AdSession extends DataStore {
    public static final String AD_SESSION_CHANGE_EVENT_ID = "com.verizon.ads.adsession.change";

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35263a = Logger.getInstance(AdSession.class);

    /* renamed from: b  reason: collision with root package name */
    private final long f35264b = System.currentTimeMillis();

    /* renamed from: c  reason: collision with root package name */
    private final String f35265c = Integer.toString(hashCode());

    /* renamed from: d  reason: collision with root package name */
    private AdAdapter f35266d;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdSession$AdSessionChangeEvent.class */
    public static final class AdSessionChangeEvent extends AdSessionEvent {
        public final String key;
        public final Object previousValue;
        public final Object value;

        AdSessionChangeEvent(AdSession adSession, String str, Object obj, Object obj2) {
            super(adSession);
            this.key = str;
            this.value = obj;
            this.previousValue = obj2;
        }

        @Override // com.verizon.ads.AdSessionEvent
        public final String toString() {
            return "AdSessionChangeEvent{key: " + this.key + ", value: " + this.value + ", previous value: " + this.previousValue + '}';
        }
    }

    public AdSession() {
        if (Logger.isLogLevelEnabled(3)) {
            f35263a.d(String.format("Ad session created: %s", getSessionId()));
        }
    }

    public AdAdapter getAdAdapter() {
        return this.f35266d;
    }

    public long getCreationTime() {
        return this.f35264b;
    }

    public String getSessionId() {
        return this.f35265c;
    }

    @Override // com.verizon.ads.DataStore
    public Object put(String str, Object obj) {
        Object put = super.put(str, obj);
        if (!TextUtils.isEmpty(str) && obj != null && !obj.equals(put)) {
            Events.sendEvent(AD_SESSION_CHANGE_EVENT_ID, new AdSessionChangeEvent(this, str, obj, put));
        }
        return put;
    }

    public void release() {
        clear();
        if (Logger.isLogLevelEnabled(3)) {
            f35263a.d(String.format("Ad session released: %s", getSessionId()));
        }
    }

    @Override // com.verizon.ads.DataStore
    public Object remove(String str) {
        Object remove = super.remove(str);
        if (remove != null) {
            Events.sendEvent(AD_SESSION_CHANGE_EVENT_ID, new AdSessionChangeEvent(this, str, null, remove));
        }
        return remove;
    }

    public void setAdAdapter(AdAdapter adAdapter) {
        this.f35266d = adAdapter;
    }

    @Override // com.verizon.ads.DataStore
    public String toString() {
        return String.format("AdSession{id: %s, creation time: %d, adAdapter: %s}", getSessionId(), Long.valueOf(getCreationTime()), this.f35266d);
    }

    public String toStringLongDescription() {
        return String.format("%s, contents\n%s", this, super.toString());
    }
}
