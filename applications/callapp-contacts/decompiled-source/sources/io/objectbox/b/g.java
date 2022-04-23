package io.objectbox.b;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/objectbox/b/g.class */
public interface g<SOURCE> extends Serializable {
    <TARGET> List<TARGET> getToMany(SOURCE source);
}
