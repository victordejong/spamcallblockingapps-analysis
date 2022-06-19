package com.mopub.mobileads;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mopub.mobileads.VastTracker;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/OptimizedVastTracker$MessageTypeTypeAdapter.class */
public class OptimizedVastTracker$MessageTypeTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f59379a;

    /* renamed from: b */
    private _OptimizedJsonReader f59380b;

    /* renamed from: c */
    private _OptimizedJsonWriter f59381c;

    public OptimizedVastTracker$MessageTypeTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f59379a = c15965f;
        this.f59380b = _optimizedjsonreader;
        this.f59381c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        int mo122c = this.f59380b.mo122c(jsonReader);
        if (mo122c != 16) {
            if (mo122c == 21) {
                return VastTracker.MessageType.TRACKING_URL;
            }
            return null;
        }
        return VastTracker.MessageType.QUARTILE_EVENT;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f59381c.mo119c(jsonWriter, obj == VastTracker.MessageType.QUARTILE_EVENT ? 16 : obj == VastTracker.MessageType.TRACKING_URL ? 21 : -1);
        }
    }
}
