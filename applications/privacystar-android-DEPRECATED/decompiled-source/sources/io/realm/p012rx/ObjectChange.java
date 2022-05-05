package io.realm.p012rx;

import io.realm.ObjectChangeSet;
import io.realm.RealmModel;
import javax.annotation.Nullable;
/* renamed from: io.realm.rx.ObjectChange */
/* loaded from: classes2-dex2jar.jar:io/realm/rx/ObjectChange.class */
public class ObjectChange<E extends RealmModel> {
    private final ObjectChangeSet changeset;
    private final E object;

    public ObjectChange(E e, @Nullable ObjectChangeSet objectChangeSet) {
        this.object = e;
        this.changeset = objectChangeSet;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ObjectChange objectChange = (ObjectChange) obj;
        if (!this.object.equals(objectChange.object)) {
            return false;
        }
        if (this.changeset != null) {
            z = this.changeset.equals(objectChange.changeset);
        } else if (objectChange.changeset != null) {
            z = false;
        }
        return z;
    }

    @Nullable
    public ObjectChangeSet getChangeset() {
        return this.changeset;
    }

    public E getObject() {
        return this.object;
    }

    public int hashCode() {
        return (this.object.hashCode() * 31) + (this.changeset != null ? this.changeset.hashCode() : 0);
    }

    public String toString() {
        return "ObjectChange{object=" + this.object + ", changeset=" + this.changeset + '}';
    }
}
