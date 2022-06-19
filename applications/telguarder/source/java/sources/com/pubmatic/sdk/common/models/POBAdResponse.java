package com.pubmatic.sdk.common.models;

import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBBidsProvider;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBAdResponse.class */
public class POBAdResponse<T extends POBAdDescriptor> implements POBBidsProvider {

    /* renamed from: a */
    private List<T> f423a;

    /* renamed from: b */
    private List<T> f424b;

    /* renamed from: c */
    private List<T> f425c;

    /* renamed from: d */
    private T f426d;

    /* renamed from: e */
    private String f427e;

    /* renamed from: f */
    private String f428f;

    /* renamed from: g */
    private int f429g;

    /* renamed from: h */
    private JSONObject f430h;

    /* renamed from: i */
    private boolean f431i;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBAdResponse$Builder.class */
    public static class Builder<T extends POBAdDescriptor> {

        /* renamed from: a */
        private List<T> f432a;

        /* renamed from: b */
        private List<T> f433b;

        /* renamed from: c */
        private List<T> f434c;

        /* renamed from: d */
        private T f435d;

        /* renamed from: e */
        private String f436e;

        /* renamed from: f */
        private String f437f;

        /* renamed from: g */
        private int f438g;

        /* renamed from: h */
        private JSONObject f439h;

        /* renamed from: i */
        private boolean f440i;

        private Builder() {
            this.f432a = new ArrayList();
        }

        public Builder(POBAdResponse<T> pOBAdResponse) {
            this.f432a = ((POBAdResponse) pOBAdResponse).f423a;
            this.f433b = ((POBAdResponse) pOBAdResponse).f424b;
            this.f434c = ((POBAdResponse) pOBAdResponse).f425c;
            this.f435d = (T) ((POBAdResponse) pOBAdResponse).f426d;
            this.f436e = ((POBAdResponse) pOBAdResponse).f427e;
            this.f437f = ((POBAdResponse) pOBAdResponse).f428f;
            this.f438g = ((POBAdResponse) pOBAdResponse).f429g;
            this.f439h = ((POBAdResponse) pOBAdResponse).f430h;
            this.f440i = ((POBAdResponse) pOBAdResponse).f431i;
        }

        public Builder(List<T> list) {
            this.f432a = list;
        }

        public Builder(JSONObject jSONObject) {
            this();
            this.f439h = jSONObject;
        }

        /* renamed from: a */
        private int m1049a(T t, boolean z) {
            return (z || t.isVideo()) ? 3600000 : 300000;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        private List<T> m1048a(List<T> list, boolean z) {
            POBAdDescriptor buildWithRefreshAndExpiryTimeout;
            ArrayList arrayList = new ArrayList();
            for (T t : list) {
                if (t != null && (buildWithRefreshAndExpiryTimeout = t.buildWithRefreshAndExpiryTimeout(this.f438g, m1049a((Builder<T>) t, z))) != null) {
                    arrayList.add(buildWithRefreshAndExpiryTimeout);
                }
            }
            list.clear();
            list.addAll(arrayList);
            return list;
        }

        public POBAdResponse<T> build() {
            POBAdResponse<T> pOBAdResponse = new POBAdResponse<>();
            ((POBAdResponse) pOBAdResponse).f423a = this.f432a;
            ((POBAdResponse) pOBAdResponse).f424b = this.f433b;
            ((POBAdResponse) pOBAdResponse).f425c = this.f434c;
            ((POBAdResponse) pOBAdResponse).f426d = this.f435d;
            ((POBAdResponse) pOBAdResponse).f427e = this.f436e;
            ((POBAdResponse) pOBAdResponse).f428f = this.f437f;
            ((POBAdResponse) pOBAdResponse).f429g = this.f438g;
            ((POBAdResponse) pOBAdResponse).f430h = this.f439h;
            ((POBAdResponse) pOBAdResponse).f431i = this.f440i;
            return pOBAdResponse;
        }

        public Builder<T> setClientSidePartnerBids(List<T> list) {
            this.f433b = list;
            return this;
        }

        public Builder<T> setLogger(String str) {
            this.f436e = str;
            return this;
        }

        public Builder<T> setRefreshInterval(int i) {
            this.f438g = i;
            return this;
        }

        public Builder<T> setSendAllBidsState(boolean z) {
            this.f440i = z;
            return this;
        }

        public Builder<T> setServerSidePartnerBids(List<T> list) {
            this.f434c = list;
            return this;
        }

        public Builder<T> setTracker(String str) {
            this.f437f = str;
            return this;
        }

        public Builder<T> setWinningBid(T t) {
            this.f435d = t;
            return this;
        }

        public Builder<T> updateWinningBid(T t) {
            this.f435d = t;
            return this;
        }

        public Builder<T> updateWithRefreshIntervalAndExpiryTimeout(boolean z) {
            List<T> list = this.f434c;
            if (list != null) {
                m1048a(list, z);
            }
            List<T> list2 = this.f433b;
            if (list2 != null) {
                m1048a(list2, z);
            }
            m1048a(this.f432a, z);
            T t = this.f435d;
            if (t != null) {
                this.f435d = (T) t.buildWithRefreshAndExpiryTimeout(this.f438g, m1049a((Builder<T>) t, z));
            }
            return this;
        }
    }

