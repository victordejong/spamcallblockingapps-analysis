package p068d2;

import android.net.Uri;
import java.io.File;
import java.util.Objects;
/* renamed from: d2.w3 */
/* loaded from: classes-dex2jar.jar:d2/w3.class */
public class C2435w3 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2191c4 f8614a;

    public C2435w3(C2191c4 c2191c4) {
        this.f8614a = c2191c4;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        if (C2191c4.m3774a(this.f8614a, c2410t0)) {
            C2191c4 c2191c4 = this.f8614a;
            Objects.requireNonNull(c2191c4);
            c2191c4.f7997i = c2410t0.f8537b.m3697o("filepath");
            c2191c4.setImageURI(Uri.fromFile(new File(c2191c4.f7997i)));
        }
    }
}
