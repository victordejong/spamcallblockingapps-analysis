package p000;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
/* renamed from: $r8$backportedMethods$utility$Set$1$copyOfSet */
/* loaded from: classes-dex2jar.jar:$r8$backportedMethods$utility$Set$1$copyOfSet.class */
public /* synthetic */ class C$r8$backportedMethods$utility$Set$1$copyOfSet {
    public static /* synthetic */ Set copyOf(Collection collection) {
        HashSet hashSet = new HashSet(collection.size());
        for (Object obj : collection) {
            Objects.requireNonNull(obj);
            hashSet.add(obj);
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
