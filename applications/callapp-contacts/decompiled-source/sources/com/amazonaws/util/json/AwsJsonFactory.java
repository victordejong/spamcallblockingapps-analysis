package com.amazonaws.util.json;

import java.io.Reader;
import java.io.Writer;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/AwsJsonFactory.class */
public interface AwsJsonFactory {
    AwsJsonReader getJsonReader(Reader reader);

    AwsJsonWriter getJsonWriter(Writer writer);
}
