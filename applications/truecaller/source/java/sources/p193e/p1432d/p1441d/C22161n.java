package p193e.p1432d.p1441d;

import com.tenor.android.core.constant.ScreenDensity;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: e.d.d.n */
/* loaded from: classes-dex2jar.jar:e/d/d/n.class */
public class C22161n implements AbstractC22152e {

    /* renamed from: c */
    public static Set<String> f61585c = new HashSet(Arrays.asList("X-PHONETIC-FIRST-NAME", "X-PHONETIC-MIDDLE-NAME", "X-PHONETIC-LAST-NAME", "X-ABADR", "X-ABUID"));

    /* renamed from: d */
    public static Set<String> f61586d = new HashSet(Arrays.asList("X-GNO", "X-GN", "X-REDUCTION"));

    /* renamed from: e */
    public static Set<String> f61587e = new HashSet(Arrays.asList("X-MICROSOFT-ASST_TEL", "X-MICROSOFT-ASSISTANT", "X-MICROSOFT-OFFICELOC"));

    /* renamed from: f */
    public static Set<String> f61588f = new HashSet(Arrays.asList("X-SD-VERN", "X-SD-FORMAT_VER", "X-SD-CATEGORIES", "X-SD-CLASS", "X-SD-DCREATED", "X-SD-DESCRIPTION"));

    /* renamed from: g */
    public static String f61589g = "X-SD-CHAR_CODE";

    /* renamed from: a */
    public int f61590a = 0;

    /* renamed from: b */
    public int f61591b = -1;

    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: a */
    public void mo8504a(C22160m c22160m) {
        String str = c22160m.f61579a;
        List<String> list = c22160m.f61583e;
        if (str.equalsIgnoreCase("VERSION") && list.size() > 0) {
            String str2 = list.get(0);
            if (str2.equals("2.1")) {
                this.f61591b = 0;
            } else if (str2.equals(ScreenDensity.SD_300)) {
                this.f61591b = 1;
            } else if (str2.equals(ScreenDensity.SD_400)) {
                this.f61591b = 2;
            }
        } else if (str.equalsIgnoreCase(f61589g)) {
            this.f61590a = 3;
            if (list.size() > 0) {
                list.get(0);
            }
        }
        if (this.f61590a != 0) {
            return;
        }
        if (f61587e.contains(str)) {
            this.f61590a = 4;
        } else if (f61588f.contains(str)) {
            this.f61590a = 3;
        } else if (f61586d.contains(str)) {
            this.f61590a = 2;
        } else if (!f61585c.contains(str)) {
        } else {
            this.f61590a = 1;
        }
    }

    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: b */
    public void mo8503b() {
    }

    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: c */
    public void mo8502c() {
    }

    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: d */
    public void mo8501d() {
    }

    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: e */
    public void mo8500e() {
    }

    /* renamed from: f */
    public int m8499f() {
        int i = this.f61590a;
        if (i != 2) {
            if (i == 3) {
                return 939524104;
            }
            int i2 = this.f61591b;
            if (i2 == 0) {
                return -1073741824;
            }
            if (i2 == 1) {
                return -1073741823;
            }
            return i2 == 2 ? -1073741822 : 0;
        }
        return 402653192;
    }
}
