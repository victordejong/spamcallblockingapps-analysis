package org.bson.conversions;

import org.bson.BsonDocument;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/conversions/Bson.class */
public interface Bson {
    <TDocument> BsonDocument toBsonDocument(Class<TDocument> cls, CodecRegistry codecRegistry);
}
