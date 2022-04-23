package io.objectbox;

import io.objectbox.b.b;
import java.io.Serializable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/c.class */
public interface c<T> extends Serializable {
    g<T>[] getAllProperties();

    b<T> getCursorFactory();

    String getDbName();

    Class<T> getEntityClass();

    int getEntityId();

    String getEntityName();

    io.objectbox.b.c<T> getIdGetter();
}
