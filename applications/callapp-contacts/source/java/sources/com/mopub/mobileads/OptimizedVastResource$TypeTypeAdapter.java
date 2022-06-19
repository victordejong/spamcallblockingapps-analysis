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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter.class */
public class OptimizedVastResource$TypeTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59370a;

    /* renamed from: b */
    private _OptimizedJsonReader f59371b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59372c;

    public OptimizedVastResource$TypeTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59370a = c15965f;
        this.f59371b = _optimizedjsonreader;
        this.f59372c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        int mo122c = this.f59371b.mo122c(jsonReader);
        if (mo122c != 10) {
            if (mo122c == 15) {
                return VastResource.Type.STATIC_RESOURCE;
            }
            if (mo122c == 35) {
                return VastResource.Type.HTML_RESOURCE;
            }
            if (mo122c == 87) {
                return VastResource.Type.IFRAME_RESOURCE;
            }
            return null;
        }
        return VastResource.Type.BLURRED_LAST_FRAME;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f59372c.mo119c(jsonWriter, obj == VastResource.Type.HTML_RESOURCE ? 35 : obj == VastResource.Type.STATIC_RESOURCE ? 15 : obj == VastResource.Type.BLURRED_LAST_FRAME ? 10 : obj == VastResource.Type.IFRAME_RESOURCE ? 87 : -1);
        }
    }
}
