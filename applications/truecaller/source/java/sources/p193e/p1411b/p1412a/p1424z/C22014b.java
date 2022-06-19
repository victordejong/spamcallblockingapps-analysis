package p193e.p1411b.p1412a.p1424z;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.z.b */
/* loaded from: classes-dex2jar.jar:e/b/a/z/b.class */
public class C22014b {

    /* renamed from: a */
    public final Context f61206a;

    /* renamed from: b */
    public final String f61207b;

    public C22014b(Context context, String str) {
        this.f61206a = context.getApplicationContext();
        this.f61207b = str;
    }

    /* renamed from: a */
    public static String m8832a(String str, EnumC22013a enumC22013a, boolean z) {
        String str2;
        StringBuilder m8728C = C22128a.m8728C("lottie_cache_");
        m8728C.append(str.replaceAll("\\W+", ""));
        if (z) {
            Objects.requireNonNull(enumC22013a);
            str2 = ".temp" + enumC22013a.f61205a;
        } else {
            str2 = enumC22013a.f61205a;
        }
        m8728C.append(str2);
        return m8728C.toString();
    }

    /* renamed from: b */
    public File m8831b(InputStream inputStream, EnumC22013a enumC22013a) throws IOException {
        File file = new File(this.f61206a.getCacheDir(), m8832a(this.f61207b, enumC22013a, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return file;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } finally {
            inputStream.close();
        }
    }
}
