package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.AbstractC15180d;
import java.io.File;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.ce */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ce.class */
public final /* synthetic */ class RunnableC14958ce implements Runnable {

    /* renamed from: a */
    private final C14961ch f54606a;

    /* renamed from: b */
    private final /* synthetic */ int f54607b = 0;

    RunnableC14958ce(C14961ch c14961ch) {
        this.f54606a = c14961ch;
    }

    public RunnableC14958ce(C14961ch c14961ch, byte[] bArr) {
        this.f54606a = c14961ch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        File[] listFiles;
        if (this.f54607b != 0) {
            C14961ch c14961ch = this.f54606a;
            AbstractC15180d<List<String>> mo9686a = c14961ch.f54612b.mo9335a().mo9686a(c14961ch.f54611a.m9669a());
            Executor mo9335a = c14961ch.f54613c.mo9335a();
            C14996w c14996w = c14961ch.f54611a;
            c14996w.getClass();
            mo9686a.mo9314a(mo9335a, C14959cf.m9708a(c14996w));
            mo9686a.mo9315a(c14961ch.f54613c.mo9335a(), C14960cg.f54609a);
            return;
        }
        C14961ch c14961ch2 = this.f54606a;
        for (File file : c14961ch2.f54611a.m9648e()) {
            if (file.listFiles() != null) {
                for (File file2 : file.listFiles()) {
                    File file3 = new File(file2, "stale.tmp");
                    if (file3.exists() && System.currentTimeMillis() - file3.lastModified() > C14996w.f54713a) {
                        C14996w.m9660b(file2);
                    }
                }
            }
        }
        c14961ch2.f54611a.m9661b();
        c14961ch2.f54611a.m9656c();
    }
}
