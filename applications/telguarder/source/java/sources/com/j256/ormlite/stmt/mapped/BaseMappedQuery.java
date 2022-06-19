package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.BaseForeignCollection;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/mapped/BaseMappedQuery.class */
public abstract class BaseMappedQuery<T, ID> extends BaseMappedStatement<T, ID> implements GenericRowMapper<T> {
    private Map<String, Integer> columnPositions = null;
    private Object parent = null;
    private Object parentId = null;
    protected final FieldType[] resultsFieldTypes;

    public BaseMappedQuery(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr, FieldType[] fieldTypeArr2) {
        super(dao, tableInfo, str, fieldTypeArr);
        this.resultsFieldTypes = fieldTypeArr2;
    }

    @Override // com.j256.ormlite.stmt.GenericRowMapper
    public T mapRow(DatabaseResults databaseResults) throws SQLException {
        boolean z;
        FieldType[] fieldTypeArr;
        BaseForeignCollection buildForeignCollection;
        boolean z2;
        Map<String, Integer> map = this.columnPositions;
        Map<String, Integer> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
        }
        ObjectCache objectCacheForRetrieve = databaseResults.getObjectCacheForRetrieve();
        if (objectCacheForRetrieve != null) {
            T t = (T) objectCacheForRetrieve.get(this.clazz, this.idField.resultToJava(databaseResults, map2));
            if (t != null) {
                return t;
            }
        }
        T createObjectInstance = this.dao.createObjectInstance();
        FieldType[] fieldTypeArr2 = this.resultsFieldTypes;
        int length = fieldTypeArr2.length;
        Object obj = null;
        int i = 0;
        boolean z3 = false;
        while (true) {
            z = z3;
            if (i >= length) {
                break;
            }
            FieldType fieldType = fieldTypeArr2[i];
            if (fieldType.isForeignCollection()) {
                z2 = true;
            } else {
                Object resultToJava = fieldType.resultToJava(databaseResults, map2);
                if (resultToJava == null || this.parent == null || fieldType.getField().getType() != this.parent.getClass() || !resultToJava.equals(this.parentId)) {
                    fieldType.assignField(this.connectionSource, createObjectInstance, resultToJava, false, objectCacheForRetrieve);
                } else {
                    fieldType.assignField(this.connectionSource, createObjectInstance, this.parent, true, objectCacheForRetrieve);
                }
                z2 = z;
                if (fieldType.isId()) {
                    obj = resultToJava;
                    z2 = z;
                }
            }
            i++;
            z3 = z2;
        }
        if (z) {
            for (FieldType fieldType2 : this.resultsFieldTypes) {
                if (fieldType2.isForeignCollection() && (buildForeignCollection = fieldType2.buildForeignCollection(createObjectInstance, obj)) != null) {
                    fieldType2.assignField(this.connectionSource, createObjectInstance, buildForeignCollection, false, objectCacheForRetrieve);
                }
            }
        }
        ObjectCache objectCacheForStore = databaseResults.getObjectCacheForStore();
        if (objectCacheForStore != null && obj != null) {
            objectCacheForStore.put(this.clazz, obj, createObjectInstance);
        }
        if (this.columnPositions == null) {
            this.columnPositions = map2;
        }
        return createObjectInstance;
    }

    public void setParentInformation(Object obj, Object obj2) {
        this.parent = obj;
        this.parentId = obj2;
    }
}
