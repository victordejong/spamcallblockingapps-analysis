package com.google.gson.internal;

import com.google.gson.stream.JsonReader;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/JsonReaderInternalAccess.class */
public abstract class JsonReaderInternalAccess {
    public static JsonReaderInternalAccess INSTANCE;

    public abstract void promoteNameToValue(JsonReader jsonReader) throws IOException;
}
