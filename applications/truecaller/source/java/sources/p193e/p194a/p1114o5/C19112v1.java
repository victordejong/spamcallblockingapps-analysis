package p193e.p194a.p1114o5;

import android.content.ContentResolver;
import android.net.Uri;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.utils.extensions.Scheme;
import java.io.File;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.o5.v1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/v1.class */
public final class C19112v1 implements AbstractC19109u1 {

    /* renamed from: a */
    public final ContentResolver f53334a;

    @Inject
    public C19112v1(ContentResolver contentResolver) {
        l.e(contentResolver, "contentResolver");
        this.f53334a = contentResolver;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19109u1
    /* renamed from: a */
    public void mo14085a(BinaryEntity binaryEntity) {
        if (binaryEntity == null || !binaryEntity.f13174j) {
            return;
        }
        mo14084b(binaryEntity.f13173i);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19109u1
    /* renamed from: b */
    public void mo14084b(Uri uri) {
        l.e(uri, "uri");
        String scheme = uri.getScheme();
        if (l.a(scheme, Scheme.CONTENT.getValue())) {
            this.f53334a.delete(uri, null, null);
        } else if (l.a(scheme, Scheme.FILE.getValue())) {
            new File(uri.getPath()).delete();
        } else {
            String str = "URI scheme is not supported for deletion: " + uri;
        }
    }
}
