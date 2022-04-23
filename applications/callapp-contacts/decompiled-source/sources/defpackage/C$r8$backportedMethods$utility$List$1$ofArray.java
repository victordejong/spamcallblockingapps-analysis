package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* renamed from: $r8$backportedMethods$utility$List$1$ofArray  reason: invalid class name and default package */
/* loaded from: classes-dex2jar.jar:$r8$backportedMethods$utility$List$1$ofArray.class */
public /* synthetic */ class C$r8$backportedMethods$utility$List$1$ofArray {
    public static /* synthetic */ List of(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
            arrayList.add(obj);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
