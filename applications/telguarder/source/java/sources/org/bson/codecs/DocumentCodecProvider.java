package org.bson.codecs;

import org.bson.Document;
import org.bson.Transformer;
import org.bson.assertions.Assertions;
import org.bson.codecs.configuration.CodecProvider;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.types.CodeWithScope;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/DocumentCodecProvider.class */
public class DocumentCodecProvider implements CodecProvider {
    private final BsonTypeClassMap bsonTypeClassMap;
    private final Transformer valueTransformer;

    public DocumentCodecProvider() {
        this(new BsonTypeClassMap());
    }

    public DocumentCodecProvider(Transformer transformer) {
        this(new BsonTypeClassMap(), transformer);
    }

    public DocumentCodecProvider(BsonTypeClassMap bsonTypeClassMap) {
        this(bsonTypeClassMap, null);
    }

    public DocumentCodecProvider(BsonTypeClassMap bsonTypeClassMap, Transformer transformer) {
        this.bsonTypeClassMap = (BsonTypeClassMap) Assertions.notNull("bsonTypeClassMap", bsonTypeClassMap);
        this.valueTransformer = transformer;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DocumentCodecProvider documentCodecProvider = (DocumentCodecProvider) obj;
        if (!this.bsonTypeClassMap.equals(documentCodecProvider.bsonTypeClassMap)) {
            return false;
        }
        Transformer transformer = this.valueTransformer;
        Transformer transformer2 = documentCodecProvider.valueTransformer;
        return transformer != null ? transformer.equals(transformer2) : transformer2 == null;
    }

    @Override // org.bson.codecs.configuration.CodecProvider
    public <T> Codec<T> get(Class<T> cls, CodecRegistry codecRegistry) {
        if (cls == CodeWithScope.class) {
            return new CodeWithScopeCodec(codecRegistry.get(Document.class));
        }
        if (cls != Document.class) {
            return null;
        }
        return new DocumentCodec(codecRegistry, this.bsonTypeClassMap, this.valueTransformer);
    }

    public int hashCode() {
        int hashCode = this.bsonTypeClassMap.hashCode();
        Transformer transformer = this.valueTransformer;
        return (hashCode * 31) + (transformer != null ? transformer.hashCode() : 0);
    }
}