    private POBAdResponse() {
        this.f423a = new ArrayList();
    }

    public static <T extends POBAdDescriptor> POBAdResponse<T> defaultResponse() {
        POBAdResponse<T> pOBAdResponse = new POBAdResponse<>();
        ((POBAdResponse) pOBAdResponse).f423a = new ArrayList();
        ((POBAdResponse) pOBAdResponse).f429g = 30;
        ((POBAdResponse) pOBAdResponse).f428f = "";
        ((POBAdResponse) pOBAdResponse).f427e = "";
        return pOBAdResponse;
    }

    public POBAdDescriptor getBid(String str) {
        if (POBUtils.isNullOrEmpty(str)) {
            return null;
        }
        for (T t : this.f423a) {
            if (str.equals(t.getId())) {
                return t;
            }
        }
        return null;
    }

    public List<T> getBids() {
        return this.f423a;
    }

    public List<T> getClientSidePartnerBids() {
        return this.f424b;
    }

    public JSONObject getCustomData() {
        return this.f430h;
    }

    public String getLogger() {
        return this.f427e;
    }

    public int getRefreshInterval() {
        return this.f429g;
    }

    public List<T> getServerSidePartnerBids() {
        return this.f425c;
    }

    @Override // com.pubmatic.sdk.common.base.POBBidsProvider
    public Map<String, String> getTargetingInfo() {
        Map<String, String> targetingInfo;
        Map<String, String> targetingInfo2;
        HashMap hashMap = new HashMap();
        if (this.f431i) {
            for (T t : getBids()) {
                if (t != null && (targetingInfo2 = t.getTargetingInfo()) != null) {
                    try {
                        hashMap.putAll(targetingInfo2);
                    } catch (ClassCastException | IllegalArgumentException | NullPointerException | UnsupportedOperationException e) {
                        PMLog.error("POBAdResponse", "Failed to add targeting info", new Object[0]);
                    }
                }
            }
        } else {
            T t2 = this.f426d;
            if (t2 != null && (targetingInfo = t2.getTargetingInfo()) != null) {
                hashMap.putAll(targetingInfo);
            }
        }
        HashMap hashMap2 = hashMap;
        if (hashMap.size() == 0) {
            hashMap2 = null;
        }
        return hashMap2;
    }

    public String getTracker() {
        return this.f428f;
    }

    public T getWinningBid() {
        return this.f426d;
    }

    public boolean isSendAllBidsEnabled() {
        return this.f431i;
    }
}
