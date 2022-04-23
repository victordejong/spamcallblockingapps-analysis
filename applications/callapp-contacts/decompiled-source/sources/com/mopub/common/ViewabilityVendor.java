package com.mopub.common;

import android.text.TextUtils;
import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.logging.MoPubLog;
import java.io.Serializable;
import java.net.URL;
import java.security.InvalidParameterException;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.a;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityVendor.class */
public class ViewabilityVendor implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f33884a;

    /* renamed from: b  reason: collision with root package name */
    private URL f33885b;

    /* renamed from: c  reason: collision with root package name */
    private String f33886c;

    /* renamed from: d  reason: collision with root package name */
    private String f33887d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityVendor$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f33888a = "omid";

        /* renamed from: b  reason: collision with root package name */
        private String f33889b;

        /* renamed from: c  reason: collision with root package name */
        private String f33890c;

        /* renamed from: d  reason: collision with root package name */
        private String f33891d;
        private String e;

        public Builder(String str) {
            this.f33890c = str;
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
            this.f33888a = str;
            return this;
        }

        public Builder withVendorKey(String str) {
            this.f33889b = str;
            return this;
        }

        public Builder withVerificationNotExecuted(String str) {
            this.e = str;
            return this;
        }

        public Builder withVerificationParameters(String str) {
            this.f33891d = str;
            return this;
        }
    }

    public /* synthetic */ ViewabilityVendor() {
    }

    private ViewabilityVendor(Builder builder) throws Exception {
        if (!"omid".equalsIgnoreCase(builder.f33888a) || TextUtils.isEmpty(builder.f33890c)) {
            throw new InvalidParameterException("ViewabilityVendor cannot be created.");
        }
        this.f33884a = builder.f33889b;
        this.f33885b = new URL(builder.f33890c);
        this.f33886c = builder.f33891d;
        this.f33887d = builder.e;
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
        if (Objects.equals(this.f33884a, viewabilityVendor.f33884a) && Objects.equals(this.f33885b, viewabilityVendor.f33885b) && Objects.equals(this.f33886c, viewabilityVendor.f33886c)) {
            return Objects.equals(this.f33887d, viewabilityVendor.f33887d);
        }
        return false;
    }

    public /* synthetic */ void fromJson$11(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int b2 = _optimizedjsonreader.b(jsonReader);
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (b2 != 7) {
                if (b2 != 46) {
                    if (b2 != 59) {
                        if (b2 != 68) {
                            jsonReader.skipValue();
                        } else if (z) {
                            this.f33884a = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
                        } else {
                            this.f33884a = null;
                            jsonReader.nextNull();
                        }
                    } else if (z) {
                        this.f33886c = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
                    } else {
                        this.f33886c = null;
                        jsonReader.nextNull();
                    }
                } else if (z) {
                    this.f33885b = (URL) fVar.a(URL.class).read(jsonReader);
                } else {
                    this.f33885b = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                this.f33887d = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
            } else {
                this.f33887d = null;
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
    }

    public URL getJavascriptResourceUrl() {
        return this.f33885b;
    }

    public String getVendorKey() {
        return this.f33884a;
    }

    public String getVerificationNotExecuted() {
        return this.f33887d;
    }

    public String getVerificationParameters() {
        return this.f33886c;
    }

    public int hashCode() {
        String str = this.f33884a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int hashCode2 = this.f33885b.hashCode();
        String str2 = this.f33886c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f33887d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public /* synthetic */ void toJson$11(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        if (this != this.f33884a) {
            _optimizedjsonwriter.b(jsonWriter, 68);
            jsonWriter.value(this.f33884a);
        }
        if (this != this.f33885b) {
            _optimizedjsonwriter.b(jsonWriter, 46);
            URL url = this.f33885b;
            a.a(fVar, URL.class, url).write(jsonWriter, url);
        }
        if (this != this.f33886c) {
            _optimizedjsonwriter.b(jsonWriter, 59);
            jsonWriter.value(this.f33886c);
        }
        if (this != this.f33887d) {
            _optimizedjsonwriter.b(jsonWriter, 7);
            jsonWriter.value(this.f33887d);
        }
        jsonWriter.endObject();
    }

    public String toString() {
        return this.f33884a + StringUtils.LF + this.f33885b + StringUtils.LF + this.f33886c + StringUtils.LF;
    }
}
