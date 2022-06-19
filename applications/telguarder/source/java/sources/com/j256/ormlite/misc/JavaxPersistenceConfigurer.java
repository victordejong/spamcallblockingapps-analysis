package com.j256.ormlite.misc;

import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.p017db.DatabaseType;
import java.lang.reflect.Field;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/misc/JavaxPersistenceConfigurer.class */
public interface JavaxPersistenceConfigurer {
    DatabaseFieldConfig createFieldConfig(DatabaseType databaseType, Field field) throws SQLException;

    String getEntityName(Class<?> cls);
}
