package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.d;
import java.io.File;
import java.util.List;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ce.class */
public final /* synthetic */ class ce implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ch f31233a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f31234b = 0;

    ce(ch chVar) {
        this.f31233a = chVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(ch chVar, byte[] bArr) {
        this.f31233a = chVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        File[] listFiles;
        if (this.f31234b != 0) {
            ch chVar = this.f31233a;
            d<List<String>> a2 = chVar.f31239b.a().a(chVar.f31238a.a());
            Executor a3 = chVar.f31240c.a();
            w wVar = chVar.f31238a;
            wVar.getClass();
            a2.a(a3, cf.a(wVar));
            a2.a(chVar.f31240c.a(), cg.f31236a);
            return;
        }
        ch chVar2 = this.f31233a;
        for (File file : chVar2.f31238a.e()) {
            if (file.listFiles() != null) {
                for (File file2 : file.listFiles()) {
                    File file3 = new File(file2, "stale.tmp");
                    if (file3.exists() && System.currentTimeMillis() - file3.lastModified() > w.f31313a) {
                        w.b(file2);
                    }
                }
            }
        }
        chVar2.f31238a.b();
        chVar2.f31238a.c();
    }
}
