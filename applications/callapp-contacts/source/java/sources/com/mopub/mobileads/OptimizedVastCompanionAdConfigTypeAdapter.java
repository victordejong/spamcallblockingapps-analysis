package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastCompanionAdConfigTypeAdapter.class */
public class OptimizedVastCompanionAdConfigTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59349a;

    /* renamed from: b */
    private _OptimizedJsonReader f59350b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59351c;

    public OptimizedVastCompanionAdConfigTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59349a = c15965f;
        this.f59350b = _optimizedjsonreader;
        this.f59351c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastCompanionAdConfig vastCompanionAdConfig = new VastCompanionAdConfig();
        vastCompanionAdConfig.fromJson$4(this.f59349a, jsonReader, this.f59350b);
        return vastCompanionAdConfig;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastCompanionAdConfig) obj).toJson$4(this.f59349a, jsonWriter, this.f59351c);
        }
    }
}
