package com.mopub.common;

import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import com.tenor.android.core.constant.StringConstant;
import java.io.Serializable;
import java.net.URL;
import java.security.InvalidParameterException;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityVendor.class */
public class ViewabilityVendor implements Serializable {

    /* renamed from: a */
    public final String f8590a;

    /* renamed from: b */
    public final URL f8591b;

    /* renamed from: c */
    public final String f8592c;

    /* renamed from: d */
    public String f8593d;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityVendor$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public String f8594a = "omid";

        /* renamed from: b */
        public String f8595b;

        /* renamed from: c */
        public String f8596c;

        /* renamed from: d */
        public String f8597d;

        /* renamed from: e */
        public String f8598e;

        public Builder(String str) {
            this.f8596c = str;
        }

        public ViewabilityVendor build() {
            try {
                return new ViewabilityVendor(this, null);
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                StringBuilder m8728C = C22128a.m8728C("Warning: ");
                m8728C.append(e.getLocalizedMessage());
                MoPubLog.log(sdkLogEvent, m8728C.toString());
                return null;
            }
        }

        public Builder withApiFramework(String str) {
            this.f8594a = str;
            return this;
        }

        public Builder withVendorKey(String str) {
            this.f8595b = str;
            return this;
        }

        public Builder withVerificationNotExecuted(String str) {
            this.f8598e = str;
            return this;
        }

        public Builder withVerificationParameters(String str) {
            this.f8597d = str;
            return this;
        }
    }

    public ViewabilityVendor(Builder builder, C2646a c2646a) throws Exception {
        if (!"omid".equalsIgnoreCase(builder.f8594a) || TextUtils.isEmpty(builder.f8596c)) {
            throw new InvalidParameterException("ViewabilityVendor cannot be created.");
        }
        this.f8590a = builder.f8595b;
        this.f8591b = new URL(builder.f8596c);
        this.f8592c = builder.f8597d;
        this.f8593d = builder.f8598e;
    }

    public static Set<ViewabilityVendor> createFromJsonArray(JSONArray jSONArray) {
        HashSet hashSet = new HashSet();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                Builder builder = new Builder(optJSONObject.optString("javascriptResourceUrl"));
                builder.withApiFramework(optJSONObject.optString("apiFramework", "")).withVendorKey(optJSONObject.optString("vendorKey", "")).withVerificationParameters(optJSONObject.optString("verificationParameters", ""));
                ViewabilityVendor build = builder.build();
                if (build != null) {
                    hashSet.add(build);
                }
            }
        }
        return hashSet;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewabilityVendor)) {
            return false;
        }
        ViewabilityVendor viewabilityVendor = (ViewabilityVendor) obj;
        if (!Objects.equals(this.f8590a, viewabilityVendor.f8590a) || !Objects.equals(this.f8591b, viewabilityVendor.f8591b) || !Objects.equals(this.f8592c, viewabilityVendor.f8592c)) {
            return false;
        }
        return Objects.equals(this.f8593d, viewabilityVendor.f8593d);
    }

    public URL getJavascriptResourceUrl() {
        return this.f8591b;
    }

    public String getVendorKey() {
        return this.f8590a;
    }

    public String getVerificationNotExecuted() {
        return this.f8593d;
    }

    public String getVerificationParameters() {
        return this.f8592c;
    }

    public int hashCode() {
        String str = this.f8590a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int hashCode2 = this.f8591b.hashCode();
        String str2 = this.f8592c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f8593d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((hashCode2 + (hashCode * 31)) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f8590a);
        sb.append(StringConstant.NEW_LINE);
        sb.append(this.f8591b);
        sb.append(StringConstant.NEW_LINE);
        return C22128a.m8618h(sb, this.f8592c, StringConstant.NEW_LINE);
    }
}
