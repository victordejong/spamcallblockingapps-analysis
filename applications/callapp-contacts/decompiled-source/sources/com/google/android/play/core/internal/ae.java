package com.google.android.play.core.internal;

import java.io.File;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ae.class */
final class ae implements ad {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f31343a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(byte[] bArr) {
    }

    @Override // com.google.android.play.core.internal.ad
    public final Object[] a(Object obj, List list, List list2) {
        return (Object[]) (this.f31343a != 0 ? ah.a(obj, "makePathElements", Object[].class, List.class, list, File.class, null, List.class, list2) : ah.a(obj, "makePathElements", Object[].class, List.class, list));
    }
}
