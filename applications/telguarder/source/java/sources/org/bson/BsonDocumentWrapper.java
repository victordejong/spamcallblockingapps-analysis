package org.bson;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.bson.codecs.Encoder;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/BsonDocumentWrapper.class */
public final class BsonDocumentWrapper<T> extends BsonDocument {
    private static final long serialVersionUID = 1;
    private final transient Encoder<T> encoder;
    private BsonDocument unwrapped;
    private final transient T wrappedDocument;

    public BsonDocumentWrapper(T t, Encoder<T> encoder) {
        if (t != null) {
            this.wrappedDocument = t;
            this.encoder = encoder;
            return;
        }
        throw new IllegalArgumentException("Document can not be null");
    }

    public static BsonDocument asBsonDocument(Object obj, CodecRegistry codecRegistry) {
        if (obj == null) {
            return null;
        }
        return obj instanceof BsonDocument ? (BsonDocument) obj : new BsonDocumentWrapper(obj, codecRegistry.get(obj.getClass()));
    }

    private BsonDocument getUnwrapped() {
        if (this.encoder != null) {
            if (this.unwrapped == null) {
                BsonDocument bsonDocument = new BsonDocument();
                this.encoder.encode(new BsonDocumentWriter(bsonDocument), this.wrappedDocument, EncoderContext.builder().build());
                this.unwrapped = bsonDocument;
            }
            return this.unwrapped;
        }
        throw new BsonInvalidOperationException("Can not unwrap a BsonDocumentWrapper with no Encoder");
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Proxy required");
    }

    private Object writeReplace() {
        return getUnwrapped();
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public void clear() {
        super.clear();
    }

    @Override // org.bson.BsonDocument
    public BsonDocument clone() {
        return getUnwrapped().clone();
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public boolean containsKey(Object obj) {
        return getUnwrapped().containsKey(obj);
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public boolean containsValue(Object obj) {
        return getUnwrapped().containsValue(obj);
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public Set<Map.Entry<String, BsonValue>> entrySet() {
        return getUnwrapped().entrySet();
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public boolean equals(Object obj) {
        return getUnwrapped().equals(obj);
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public BsonValue get(Object obj) {
        return getUnwrapped().get(obj);
    }

    public Encoder<T> getEncoder() {
        return this.encoder;
    }

    public T getWrappedDocument() {
        return this.wrappedDocument;
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public int hashCode() {
        return getUnwrapped().hashCode();
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public boolean isEmpty() {
        return getUnwrapped().isEmpty();
    }

    public boolean isUnwrapped() {
        return this.unwrapped != null;
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public Set<String> keySet() {
        return getUnwrapped().keySet();
    }

    @Override // org.bson.BsonDocument
    public BsonValue put(String str, BsonValue bsonValue) {
        return getUnwrapped().put(str, bsonValue);
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public void putAll(Map<? extends String, ? extends BsonValue> map) {
        super.putAll(map);
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public BsonValue remove(Object obj) {
        return getUnwrapped().remove(obj);
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public int size() {
        return getUnwrapped().size();
    }

    @Override // org.bson.BsonDocument
    public String toString() {
        return getUnwrapped().toString();
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public Collection<BsonValue> values() {
        return getUnwrapped().values();
    }
}
