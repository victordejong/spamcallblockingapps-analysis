package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonWriterSettings.class */
public class BsonWriterSettings {
    private final int maxSerializationDepth;

    public BsonWriterSettings() {
        this(1024);
    }

    public BsonWriterSettings(int i) {
        this.maxSerializationDepth = i;
    }

    public int getMaxSerializationDepth() {
        return this.maxSerializationDepth;
    }
}
