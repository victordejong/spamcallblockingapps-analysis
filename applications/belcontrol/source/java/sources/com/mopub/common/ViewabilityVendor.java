package com.mopub.common;

import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import java.io.Serializable;
import java.net.URL;
import java.security.InvalidParameterException;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityVendor.class */
public class ViewabilityVendor implements Serializable {
    private static final long serialVersionUID = 2566572076713868153L;

    /* renamed from: a */
    public final String f4343a;

    /* renamed from: b */
    public final URL f4344b;

    /* renamed from: c */
    public final String f4345c;

    /* renamed from: d */
    public String f4346d;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityVendor$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public String f4347a = "omid";

        /* renamed from: b */
        public String f4348b;

        /* renamed from: c */
        public String f4349c;

        /* renamed from: d */
        public String f4350d;

        /* renamed from: e */
        public String f4351e;

        public Builder(String str) {
            this.f4349c = str;
        }

        public ViewabilityVendor build() {
            try {
                return new ViewabilityVendor(this);
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Warning: " + e.getLocalizedMessage());
                return null;
            }
        }

        public Builder withApiFramework(String str) {
            this.f4347a = str;
            return this;
        }

        public Builder withVendorKey(String str) {
            this.f4348b = str;
            return this;
        }

        public Builder withVerificationNotExecuted(String str) {
            this.f4351e = str;
            return this;
        }

        public Builder withVerificationParameters(String str) {
            this.f4350d = str;
            return this;
        }
    }

    public ViewabilityVendor(Builder builder) {
        if (!"omid".equalsIgnoreCase(builder.f4347a) || TextUtils.isEmpty(builder.f4349c)) {
            throw new InvalidParameterException("ViewabilityVendor cannot be created.");
        }
        this.f4343a = builder.f4348b;
        this.f4344b = new URL(builder.f4349c);
        this.f4345c = builder.f4350d;
        this.f4346d = builder.f4351e;
    }

    /* renamed from: a */
    public static ViewabilityVendor m3884a(JSONObject jSONObject) {
        Builder builder = new Builder(jSONObject.optString("javascriptResourceUrl"));
        builder.withApiFramework(jSONObject.optString("apiFramework", "")).withVendorKey(jSONObject.optString("vendorKey", "")).withVerificationParameters(jSONObject.optString("verificationParameters", ""));
        return builder.build();
    }

    public static Set<ViewabilityVendor> createFromJsonArray(JSONArray jSONArray) {
        HashSet hashSet = new HashSet();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                ViewabilityVendor m3884a = m3884a(jSONArray.optJSONObject(i));
                if (m3884a != null) {
                    hashSet.add(m3884a);
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
        if (!Objects.equals(this.f4343a, viewabilityVendor.f4343a) || !Objects.equals(this.f4344b, viewabilityVendor.f4344b) || !Objects.equals(this.f4345c, viewabilityVendor.f4345c)) {
            return false;
        }
        return Objects.equals(this.f4346d, viewabilityVendor.f4346d);
    }

    public URL getJavascriptResourceUrl() {
        return this.f4344b;
    }

    public String getVendorKey() {
        return this.f4343a;
    }

    public String getVerificationNotExecuted() {
        return this.f4346d;
    }

    public String getVerificationParameters() {
        return this.f4345c;
    }

    public int hashCode() {
        String str = this.f4343a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int hashCode2 = this.f4344b.hashCode();
        String str2 = this.f4345c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f4346d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        return this.f4343a + "\n" + this.f4344b + "\n" + this.f4345c + "\n";
    }
}
