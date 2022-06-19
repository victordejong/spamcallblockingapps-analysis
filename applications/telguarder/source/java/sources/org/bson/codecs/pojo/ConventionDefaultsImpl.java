package org.bson.codecs.pojo;

import com.j256.ormlite.field.FieldType;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/ConventionDefaultsImpl.class */
final class ConventionDefaultsImpl implements Convention {
    @Override // org.bson.codecs.pojo.Convention
    public void apply(ClassModelBuilder<?> classModelBuilder) {
        if (classModelBuilder.getDiscriminatorKey() == null) {
            classModelBuilder.discriminatorKey("_t");
        }
        if (classModelBuilder.getDiscriminator() == null && classModelBuilder.getType() != null) {
            classModelBuilder.discriminator(classModelBuilder.getType().getName());
        }
        for (PropertyModelBuilder<?> propertyModelBuilder : classModelBuilder.getPropertyModelBuilders()) {
            if (classModelBuilder.getIdPropertyName() == null) {
                String name = propertyModelBuilder.getName();
                if (name.equals(FieldType.FOREIGN_ID_FIELD_SUFFIX) || name.equals("id")) {
                    classModelBuilder.idPropertyName(name);
                }
            }
        }
    }
}
