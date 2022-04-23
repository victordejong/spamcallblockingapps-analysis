package io.objectbox.converter;
/* loaded from: classes5-dex2jar.jar:io/objectbox/converter/PropertyConverter.class */
public interface PropertyConverter<P, D> {
    D convertToDatabaseValue(P p);

    P convertToEntityProperty(D d2);
}
