package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.C15072h;
import io.objectbox.model.PropertyFlags;
import java.io.File;
/* renamed from: com.google.android.play.core.assetpacks.ak */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ak.class */
public final class C14910ak {

    /* renamed from: a */
    private static final C15072h f54429a = new C15072h("ExtractChunkTaskHandler");

    /* renamed from: b */
    private final byte[] f54430b = new byte[PropertyFlags.UNSIGNED];

    /* renamed from: c */
    private final C14996w f54431c;

    /* renamed from: d */
    private final AbstractC15037ba<AbstractC14972cs> f54432d;

    /* renamed from: e */
    private final AbstractC15037ba<C14993t> f54433e;

    /* renamed from: f */
    private final C14915ap f54434f;

    public C14910ak(C14996w c14996w, AbstractC15037ba<AbstractC14972cs> abstractC15037ba, AbstractC15037ba<C14993t> abstractC15037ba2, C14915ap c14915ap) {
        this.f54431c = c14996w;
        this.f54432d = abstractC15037ba;
        this.f54433e = abstractC15037ba2;
        this.f54434f = c14915ap;
    }

    /* renamed from: b */
    private final File m9780b(C14909aj c14909aj) {
        File m9662a = this.f54431c.m9662a(c14909aj.f54507k, c14909aj.f54420a, c14909aj.f54421b, c14909aj.f54422c);
        if (!m9662a.exists()) {
            m9662a.mkdirs();
        }
        return m9662a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:131|5|(1:7)(1:8)|9|10|(3:12|13|(16:15|16|(2:18|(2:20|(2:22|(2:26|27))(3:28|29|30))(3:31|32|(12:34|61|(9:63|(6:64|65|(2:69|(1:78)(4:73|(2:76|74)|136|77))|79|80|(1:82)(1:135))|134|84|85|(1:87)|88|89|(2:91|(1:93)(2:94|(1:96)(4:97|(2:99|(1:101)(2:102|103))(2:104|105)|106|107))))|108|109|110|(2:129|112)|116|127|117|120|(2:122|123)(1:137))(2:35|36)))(3:37|38|(6:40|(6:41|42|(1:44)|45|46|(1:48)(1:133))|132|50|51|(1:53))(2:54|55))|24|25|61|(0)|108|109|110|(0)|116|127|117|120|(0)(0))(3:56|57|58))|59|60|61|(0)|108|109|110|(0)|116|127|117|120|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x048e, code lost:
        com.google.android.play.core.assetpacks.C14910ak.f54429a.m9507d("Could not close file for chunk %s of slice %s of pack %s.", java.lang.Integer.valueOf(r14.f54424e), r14.f54422c, r14.f54507k);
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0403 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:137:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0254 A[Catch: all -> 0x04f2, TRY_ENTER, TryCatch #4 {IOException -> 0x0505, blocks: (B:5:0x0040, B:8:0x0050, B:109:0x03f9, B:10:0x005d, B:12:0x0063, B:15:0x007f, B:22:0x0098, B:26:0x00bb, B:27:0x00cd, B:28:0x00ce, B:29:0x00d1, B:30:0x00ef, B:31:0x00f0, B:32:0x00f3, B:34:0x011d, B:35:0x0138, B:36:0x014a, B:37:0x014b, B:38:0x014e, B:40:0x0176, B:42:0x0197, B:44:0x01b6, B:50:0x01dc, B:53:0x01ef, B:54:0x020f, B:55:0x0221, B:56:0x0222, B:57:0x0225, B:58:0x024b, B:63:0x0254, B:65:0x0269, B:67:0x0276, B:69:0x027e, B:71:0x0286, B:73:0x028e, B:76:0x02cd, B:77:0x02e7, B:78:0x02ef, B:80:0x02fc, B:82:0x0302, B:85:0x030c, B:87:0x0312, B:89:0x032b, B:91:0x0331, B:93:0x0339, B:94:0x0356, B:96:0x035e, B:97:0x0376, B:99:0x037e, B:102:0x03ba, B:103:0x03c9, B:104:0x03ca, B:105:0x03cd, B:107:0x03e5), top: B:131:0x0040 }] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9781a(com.google.android.play.core.assetpacks.C14909aj r14) {
        /*
            Method dump skipped, instructions count: 1363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.assetpacks.C14910ak.m9781a(com.google.android.play.core.assetpacks.aj):void");
    }
}
