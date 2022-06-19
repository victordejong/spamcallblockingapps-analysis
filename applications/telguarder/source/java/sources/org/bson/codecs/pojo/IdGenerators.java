package org.bson.codecs.pojo;

import org.bson.BsonObjectId;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/IdGenerators.class */
public final class IdGenerators {
    public static final IdGenerator<ObjectId> OBJECT_ID_GENERATOR = new IdGenerator<ObjectId>() { // from class: org.bson.codecs.pojo.IdGenerators.1
        @Override // org.bson.codecs.pojo.IdGenerator
        public ObjectId generate() {
            return new ObjectId();
        }

        @Override // org.bson.codecs.pojo.IdGenerator
        public Class<ObjectId> getType() {
            return ObjectId.class;
        }
    };
    public static final IdGenerator<BsonObjectId> BSON_OBJECT_ID_GENERATOR = new IdGenerator<BsonObjectId>() { // from class: org.bson.codecs.pojo.IdGenerators.2
        @Override // org.bson.codecs.pojo.IdGenerator
        public BsonObjectId generate() {
            return new BsonObjectId();
        }

        @Override // org.bson.codecs.pojo.IdGenerator
        public Class<BsonObjectId> getType() {
            return BsonObjectId.class;
        }
    };

    private IdGenerators() {
    }
}
