package p193e.p194a.p1114o5;

import android.content.res.AssetManager;
import android.net.Uri;
import com.truecaller.log.AssertionUtil;
import e.m.f.a.b;
import java.io.IOException;
import java.io.InputStream;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.o5.w1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/w1.class */
public final class C19125w1 implements b {

    /* renamed from: a */
    public final a<AssetManager> f53346a;

    public C19125w1(a<AssetManager> aVar) {
        l.e(aVar, "assetManagerProvider");
        this.f53346a = aVar;
    }

    /* renamed from: a */
    public InputStream m14083a(String str) {
        InputStream inputStream;
        synchronized (this) {
            if (str != null) {
                if (str.length() == 0) {
                    str = null;
                }
                if (str != null) {
                    Uri parse = Uri.parse(str);
                    l.d(parse, "Uri.parse(metadataFileName)");
                    String lastPathSegment = parse.getLastPathSegment();
                    if (lastPathSegment == null) {
                        return null;
                    }
                    l.d(lastPathSegment, "Uri.parse(metadataFileNa…athSegment ?: return null");
                    try {
                        inputStream = ((AssetManager) this.f53346a.invoke()).open("libphonenumber/" + lastPathSegment);
                    } catch (IOException e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                        inputStream = null;
                    }
                    return inputStream;
                }
            }
            return null;
        }
    }
}
