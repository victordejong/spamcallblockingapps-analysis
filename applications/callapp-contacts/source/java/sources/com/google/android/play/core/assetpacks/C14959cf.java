package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.AbstractC15179c;
import java.io.File;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.cf */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cf.class */
final /* synthetic */ class C14959cf implements AbstractC15179c {

    /* renamed from: a */
    private final C14996w f54608a;

    private C14959cf(C14996w c14996w) {
        this.f54608a = c14996w;
    }

    /* renamed from: a */
    public static AbstractC15179c m9708a(C14996w c14996w) {
        return new C14959cf(c14996w);
    }

    @Override // com.google.android.play.core.tasks.AbstractC15179c
    public final void onSuccess(Object obj) {
        C14996w c14996w = this.f54608a;
        List list = (List) obj;
        int m9734a = c14996w.f54716b.m9734a();
        for (File file : c14996w.m9648e()) {
            if (!list.contains(file.getName()) && C14996w.m9668a(file) != m9734a) {
                C14996w.m9660b(file);
            }
        }
    }
}
