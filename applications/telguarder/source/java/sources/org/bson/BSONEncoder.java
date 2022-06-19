package org.bson;

import org.bson.p028io.OutputBuffer;
/* loaded from: classes-dex2jar.jar:org/bson/BSONEncoder.class */
public interface BSONEncoder {
    void done();

    byte[] encode(BSONObject bSONObject);

    int putObject(BSONObject bSONObject);

    void set(OutputBuffer outputBuffer);
}
