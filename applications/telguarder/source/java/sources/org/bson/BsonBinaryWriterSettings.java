package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonBinaryWriterSettings.class */
public class BsonBinaryWriterSettings {
    private final int maxDocumentSize;

    public BsonBinaryWriterSettings() {
        this(Integer.MAX_VALUE);
    }

    public BsonBinaryWriterSettings(int i) {
        this.maxDocumentSize = i;
    }

    public int getMaxDocumentSize() {
        return this.maxDocumentSize;
    }
}
