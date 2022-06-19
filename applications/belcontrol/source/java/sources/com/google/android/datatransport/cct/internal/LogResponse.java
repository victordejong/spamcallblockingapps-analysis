package com.google.android.datatransport.cct.internal;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.auto.value.AutoValue;
import java.io.IOException;
import java.io.Reader;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/LogResponse.class */
public abstract class LogResponse {
    private static final String LOG_TAG = "LogResponseInternal";

    public static LogResponse create(long j) {
        return new AutoValue_LogResponse(j);
    }

    public static LogResponse fromJson(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? create(Long.parseLong(jsonReader.nextString())) : create(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    public abstract long getNextRequestWaitMillis();
}
