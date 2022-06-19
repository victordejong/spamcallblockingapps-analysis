package com.amazonaws.util.json;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/AwsJsonReader.class */
public interface AwsJsonReader {
    void beginArray() throws IOException;

    void beginObject() throws IOException;

    void close() throws IOException;

    void endArray() throws IOException;

    void endObject() throws IOException;

    boolean hasNext() throws IOException;

    boolean isContainer() throws IOException;

    String nextName() throws IOException;

    String nextString() throws IOException;

    AwsJsonToken peek() throws IOException;

    void skipValue() throws IOException;
}
