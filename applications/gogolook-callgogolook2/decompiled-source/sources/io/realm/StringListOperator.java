package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/StringListOperator.class */
public final class StringListOperator extends ManagedListOperator<String> {
    public StringListOperator(BaseRealm baseRealm, OsList osList, Class<String> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object obj) {
        this.osList.addString((String) obj);
    }

    @Override // io.realm.ManagedListOperator
    public void checkValidValue(@Nullable Object obj) {
        if (obj != null && !(obj instanceof String)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, ManagedListOperator.INVALID_OBJECT_TYPE_MESSAGE, "java.lang.String", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    @Override // io.realm.ManagedListOperator
    @Nullable
    public String get(int i) {
        return (String) this.osList.getValue(i);
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int i, Object obj) {
        this.osList.insertString(i, (String) obj);
    }

    @Override // io.realm.ManagedListOperator
    public void setValue(int i, Object obj) {
        this.osList.setString(i, (String) obj);
    }
}
