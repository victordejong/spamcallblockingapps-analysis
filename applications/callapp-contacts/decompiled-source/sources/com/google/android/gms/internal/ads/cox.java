package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cox.class */
public final class cox {

    /* renamed from: a  reason: collision with root package name */
    String f26191a;

    /* renamed from: b  reason: collision with root package name */
    private int f26192b;

    /* JADX INFO: Access modifiers changed from: package-private */
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
        this.f26192b = i;
        this.f26191a = str;
    }
}
