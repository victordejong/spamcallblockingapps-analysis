package p124i4;

import android.content.Context;
import java.io.File;
/* renamed from: i4.t */
/* loaded from: classes-dex2jar.jar:i4/t.class */
public final class C3118t {

    /* renamed from: a */
    public final Context f10552a;

    public C3118t(Context context) {
        this.f10552a = context;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: a */
    public static long m2601a(File file) {
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] listFiles = file.listFiles();
        char c = 0;
        char c2 = 0;
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            while (true) {
                c2 = c;
                if (i >= length) {
                    break;
                }
                c += m2601a(listFiles[i]);
                i++;
            }
        }
        return c2;
    }
}
