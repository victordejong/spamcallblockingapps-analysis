package com.mopub.common;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/OptimizedViewabilityVendorTypeAdapter.class */
public class OptimizedViewabilityVendorTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f58784a;

    /* renamed from: b */
    private _OptimizedJsonReader f58785b;

    /* renamed from: c */
    private _OptimizedJsonWriter f58786c;

    public OptimizedViewabilityVendorTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f58784a = c15965f;
        this.f58785b = _optimizedjsonreader;
        this.f58786c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        ViewabilityVendor viewabilityVendor = new ViewabilityVendor();
        viewabilityVendor.fromJson$11(this.f58784a, jsonReader, this.f58785b);
        return viewabilityVendor;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            ((ViewabilityVendor) obj).toJson$11(this.f58784a, jsonWriter, this.f58786c);
        }
    }
}
