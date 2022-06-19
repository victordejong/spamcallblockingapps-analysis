package p193e.p194a.p1114o5;

import com.truecaller.log.AssertionUtil;
import java.io.File;
/* renamed from: e.a.o5.h0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/h0.class */
public class C19036h0 {

    /* renamed from: a */
    public static final Object f53157a = new Object();

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* renamed from: a */
    public static long m14218a(String str) {
        File file = new File(str);
        AssertionUtil.OnlyInDebug.isTrue(!file.exists() || file.isDirectory(), new String[0]);
        File[] listFiles = file.listFiles();
        char c = 0;
        if (listFiles != null) {
            c = 0;
            for (File file2 : listFiles) {
                char m14218a = file2.isDirectory() ? m14218a(file2.getAbsolutePath()) : file2.length();
                AssertionUtil.OnlyInDebug.isTrue(m14218a >= 0, new String[0]);
                c += m14218a;
            }
        }
        return c;
    }
}
