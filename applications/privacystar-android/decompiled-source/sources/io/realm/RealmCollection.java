package io.realm;

import io.realm.internal.ManagableObject;
import java.util.Collection;
import java.util.Date;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmCollection.class */
public interface RealmCollection<E> extends Collection<E>, ManagableObject {
    double average(String str);

    @Override // java.util.Collection, java.util.List, io.realm.RealmCollection
    boolean contains(@Nullable Object obj);

    boolean deleteAllFromRealm();

    boolean isLoaded();

    boolean isManaged();

    boolean isValid();

    boolean load();

    @Nullable
    Number max(String str);

    @Nullable
    Date maxDate(String str);

    @Nullable
    Number min(String str);

    @Nullable
    Date minDate(String str);

    Number sum(String str);

    RealmQuery<E> where();
}
