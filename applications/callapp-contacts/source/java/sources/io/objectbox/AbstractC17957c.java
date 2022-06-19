package io.objectbox;

import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import java.io.Serializable;
/* renamed from: io.objectbox.c */
/* loaded from: classes5-dex2jar.jar:io/objectbox/c.class */
public interface AbstractC17957c<T> extends Serializable {
    C17978g<T>[] getAllProperties();

    AbstractC17949b<T> getCursorFactory();

    String getDbName();

    Class<T> getEntityClass();

    int getEntityId();

    String getEntityName();

    AbstractC17950c<T> getIdGetter();
}
