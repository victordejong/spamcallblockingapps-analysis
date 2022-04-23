package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* renamed from: $r8$backportedMethods$utility$List$1$copyOfList  reason: invalid class name and default package */
/* loaded from: classes-dex2jar.jar:$r8$backportedMethods$utility$List$1$copyOfList.class */
public /* synthetic */ class C$r8$backportedMethods$utility$List$1$copyOfList {
    public static /* synthetic */ List copyOf(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Object obj : collection) {
            Objects.requireNonNull(obj);
            arrayList.add(obj);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
