package p134j4;

import java.io.File;
import java.io.IOException;
import p201p6.C4018c;
/* renamed from: j4.n1 */
/* loaded from: classes-dex2jar.jar:j4/n1.class */
public final class C3234n1 {

    /* renamed from: b */
    public static final C4018c f10889b = new C4018c("MergeSliceTaskHandler");

    /* renamed from: a */
    public final C3259w f10890a;

    public C3234n1(C3259w c3259w) {
        this.f10890a = c3259w;
    }

    /* renamed from: b */
    public static void m2527b(File file, File file2) {
        File[] listFiles;
        if (!file.isDirectory()) {
            if (file2.exists()) {
                throw new C3233n0("File clashing with existing file from other slice: ".concat(file2.toString()));
            }
            if (!file.renameTo(file2)) {
                throw new C3233n0("Unable to move file: ".concat(String.valueOf(file)));
            }
            return;
        }
        file2.mkdirs();
        for (File file3 : file.listFiles()) {
            m2527b(file3, new File(file2, file3.getName()));
        }
        if (!file.delete()) {
            throw new C3233n0("Unable to delete directory: ".concat(String.valueOf(file)));
        }
    }

    /* renamed from: a */
    public final void m2528a(C3231m1 c3231m1) {
        File m2483t = this.f10890a.m2483t(c3231m1.f10747b, c3231m1.f10885c, c3231m1.f10886d, c3231m1.f10887e);
        if (m2483t.exists()) {
            File m2487p = this.f10890a.m2487p(c3231m1.f10747b, c3231m1.f10885c, c3231m1.f10886d);
            if (!m2487p.exists()) {
                m2487p.mkdirs();
            }
            m2527b(m2483t, m2487p);
            try {
                this.f10890a.m2502a(c3231m1.f10747b, c3231m1.f10885c, c3231m1.f10886d, this.f10890a.m2492k(c3231m1.f10747b, c3231m1.f10885c, c3231m1.f10886d) + 1);
                return;
            } catch (IOException e) {
                f10889b.m1509c("Writing merge checkpoint failed with %s.", e.getMessage());
                throw new C3233n0("Writing merge checkpoint failed.", e, c3231m1.f10746a);
            }
        }
        throw new C3233n0(String.format("Cannot find verified files for slice %s.", c3231m1.f10887e), c3231m1.f10746a);
    }
}
