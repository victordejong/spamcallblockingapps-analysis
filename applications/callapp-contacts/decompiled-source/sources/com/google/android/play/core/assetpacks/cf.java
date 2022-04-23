package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.c;
import java.io.File;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cf.class */
final /* synthetic */ class cf implements c {

    /* renamed from: a  reason: collision with root package name */
    private final w f31235a;

    private cf(w wVar) {
        this.f31235a = wVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c a(w wVar) {
        return new cf(wVar);
    }

    @Override // com.google.android.play.core.tasks.c
    public final void onSuccess(Object obj) {
        w wVar = this.f31235a;
        List list = (List) obj;
        int a2 = wVar.f31316b.a();
        for (File file : wVar.e()) {
            if (!list.contains(file.getName()) && w.a(file) != a2) {
                w.b(file);
            }
        }
    }
}
