package org.bson.codecs.pojo;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.ArrayList;
import org.bson.codecs.pojo.annotations.BsonDiscriminator;
import org.bson.codecs.pojo.annotations.BsonId;
import org.bson.codecs.pojo.annotations.BsonIgnore;
import org.bson.codecs.pojo.annotations.BsonProperty;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/ConventionAnnotationImpl.class */
final class ConventionAnnotationImpl implements Convention {
    /* JADX WARN: Multi-variable type inference failed */
    private <T, S> PropertyModelBuilder<S> addCreatorPropertyToClassModelBuilder(ClassModelBuilder<T> classModelBuilder, String str, Class<S> cls) {
        PropertyModelBuilder propertyModelBuilder = (PropertyModelBuilder<T>) PojoBuilderHelper.createPropertyModelBuilder(new PropertyMetadata(str, classModelBuilder.getType().getSimpleName(), TypeData.builder(cls).build())).readName(null).writeName(str);
        classModelBuilder.addProperty(propertyModelBuilder);
        return propertyModelBuilder;
    }

    private void cleanPropertyBuilders(ClassModelBuilder<?> classModelBuilder) {
        ArrayList<String> arrayList = new ArrayList();
        for (PropertyModelBuilder<?> propertyModelBuilder : classModelBuilder.getPropertyModelBuilders()) {
            if (!propertyModelBuilder.isReadable() && !propertyModelBuilder.isWritable()) {
                arrayList.add(propertyModelBuilder.getName());
            }
        }
        for (String str : arrayList) {
            classModelBuilder.removeProperty(str);
        }
    }

    private void processClassAnnotation(ClassModelBuilder<?> classModelBuilder, Annotation annotation) {
        if (annotation instanceof BsonDiscriminator) {
            BsonDiscriminator bsonDiscriminator = (BsonDiscriminator) annotation;
            String key = bsonDiscriminator.key();
            if (!key.equals("")) {
                classModelBuilder.discriminatorKey(key);
            }
            String value = bsonDiscriminator.value();
            if (!value.equals("")) {
                classModelBuilder.discriminator(value);
            }
            classModelBuilder.enableDiscriminator(true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0094, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0187, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a2, code lost:
        if (r11 == null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01a5, code lost:
        r0 = r11.getProperties();
        r0 = r11.getParameterTypes();
        r0 = r11.getParameterGenericTypes();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01c5, code lost:
        if (r0.size() != r0.size()) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01c8, code lost:
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01d4, code lost:
        if (r13 >= r0.size()) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01db, code lost:
        if (r11.getIdPropertyIndex() == null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01ea, code lost:
        if (r11.getIdPropertyIndex().equals(java.lang.Integer.valueOf(r13)) == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01ed, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01f3, code lost:
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01f6, code lost:
        r0 = r0.get(r13);
        r0 = r0.get(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0214, code lost:
        if (r19 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0217, code lost:
        r14 = r9.getProperty(r9.getIdPropertyName());
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0224, code lost:
        r0 = r0.get(r13);
        r0 = r9.getPropertyModelBuilders().iterator();
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0240, code lost:
        r16 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x024b, code lost:
        if (r0.hasNext() == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x024e, code lost:
        r16 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0269, code lost:
        if (r0.value().equals(r16.getWriteName()) == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x027e, code lost:
        if (r0.value().equals(r16.getReadName()) == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0281, code lost:
        r14 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x028a, code lost:
        if (r16 != null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x028d, code lost:
        r14 = r9.getProperty(r0.value());
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x029d, code lost:
        r14 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02a3, code lost:
        if (r14 != null) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02a6, code lost:
        r14 = addCreatorPropertyToClassModelBuilder(r9, r0.value(), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02c8, code lost:
        if (r0.value().equals(r14.getName()) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02cb, code lost:
        r14.writeName(r0.value());
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02d8, code lost:
        tryToExpandToGenericType(r0, r14, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02eb, code lost:
        if (r14.getTypeData().isAssignableFrom(r0) == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02ee, code lost:
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x031b, code lost:
        throw r11.getError(r0, java.lang.String.format("Invalid Property type for '%s'. Expected %s, found %s.", r14.getWriteName(), r14.getTypeData().getType(), r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x031c, code lost:
        r9.instanceCreatorFactory(new org.bson.codecs.pojo.InstanceCreatorFactoryImpl(r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0334, code lost:
        throw r11.getError(r0, "All parameters in the @BsonCreator method / constructor must be annotated with a @BsonProperty.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0335, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> void processCreatorAnnotation(org.bson.codecs.pojo.ClassModelBuilder<T> r9) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bson.codecs.pojo.ConventionAnnotationImpl.processCreatorAnnotation(org.bson.codecs.pojo.ClassModelBuilder):void");
    }

    private void processPropertyAnnotations(ClassModelBuilder<?> classModelBuilder, PropertyModelBuilder<?> propertyModelBuilder) {
        for (Annotation annotation : propertyModelBuilder.getReadAnnotations()) {
            if (annotation instanceof BsonProperty) {
                BsonProperty bsonProperty = (BsonProperty) annotation;
                if (!"".equals(bsonProperty.value())) {
                    propertyModelBuilder.readName(bsonProperty.value());
                }
                propertyModelBuilder.discriminatorEnabled(bsonProperty.useDiscriminator());
                if (propertyModelBuilder.getName().equals(classModelBuilder.getIdPropertyName())) {
                    classModelBuilder.idPropertyName(null);
                }
            } else if (annotation instanceof BsonId) {
                classModelBuilder.idPropertyName(propertyModelBuilder.getName());
            } else if (annotation instanceof BsonIgnore) {
                propertyModelBuilder.readName(null);
            }
        }
        for (Annotation annotation2 : propertyModelBuilder.getWriteAnnotations()) {
            if (annotation2 instanceof BsonProperty) {
                BsonProperty bsonProperty2 = (BsonProperty) annotation2;
                if (!"".equals(bsonProperty2.value())) {
                    propertyModelBuilder.writeName(bsonProperty2.value());
                }
            } else if (annotation2 instanceof BsonIgnore) {
                propertyModelBuilder.writeName(null);
            }
        }
    }

    private static <T> void tryToExpandToGenericType(Class<?> cls, PropertyModelBuilder<T> propertyModelBuilder, Type type) {
        if (cls.isAssignableFrom(propertyModelBuilder.getTypeData().getType())) {
            propertyModelBuilder.typeData(TypeData.newInstance(type, cls));
        }
    }

    @Override // org.bson.codecs.pojo.Convention
    public void apply(ClassModelBuilder<?> classModelBuilder) {
        for (Annotation annotation : classModelBuilder.getAnnotations()) {
            processClassAnnotation(classModelBuilder, annotation);
        }
        for (PropertyModelBuilder<?> propertyModelBuilder : classModelBuilder.getPropertyModelBuilders()) {
            processPropertyAnnotations(classModelBuilder, propertyModelBuilder);
        }
        processCreatorAnnotation(classModelBuilder);
        cleanPropertyBuilders(classModelBuilder);
    }
}
