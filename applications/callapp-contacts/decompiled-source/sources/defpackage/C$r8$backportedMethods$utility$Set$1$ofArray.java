package defpackage;

import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
/* renamed from: $r8$backportedMethods$utility$Set$1$ofArray  reason: invalid class name and default package */
/* loaded from: classes-dex2jar.jar:$r8$backportedMethods$utility$Set$1$ofArray.class */
public /* synthetic */ class C$r8$backportedMethods$utility$Set$1$ofArray {
    public static /* synthetic */ Set of(Object[] objArr) {
        HashSet hashSet = new HashSet(objArr.length);
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
            if (!hashSet.add(obj)) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
