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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastResourceTypeAdapter.class */
public class OptimizedVastResourceTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59373a;

    /* renamed from: b */
    private _OptimizedJsonReader f59374b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59375c;

    public OptimizedVastResourceTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59373a = c15965f;
        this.f59374b = _optimizedjsonreader;
        this.f59375c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        VastResource vastResource = new VastResource();
        vastResource.fromJson$2(this.f59373a, jsonReader, this.f59374b);
        return vastResource;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((VastResource) obj).toJson$2(this.f59373a, jsonWriter, this.f59375c);
        }
    }
}
