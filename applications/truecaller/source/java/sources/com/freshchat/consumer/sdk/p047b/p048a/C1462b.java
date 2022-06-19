package com.freshchat.consumer.sdk.p047b.p048a;

import android.util.JsonReader;
import android.util.JsonToken;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.freshchat.consumer.sdk.b.a.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/a/b.class */
public class C1462b {

    /* renamed from: dZ */
    private JsonReader f4010dZ;

    /* renamed from: ea */
    private Object f4011ea;

    public C1462b(InputStream inputStream) {
        try {
            this.f4010dZ = new JsonReader(new InputStreamReader(inputStream, StringConstant.UTF8));
        } catch (UnsupportedEncodingException e) {
            C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
        }
    }

    /* renamed from: a */
    private JSONArray m41023a(JsonReader jsonReader) {
        JSONArray jSONArray = new JSONArray();
        try {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                jSONArray.put(m41022b(jsonReader));
            }
            jsonReader.endArray();
        } catch (IOException e) {
            C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
        }
        return jSONArray;
    }

    /* renamed from: b */
    private Object m41022b(JsonReader jsonReader) {
        try {
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                return m41023a(jsonReader);
            }
            if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                return m41021c(jsonReader);
            }
            if (JsonToken.BOOLEAN.equals(peek)) {
                return Boolean.valueOf(jsonReader.nextBoolean());
            }
            if (JsonToken.NUMBER.equals(peek)) {
                return Long.valueOf(jsonReader.nextLong());
            }
            if (JsonToken.STRING.equals(peek)) {
                return jsonReader.nextString();
            }
            if (!JsonToken.NULL.equals(peek)) {
                return null;
            }
            jsonReader.nextNull();
            return null;
        } catch (IOException e) {
            C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
            return null;
        }
    }

    /* renamed from: c */
    private JSONObject m41021c(JsonReader jsonReader) {
        JSONObject jSONObject = new JSONObject();
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                jSONObject.put(jsonReader.nextName(), m41022b(jsonReader));
            }
            jsonReader.endObject();
        } catch (IOException | JSONException e) {
            C1613ai.m40282e("FRESHCHAT", "Exception occured", e);
        }
        return jSONObject;
    }

    /* renamed from: co */
    public Object m41020co() {
        JsonReader jsonReader;
        if (this.f4011ea == null && (jsonReader = this.f4010dZ) != null) {
            this.f4011ea = m41022b(jsonReader);
            try {
                this.f4010dZ.close();
            } catch (IOException e) {
                C1723q.m39823a(e);
            }
        }
        return this.f4011ea;
    }
}
