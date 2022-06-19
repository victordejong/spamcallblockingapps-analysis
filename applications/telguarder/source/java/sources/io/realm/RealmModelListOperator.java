package io.realm;

import io.realm.internal.OsList;
import io.realm.internal.OsObjectStore;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Util;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmModelListOperator.class */
public final class RealmModelListOperator<T> extends ManagedListOperator<T> {
    @Nullable
    private final String className;

    public RealmModelListOperator(BaseRealm baseRealm, OsList osList, @Nullable Class<T> cls, @Nullable String str) {
        super(baseRealm, osList, cls);
        this.className = str;
    }

    private boolean checkCanObjectBeCopied(BaseRealm baseRealm, RealmModel realmModel) {
        if (realmModel instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) realmModel;
            if (!(realmObjectProxy instanceof DynamicRealmObject)) {
                if (realmObjectProxy.realmGet$proxyState().getRow$realm() == null || !realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(baseRealm.getPath())) {
                    return true;
                }
                if (baseRealm != realmObjectProxy.realmGet$proxyState().getRealm$realm()) {
                    throw new IllegalArgumentException("Cannot copy an object from another Realm instance.");
                }
                return false;
            }
            String str = this.className;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != baseRealm) {
                if (baseRealm.threadId != realmObjectProxy.realmGet$proxyState().getRealm$realm().threadId) {
                    throw new IllegalStateException("Cannot copy an object to a Realm instance created in another thread.");
                }
                throw new IllegalArgumentException("Cannot copy DynamicRealmObject between Realm instances.");
            }
            String type = ((DynamicRealmObject) realmModel).getType();
            if (!str.equals(type)) {
                throw new IllegalArgumentException(String.format(Locale.US, "The object has a different type from list's. Type of the list is '%s', type of object is '%s'.", str, type));
            }
            return false;
        }
        return true;
    }

    private void checkInsertIndex(int i) {
        int size = size();
        if (i < 0 || size < i) {
            throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.osList.size());
        }
    }

    private <E extends RealmModel> E copyToRealm(E e) {
        Realm realm = (Realm) this.realm;
        return OsObjectStore.getPrimaryKeyForObject(realm.getSharedRealm(), realm.getConfiguration().getSchemaMediator().getSimpleClassName(e.getClass())) != null ? (E) realm.copyToRealmOrUpdate((Realm) e, new ImportFlag[0]) : (E) realm.copyToRealm((Realm) e, new ImportFlag[0]);
    }

    private boolean isEmbedded(RealmModel realmModel) {
        if (this.realm instanceof Realm) {
            return this.realm.getSchema().getSchemaForClass((Class<? extends RealmModel>) realmModel.getClass()).isEmbedded();
        }
        return this.realm.getSchema().getSchemaForClass(((DynamicRealmObject) realmModel).getType()).isEmbedded();
    }

    private void updateEmbeddedObject(RealmModel realmModel, long j) {
        RealmProxyMediator schemaMediator = this.realm.getConfiguration().getSchemaMediator();
        Class<? extends RealmModel> originalModelClass = Util.getOriginalModelClass(realmModel.getClass());
        schemaMediator.updateEmbeddedObject((Realm) this.realm, realmModel, schemaMediator.newInstance(originalModelClass, this.realm, ((Realm) this.realm).getTable(originalModelClass).getUncheckedRow(j), this.realm.getSchema().getColumnInfo(originalModelClass), true, Collections.EMPTY_LIST), new HashMap(), Collections.EMPTY_SET);
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object obj) {
        RealmModel realmModel = (RealmModel) obj;
        boolean checkCanObjectBeCopied = checkCanObjectBeCopied(this.realm, realmModel);
        if (isEmbedded(realmModel)) {
            if (obj instanceof DynamicRealmObject) {
                throw new IllegalArgumentException("Embedded objects are not supported by RealmLists of DynamicRealmObjects yet.");
            }
            updateEmbeddedObject(realmModel, this.osList.createAndAddEmbeddedObject());
            return;
        }
        RealmModel realmModel2 = realmModel;
        if (checkCanObjectBeCopied) {
            realmModel2 = copyToRealm(realmModel);
        }
        this.osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getObjectKey());
    }

    @Override // io.realm.ManagedListOperator
    protected void checkValidValue(@Nullable Object obj) {
        if (obj != null) {
            if (!(obj instanceof RealmModel)) {
                throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.String", obj.getClass().getName()));
            }
            return;
        }
        throw new IllegalArgumentException("RealmList does not accept null values.");
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return true;
    }

    @Override // io.realm.ManagedListOperator
    public T get(int i) {
        return (T) this.realm.get((Class<RealmModel>) this.clazz, this.className, this.osList.getUncheckedRow(i));
    }

    @Override // io.realm.ManagedListOperator
    protected void insertNull(int i) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int i, Object obj) {
        checkInsertIndex(i);
        RealmModel realmModel = (RealmModel) obj;
        boolean checkCanObjectBeCopied = checkCanObjectBeCopied(this.realm, realmModel);
        if (isEmbedded(realmModel)) {
            if (obj instanceof DynamicRealmObject) {
                throw new IllegalArgumentException("Embedded objects are not supported by RealmLists of DynamicRealmObjects yet.");
            }
            updateEmbeddedObject(realmModel, this.osList.createAndAddEmbeddedObject(i));
            return;
        }
        RealmModel realmModel2 = realmModel;
        if (checkCanObjectBeCopied) {
            realmModel2 = copyToRealm(realmModel);
        }
        this.osList.insertRow(i, ((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getObjectKey());
    }

    @Override // io.realm.ManagedListOperator
    protected void setNull(int i) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // io.realm.ManagedListOperator
    protected void setValue(int i, Object obj) {
        RealmModel realmModel = (RealmModel) obj;
        boolean checkCanObjectBeCopied = checkCanObjectBeCopied(this.realm, realmModel);
        if (isEmbedded(realmModel)) {
            if (obj instanceof DynamicRealmObject) {
                throw new IllegalArgumentException("Embedded objects are not supported by RealmLists of DynamicRealmObjects yet.");
            }
            updateEmbeddedObject(realmModel, this.osList.createAndSetEmbeddedObject(i));
            return;
        }
        RealmModel realmModel2 = realmModel;
        if (checkCanObjectBeCopied) {
            realmModel2 = copyToRealm(realmModel);
        }
        this.osList.setRow(i, ((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getObjectKey());
    }
}
