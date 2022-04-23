package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.android.volley.toolbox.Volley;
import com.google.android.gms.internal.ads.zzaz;
import java.io.File;
/* renamed from: c.d.b.d.g.a.na */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/na.class */
public final class C3835na implements zzaz {

    /* renamed from: a */
    public File f14224a = null;

    /* renamed from: b */
    public final /* synthetic */ Context f14225b;

    public C3835na(Context context) {
        this.f14225b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    /* renamed from: w */
    public final File mo16048w() {
        if (this.f14224a == null) {
            this.f14224a = new File(this.f14225b.getCacheDir(), Volley.DEFAULT_CACHE_DIR);
        }
        return this.f14224a;
    }
}
