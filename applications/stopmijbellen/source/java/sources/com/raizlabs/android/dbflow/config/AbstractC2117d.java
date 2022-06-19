package com.raizlabs.android.dbflow.config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p235s8.AbstractC4332g;
/* renamed from: com.raizlabs.android.dbflow.config.d */
/* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/d.class */
public abstract class AbstractC2117d {
    public final Map<Class<?>, AbstractC2116c> databaseDefinitionMap = new HashMap();
    public final Map<String, AbstractC2116c> databaseNameMap = new HashMap();
    public final Map<Class<?>, AbstractC2116c> databaseClassLookupMap = new HashMap();
    public final Map<Class<?>, AbstractC4332g> typeConverters = new HashMap();

    public AbstractC2116c getDatabase(Class<?> cls) {
        return this.databaseClassLookupMap.get(cls);
    }

    public AbstractC2116c getDatabase(String str) {
        return this.databaseNameMap.get(str);
    }

    public List<AbstractC2116c> getDatabaseDefinitions() {
        return new ArrayList(this.databaseNameMap.values());
    }

    public AbstractC2116c getDatabaseForTable(Class<?> cls) {
        return this.databaseDefinitionMap.get(cls);
    }

    public AbstractC4332g getTypeConverterForClass(Class<?> cls) {
        return this.typeConverters.get(cls);
    }

    public void putDatabaseForTable(Class<?> cls, AbstractC2116c abstractC2116c) {
        this.databaseDefinitionMap.put(cls, abstractC2116c);
        this.databaseNameMap.put(abstractC2116c.mo3893h(), abstractC2116c);
        this.databaseClassLookupMap.put(abstractC2116c.mo3895f(), abstractC2116c);
    }

    public void reset() {
        this.databaseDefinitionMap.clear();
        this.databaseNameMap.clear();
        this.databaseClassLookupMap.clear();
        this.typeConverters.clear();
    }
}
