package com.google.android.play.core.internal;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ac.class */
final class ac implements z {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f31342a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(byte[] bArr) {
    }

    @Override // com.google.android.play.core.internal.z
    public final Object[] a(Object obj, ArrayList arrayList, File file, ArrayList arrayList2) {
        return (Object[]) (this.f31342a != 0 ? ah.a(obj, "makeDexElements", Object[].class, ArrayList.class, arrayList, File.class, file, ArrayList.class, arrayList2) : ah.a(obj, "makePathElements", Object[].class, List.class, arrayList, File.class, file, List.class, arrayList2));
    }
}
