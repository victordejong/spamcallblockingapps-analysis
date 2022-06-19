package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonBuffer.class */
interface JsonBuffer {
    void discard(int i);

    int getPosition();

    int mark();

    int read();

    void reset(int i);

    void unread(int i);
}
