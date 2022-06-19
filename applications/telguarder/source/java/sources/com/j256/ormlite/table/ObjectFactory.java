package com.j256.ormlite.table;

import java.lang.reflect.Constructor;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/table/ObjectFactory.class */
public interface ObjectFactory<T> {
    T createObject(Constructor<T> constructor, Class<T> cls) throws SQLException;
}
