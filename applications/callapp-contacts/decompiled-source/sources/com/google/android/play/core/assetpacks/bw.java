package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.ah;
import com.google.android.play.core.internal.ba;
import com.google.android.play.core.internal.h;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bw.class */
public final class bw {

    /* renamed from: a  reason: collision with root package name */
    private static final h f31210a = new h("PatchSliceTaskHandler");

    /* renamed from: b  reason: collision with root package name */
    private final w f31211b;

    /* renamed from: c  reason: collision with root package name */
    private final ba<cs> f31212c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(w wVar, ba<cs> baVar) {
        this.f31211b = wVar;
        this.f31212c = baVar;
    }

    public final void a(bv bvVar) {
        File a2 = this.f31211b.a(bvVar.k, bvVar.f31206a, bvVar.f31207b);
        File file = new File(this.f31211b.b(bvVar.k, bvVar.f31206a, bvVar.f31207b), bvVar.f);
        try {
            InputStream inputStream = bvVar.h;
            if (bvVar.e == 2) {
                inputStream = new GZIPInputStream(inputStream, PropertyFlags.UNSIGNED);
            }
            y yVar = new y(a2, file);
            File a3 = this.f31211b.a(bvVar.k, bvVar.f31208c, bvVar.f31209d, bvVar.f);
            if (!a3.exists()) {
                a3.mkdirs();
            }
            by byVar = new by(this.f31211b, bvVar.k, bvVar.f31208c, bvVar.f31209d, bvVar.f);
            ah.a(yVar, inputStream, new ao(a3, byVar), bvVar.g);
            byVar.b(0);
            inputStream.close();
            f31210a.c("Patching and extraction finished for slice %s of pack %s.", bvVar.f, bvVar.k);
            this.f31212c.a().a(bvVar.j, bvVar.k, bvVar.f, 0);
            try {
                bvVar.h.close();
            } catch (IOException e) {
                f31210a.d("Could not close file for slice %s of pack %s.", bvVar.f, bvVar.k);
            }
        } catch (IOException e2) {
            f31210a.b("IOException during patching %s.", e2.getMessage());
            throw new al(String.format("Error patching slice %s of pack %s.", bvVar.f, bvVar.k), e2, bvVar.j);
        }
    }
}
