package com.mopub.common;

import android.text.TextUtils;
import com.google.gson.C15965f;
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
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityVendor.class */
public class ViewabilityVendor implements Serializable {

    /* renamed from: a */
    private String f58820a;

    /* renamed from: b */
    private URL f58821b;

    /* renamed from: c */
    private String f58822c;

    /* renamed from: d */
    private String f58823d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityVendor$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private String f58824a = "omid";

        /* renamed from: b */
        private String f58825b;

        /* renamed from: c */
        private String f58826c;

        /* renamed from: d */
        private String f58827d;

        /* renamed from: e */
        private String f58828e;

        public Builder(String str) {
            this.f58826c = str;
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
            this.f58824a = str;
            return this;
        }

        public Builder withVendorKey(String str) {
            this.f58825b = str;
            return this;
        }

        public Builder withVerificationNotExecuted(String str) {
            this.f58828e = str;
            return this;
        }

        public Builder withVerificationParameters(String str) {
            this.f58827d = str;
            return this;
        }
    }

    public /* synthetic */ ViewabilityVendor() {
    }

    private ViewabilityVendor(Builder builder) throws Exception {
        if (!"omid".equalsIgnoreCase(builder.f58824a) || TextUtils.isEmpty(builder.f58826c)) {
            throw new InvalidParameterException("ViewabilityVendor cannot be created.");
        }
        this.f58820a = builder.f58825b;
        this.f58821b = new URL(builder.f58826c);
        this.f58822c = builder.f58827d;
        this.f58823d = builder.f58828e;
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
        if (!Objects.equals(this.f58820a, viewabilityVendor.f58820a) || !Objects.equals(this.f58821b, viewabilityVendor.f58821b) || !Objects.equals(this.f58822c, viewabilityVendor.f58822c)) {
            return false;
        }
        return Objects.equals(this.f58823d, viewabilityVendor.f58823d);
    }

    public /* synthetic */ void fromJson$11(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int mo123b = _optimizedjsonreader.mo123b(jsonReader);
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (mo123b != 7) {
                if (mo123b != 46) {
                    if (mo123b != 59) {
                        if (mo123b != 68) {
                            jsonReader.skipValue();
                        } else if (z) {
                            this.f58820a = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
                        } else {
                            this.f58820a = null;
                            jsonReader.nextNull();
                        }
                    } else if (z) {
                        this.f58822c = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
                    } else {
                        this.f58822c = null;
                        jsonReader.nextNull();
                    }
                } else if (z) {
                    this.f58821b = (URL) c15965f.m7971a(URL.class).read(jsonReader);
                } else {
                    this.f58821b = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                this.f58823d = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
            } else {
                this.f58823d = null;
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
    }

    public URL getJavascriptResourceUrl() {
        return this.f58821b;
    }

    public String getVendorKey() {
        return this.f58820a;
    }

    public String getVerificationNotExecuted() {
        return this.f58823d;
    }

    public String getVerificationParameters() {
        return this.f58822c;
    }

    public int hashCode() {
        String str = this.f58820a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int hashCode2 = this.f58821b.hashCode();
        String str2 = this.f58822c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f58823d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public /* synthetic */ void toJson$11(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        if (this != this.f58820a) {
            _optimizedjsonwriter.mo120b(jsonWriter, 68);
            jsonWriter.value(this.f58820a);
        }
        if (this != this.f58821b) {
            _optimizedjsonwriter.mo120b(jsonWriter, 46);
            URL url = this.f58821b;
            C21025a.m117a(c15965f, URL.class, url).write(jsonWriter, url);
        }
        if (this != this.f58822c) {
            _optimizedjsonwriter.mo120b(jsonWriter, 59);
            jsonWriter.value(this.f58822c);
        }
        if (this != this.f58823d) {
            _optimizedjsonwriter.mo120b(jsonWriter, 7);
            jsonWriter.value(this.f58823d);
        }
        jsonWriter.endObject();
    }

    public String toString() {
        return this.f58820a + StringUtils.f67179LF + this.f58821b + StringUtils.f67179LF + this.f58822c + StringUtils.f67179LF;
    }
}
