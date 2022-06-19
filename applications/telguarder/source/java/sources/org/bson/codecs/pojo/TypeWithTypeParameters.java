package org.bson.codecs.pojo;

import java.util.List;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/TypeWithTypeParameters.class */
public interface TypeWithTypeParameters<T> {
    Class<T> getType();

    List<? extends TypeWithTypeParameters<?>> getTypeParameters();
}
