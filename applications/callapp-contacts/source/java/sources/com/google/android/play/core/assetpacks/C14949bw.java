package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.C15017ah;
import com.google.android.play.core.internal.C15072h;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
/* renamed from: com.google.android.play.core.assetpacks.bw */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bw.class */
public final class C14949bw {

    /* renamed from: a */
    private static final C15072h f54576a = new C15072h("PatchSliceTaskHandler");

    /* renamed from: b */
    private final C14996w f54577b;

    /* renamed from: c */
    private final AbstractC15037ba<AbstractC14972cs> f54578c;

    public C14949bw(C14996w c14996w, AbstractC15037ba<AbstractC14972cs> abstractC15037ba) {
        this.f54577b = c14996w;
        this.f54578c = abstractC15037ba;
    }

    /* renamed from: a */
    public final void m9733a(C14948bv c14948bv) {
        File m9664a = this.f54577b.m9664a(c14948bv.f54507k, c14948bv.f54568a, c14948bv.f54569b);
        File file = new File(this.f54577b.m9658b(c14948bv.f54507k, c14948bv.f54568a, c14948bv.f54569b), c14948bv.f54573f);
        try {
            GZIPInputStream gZIPInputStream = c14948bv.f54575h;
            if (c14948bv.f54572e == 2) {
                gZIPInputStream = new GZIPInputStream(gZIPInputStream, PropertyFlags.UNSIGNED);
            }
            C14998y c14998y = new C14998y(m9664a, file);
            File m9662a = this.f54577b.m9662a(c14948bv.f54507k, c14948bv.f54570c, c14948bv.f54571d, c14948bv.f54573f);
            if (!m9662a.exists()) {
                m9662a.mkdirs();
            }
            C14951by c14951by = new C14951by(this.f54577b, c14948bv.f54507k, c14948bv.f54570c, c14948bv.f54571d, c14948bv.f54573f);
            C15017ah.m9605a(c14998y, gZIPInputStream, new C14914ao(m9662a, c14951by), c14948bv.f54574g);
            c14951by.m9723b(0);
            gZIPInputStream.close();
            f54576a.m9508c("Patching and extraction finished for slice %s of pack %s.", c14948bv.f54573f, c14948bv.f54507k);
            this.f54578c.mo9335a().mo9692a(c14948bv.f54506j, c14948bv.f54507k, c14948bv.f54573f, 0);
            try {
                c14948bv.f54575h.close();
            } catch (IOException e) {
                f54576a.m9507d("Could not close file for slice %s of pack %s.", c14948bv.f54573f, c14948bv.f54507k);
            }
        } catch (IOException e2) {
            f54576a.m9509b("IOException during patching %s.", e2.getMessage());
            throw new C14911al(String.format("Error patching slice %s of pack %s.", c14948bv.f54573f, c14948bv.f54507k), e2, c14948bv.f54506j);
        }
    }
}
