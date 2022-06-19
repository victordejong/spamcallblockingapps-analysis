package p193e.p194a.p195a.p231g.p233k0;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.truecaller.messaging.data.types.BinaryEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import s1.z.c.l;
/* renamed from: e.a.a.g.k0.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/k0/b.class */
public final class C6161b {

    /* renamed from: a */
    public final AbstractC8571b f20753a;

    @Inject
    public C6161b(AbstractC8571b abstractC8571b) {
        l.e(abstractC8571b, "attachmentStoreHelper");
        this.f20753a = abstractC8571b;
    }

    /* renamed from: a */
    public Uri m31723a(BinaryEntity binaryEntity) {
        Object obj;
        l.e(binaryEntity, "entity");
        if (this.f20753a.mo28370a(binaryEntity.f13173i) || this.f20753a.mo28368c(binaryEntity.f13173i)) {
            return binaryEntity.f13173i;
        }
        if (l.a(binaryEntity.f13173i.getScheme(), "content") && l.a(binaryEntity.f13173i.getAuthority(), "com.truecaller.attachmentprovider")) {
            return binaryEntity.f13173i;
        }
        Uri uri = C6160a.f20751a;
        l.d(uri, "MMS_PART_URI");
        if (!l.a(uri.getScheme(), binaryEntity.f13173i.getScheme())) {
            return null;
        }
        l.d(uri, "MMS_PART_URI");
        if (!l.a(uri.getAuthority(), binaryEntity.f13173i.getAuthority())) {
            return null;
        }
        l.d(uri, "MMS_PART_URI");
        Iterator<String> it = uri.getPathSegments().iterator();
        List<String> pathSegments = binaryEntity.f13173i.getPathSegments();
        ArrayList m8670S = C22128a.m8670S(pathSegments, "entity.content.pathSegments");
        for (Object obj2 : pathSegments) {
            if (!(it.hasNext() && l.a((String) obj2, it.next()))) {
                m8670S.add(obj2);
            }
        }
        Iterator it2 = m8670S.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            String str = (String) obj;
            if (!it.hasNext()) {
                break;
            }
        }
        String str2 = (String) obj;
        if (str2 == null) {
            return null;
        }
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(binaryEntity.f13307b);
        if (extensionFromMimeType == null) {
            extensionFromMimeType = "bin";
        }
        l.d(extensionFromMimeType, "MimeTypeMap.getSingleton…ype(entity.type) ?: \"bin\"");
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("content");
        builder.authority("com.truecaller.attachmentprovider");
        builder.appendPath("mms");
        builder.appendEncodedPath(str2 + '.' + extensionFromMimeType);
        builder.appendQueryParameter("mime", binaryEntity.f13307b);
        return builder.build();
    }
}
