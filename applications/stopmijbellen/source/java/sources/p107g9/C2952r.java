package p107g9;

import android.content.Context;
import android.os.StatFs;
import java.io.File;
import p204p9.AbstractC4097e;
import p204p9.C4086c;
import p204p9.C4128v;
/* renamed from: g9.r */
/* loaded from: classes2-dex2jar.jar:g9/r.class */
public final class C2952r implements AbstractC2941j {

    /* renamed from: a */
    public final AbstractC4097e.AbstractC4098a f9919a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    public C2952r(Context context) {
        ?? r10;
        StringBuilder sb = C2929d0.f9877a;
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            r10 = (statFs.getBlockCountLong() * statFs.getBlockSizeLong()) / 50;
        } catch (IllegalArgumentException e) {
            r10 = true;
        }
        long max = Math.max(Math.min(r10 == true ? 1L : 0L, 52428800L), 5242880L);
        C4128v.C4130b c4130b = new C4128v.C4130b();
        c4130b.f13009i = new C4086c(file, max);
        this.f9919a = new C4128v(c4130b);
    }
}
