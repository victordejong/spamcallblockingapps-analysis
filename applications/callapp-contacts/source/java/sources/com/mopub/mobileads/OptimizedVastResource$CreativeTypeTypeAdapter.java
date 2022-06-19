package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastResource;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastResource$CreativeTypeTypeAdapter.class */
public class OptimizedVastResource$CreativeTypeTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59367a;

    /* renamed from: b */
    private _OptimizedJsonReader f59368b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59369c;

    public OptimizedVastResource$CreativeTypeTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59367a = c15965f;
        this.f59368b = _optimizedjsonreader;
        this.f59369c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        int mo122c = this.f59368b.mo122c(jsonReader);
        if (mo122c != 4) {
            if (mo122c == 11) {
                return VastResource.CreativeType.NONE;
            }
            if (mo122c == 28) {
                return VastResource.CreativeType.JAVASCRIPT;
            }
            return null;
        }
        return VastResource.CreativeType.IMAGE;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f59369c.mo119c(jsonWriter, obj == VastResource.CreativeType.JAVASCRIPT ? 28 : obj == VastResource.CreativeType.IMAGE ? 4 : obj == VastResource.CreativeType.NONE ? 11 : -1);
        }
    }
}
