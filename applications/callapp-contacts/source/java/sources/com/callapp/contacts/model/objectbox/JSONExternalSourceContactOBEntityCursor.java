package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.JSONExternalSourceContactOBEntity_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor.class */
public final class JSONExternalSourceContactOBEntityCursor extends Cursor<JSONExternalSourceContactOBEntity> {
    private static final JSONExternalSourceContactOBEntity_.JSONExternalSourceContactOBEntityIdGetter ID_GETTER = JSONExternalSourceContactOBEntity_.__ID_GETTER;
    private static final int __ID_externalSourceId = JSONExternalSourceContactOBEntity_.externalSourceId.f62808c;
    private static final int __ID_key = JSONExternalSourceContactOBEntity_.key.f62808c;
    private static final int __ID_jsonDoc = JSONExternalSourceContactOBEntity_.jsonDoc.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor$Factory.class */
    static final class Factory implements AbstractC17949b<JSONExternalSourceContactOBEntity> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<JSONExternalSourceContactOBEntity> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new JSONExternalSourceContactOBEntityCursor(transaction, j, boxStore);
        }
    }

    public JSONExternalSourceContactOBEntityCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, JSONExternalSourceContactOBEntity_.__INSTANCE, boxStore);
    }

    public final long getId(JSONExternalSourceContactOBEntity jSONExternalSourceContactOBEntity) {
        return ID_GETTER.getId(jSONExternalSourceContactOBEntity);
    }

    public final long put(JSONExternalSourceContactOBEntity jSONExternalSourceContactOBEntity) {
        String key = jSONExternalSourceContactOBEntity.getKey();
        int i = key != null ? __ID_key : 0;
        String jsonDoc = jSONExternalSourceContactOBEntity.getJsonDoc();
        long collect313311 = collect313311(this.cursor, jSONExternalSourceContactOBEntity.getId(), 3, i, key, jsonDoc != null ? __ID_jsonDoc : 0, jsonDoc, 0, null, 0, null, __ID_externalSourceId, jSONExternalSourceContactOBEntity.getExternalSourceId(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        jSONExternalSourceContactOBEntity.setId(collect313311);
        return collect313311;
    }
}
