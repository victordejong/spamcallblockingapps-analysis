package io.objectbox.b;

import io.objectbox.relation.ToOne;
import java.io.Serializable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/b/h.class */
public interface h<SOURCE> extends Serializable {
    <TARGET> ToOne<TARGET> getToOne(SOURCE source);
}
