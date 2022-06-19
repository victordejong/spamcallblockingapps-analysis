package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/ObjectIdListOperator.class */
public final class ObjectIdListOperator extends ManagedListOperator<ObjectId> {
    public ObjectIdListOperator(BaseRealm baseRealm, OsList osList, Class<ObjectId> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object obj) {
        this.osList.addObjectId((ObjectId) obj);
    }

    @Override // io.realm.ManagedListOperator
    protected void checkValidValue(@Nullable Object obj) {
        if (obj != null && !(obj instanceof ObjectId)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "org.bson.types.ObjectId", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    @Override // io.realm.ManagedListOperator
    @Nullable
    public ObjectId get(int i) {
        return (ObjectId) this.osList.getValue(i);
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int i, Object obj) {
        this.osList.insertObjectId(i, (ObjectId) obj);
    }

    @Override // io.realm.ManagedListOperator
    protected void setValue(int i, Object obj) {
        this.osList.setObjectId(i, (ObjectId) obj);
    }
}
