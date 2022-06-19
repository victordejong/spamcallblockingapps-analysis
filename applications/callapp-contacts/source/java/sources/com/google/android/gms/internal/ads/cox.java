package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cox.class */
public final class cox {

    /* renamed from: a */
    String f46284a;

    /* renamed from: b */
    private int f46285b;

    public cox(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        jsonReader.beginObject();
        int i = 3;
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("description")) {
                str = jsonReader.nextString();
            } else if (!nextName.equals("code")) {
                jsonReader.skipValue();
            } else {
                i = jsonReader.nextInt();
            }
        }
        jsonReader.endObject();
        this.f46285b = i;
        this.f46284a = str;
    }
}
