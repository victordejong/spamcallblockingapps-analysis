package org.bson.codecs.pojo;

import org.bson.BsonObjectId;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/ConventionObjectIdGeneratorsImpl.class */
final class ConventionObjectIdGeneratorsImpl implements Convention {
    @Override // org.bson.codecs.pojo.Convention
    public void apply(ClassModelBuilder<?> classModelBuilder) {
        PropertyModelBuilder<?> property;
        if (classModelBuilder.getIdGenerator() != null || classModelBuilder.getIdPropertyName() == null || (property = classModelBuilder.getProperty(classModelBuilder.getIdPropertyName())) == null) {
            return;
        }
        Class<?> type = property.getTypeData().getType();
        if (classModelBuilder.getIdGenerator() == null && type.equals(ObjectId.class)) {
            classModelBuilder.idGenerator(IdGenerators.OBJECT_ID_GENERATOR);
        } else if (classModelBuilder.getIdGenerator() != null || !type.equals(BsonObjectId.class)) {
        } else {
            classModelBuilder.idGenerator(IdGenerators.BSON_OBJECT_ID_GENERATOR);
        }
    }
}
