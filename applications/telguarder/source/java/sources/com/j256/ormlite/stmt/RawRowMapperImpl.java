package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/RawRowMapperImpl.class */
public class RawRowMapperImpl<T, ID> implements RawRowMapper<T> {
    private final Dao<T, ID> dao;
    private final TableInfo<T, ID> tableInfo;

    public RawRowMapperImpl(Dao<T, ID> dao) {
        this.dao = dao;
        this.tableInfo = dao.getTableInfo();
    }

    @Override // com.j256.ormlite.dao.RawRowMapper
    public T mapRow(String[] strArr, String[] strArr2) throws SQLException {
        T createObjectInstance = this.dao.createObjectInstance();
        for (int i = 0; i < strArr.length; i++) {
            if (i < strArr2.length) {
                FieldType fieldTypeByColumnName = this.tableInfo.getFieldTypeByColumnName(strArr[i]);
                fieldTypeByColumnName.assignField(this.dao.getConnectionSource(), createObjectInstance, fieldTypeByColumnName.convertStringToJavaField(strArr2[i], i), false, null);
            }
        }
        return createObjectInstance;
    }
}
