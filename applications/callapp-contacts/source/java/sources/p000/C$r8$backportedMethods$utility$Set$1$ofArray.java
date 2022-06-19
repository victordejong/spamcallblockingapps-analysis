package p000;

import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
/* renamed from: $r8$backportedMethods$utility$Set$1$ofArray */
/* loaded from: classes-dex2jar.jar:$r8$backportedMethods$utility$Set$1$ofArray.class */
public /* synthetic */ class C$r8$backportedMethods$utility$Set$1$ofArray {
    /* renamed from: of */
    public static /* synthetic */ Set m46607of(Object[] objArr) {
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
