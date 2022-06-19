package com.j256.ormlite.misc;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DataPersisterManager;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.p017db.DatabaseType;
import java.lang.reflect.Field;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Version;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/misc/JavaxPersistenceImpl.class */
public class JavaxPersistenceImpl implements JavaxPersistenceConfigurer {
    private boolean stringNotEmpty(String str) {
        return str != null && str.length() > 0;
    }

    @Override // com.j256.ormlite.misc.JavaxPersistenceConfigurer
    public DatabaseFieldConfig createFieldConfig(DatabaseType databaseType, Field field) {
        FetchType fetch;
        Column annotation = field.getAnnotation(Column.class);
        Basic annotation2 = field.getAnnotation(Basic.class);
        Id annotation3 = field.getAnnotation(Id.class);
        GeneratedValue annotation4 = field.getAnnotation(GeneratedValue.class);
        OneToOne annotation5 = field.getAnnotation(OneToOne.class);
        OneToMany annotation6 = field.getAnnotation(OneToMany.class);
        ManyToOne annotation7 = field.getAnnotation(ManyToOne.class);
        JoinColumn annotation8 = field.getAnnotation(JoinColumn.class);
        Enumerated annotation9 = field.getAnnotation(Enumerated.class);
        Version annotation10 = field.getAnnotation(Version.class);
        if (annotation == null && annotation2 == null && annotation3 == null && annotation5 == null && annotation6 == null && annotation7 == null && annotation9 == null && annotation10 == null) {
            return null;
        }
        DatabaseFieldConfig databaseFieldConfig = new DatabaseFieldConfig();
        String name = field.getName();
        String str = name;
        if (databaseType.isEntityNamesMustBeUpCase()) {
            str = databaseType.upCaseEntityName(name);
        }
        databaseFieldConfig.setFieldName(str);
        if (annotation != null) {
            if (stringNotEmpty(annotation.name())) {
                databaseFieldConfig.setColumnName(annotation.name());
            }
            if (stringNotEmpty(annotation.columnDefinition())) {
                databaseFieldConfig.setColumnDefinition(annotation.columnDefinition());
            }
            databaseFieldConfig.setWidth(annotation.length());
            databaseFieldConfig.setCanBeNull(annotation.nullable());
            databaseFieldConfig.setUnique(annotation.unique());
        }
        if (annotation2 != null) {
            databaseFieldConfig.setCanBeNull(annotation2.optional());
        }
        boolean z = true;
        if (annotation3 != null) {
            if (annotation4 == null) {
                databaseFieldConfig.setId(true);
            } else {
                databaseFieldConfig.setGeneratedId(true);
            }
        }
        if (annotation6 != null) {
            databaseFieldConfig.setForeignCollection(true);
            String mappedBy = annotation6.mappedBy();
            if (stringNotEmpty(mappedBy)) {
                databaseFieldConfig.setForeignCollectionForeignFieldName(mappedBy);
            }
            if (annotation6.fetch() == FetchType.EAGER) {
                databaseFieldConfig.setForeignCollectionEager(true);
            }
        } else if (annotation5 != null || annotation7 != null) {
            if (Collection.class.isAssignableFrom(field.getType()) || ForeignCollection.class.isAssignableFrom(field.getType())) {
                databaseFieldConfig.setForeignCollection(true);
                if (annotation8 != null && stringNotEmpty(annotation8.name())) {
                    databaseFieldConfig.setForeignCollectionColumnName(annotation8.name());
                }
                if (annotation7 != null && (fetch = annotation7.fetch()) != null && fetch == FetchType.EAGER) {
                    databaseFieldConfig.setForeignCollectionEager(true);
                }
            } else {
                databaseFieldConfig.setForeign(true);
                if (annotation8 != null) {
                    if (stringNotEmpty(annotation8.name())) {
                        databaseFieldConfig.setColumnName(annotation8.name());
                    }
                    databaseFieldConfig.setCanBeNull(annotation8.nullable());
                    databaseFieldConfig.setUnique(annotation8.unique());
                }
            }
        }
        if (annotation9 != null) {
            EnumType value = annotation9.value();
            if (value == null || value != EnumType.STRING) {
                databaseFieldConfig.setDataType(DataType.ENUM_INTEGER);
            } else {
                databaseFieldConfig.setDataType(DataType.ENUM_STRING);
            }
        }
        if (annotation10 != null) {
            databaseFieldConfig.setVersion(true);
        }
        if (databaseFieldConfig.getDataPersister() == null) {
            databaseFieldConfig.setDataPersister(DataPersisterManager.lookupForField(field));
        }
        if (DatabaseFieldConfig.findGetMethod(field, databaseType, false) == null || DatabaseFieldConfig.findSetMethod(field, databaseType, false) == null) {
            z = false;
        }
        databaseFieldConfig.setUseGetSet(z);
        return databaseFieldConfig;
    }

    @Override // com.j256.ormlite.misc.JavaxPersistenceConfigurer
    public String getEntityName(Class<?> cls) {
        Entity annotation = cls.getAnnotation(Entity.class);
        Table annotation2 = cls.getAnnotation(Table.class);
        if (annotation == null || !stringNotEmpty(annotation.name())) {
            if (annotation2 != null && stringNotEmpty(annotation2.name())) {
                return annotation2.name();
            }
            return null;
        }
        return annotation.name();
    }
}
