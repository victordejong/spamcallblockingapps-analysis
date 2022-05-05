package com.google.firebase.appindexing.internal;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzac.class */
public final /* synthetic */ class zzac implements Comparator {
    static final Comparator zzfy = new zzac();

    private zzac() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Thing.zzb((String) obj, (String) obj2);
    }
}
