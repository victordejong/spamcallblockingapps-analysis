package p081h.p093b.p113e;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: h.b.e.l */
/* loaded from: classes-dex2jar.jar:h/b/e/l.class */
public class C5703l implements AbstractC5694d {

    /* renamed from: c */
    public static Set<String> f14302c = new HashSet(Arrays.asList("X-PHONETIC-FIRST-NAME", "X-PHONETIC-MIDDLE-NAME", "X-PHONETIC-LAST-NAME", "X-ABADR", "X-ABUID"));

    /* renamed from: d */
    public static Set<String> f14303d = new HashSet(Arrays.asList("X-GNO", "X-GN", "X-REDUCTION"));

    /* renamed from: e */
    public static Set<String> f14304e = new HashSet(Arrays.asList("X-MICROSOFT-ASST_TEL", "X-MICROSOFT-ASSISTANT", "X-MICROSOFT-OFFICELOC"));

    /* renamed from: f */
    public static Set<String> f14305f = new HashSet(Arrays.asList("X-SD-VERN", "X-SD-FORMAT_VER", "X-SD-CATEGORIES", "X-SD-CLASS", "X-SD-DCREATED", "X-SD-DESCRIPTION"));

    /* renamed from: g */
    public static String f14306g = "X-SD-CHAR_CODE";

    /* renamed from: a */
    public int f14307a = 0;

    /* renamed from: b */
    public int f14308b = -1;

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: a */
    public void mo8702a() {
    }

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: a */
    public void mo8701a(C5702k kVar) {
        String b = kVar.m24685b();
        List<String> e = kVar.m24679e();
        if (b.equalsIgnoreCase("VERSION") && e.size() > 0) {
            String str = e.get(0);
            if (str.equals("2.1")) {
                this.f14308b = 0;
            } else if (str.equals("3.0")) {
                this.f14308b = 1;
            } else if (str.equals("4.0")) {
                this.f14308b = 2;
            } else {
                String str2 = "Invalid version string: " + str;
            }
        } else if (b.equalsIgnoreCase(f14306g)) {
            this.f14307a = 3;
            if (e.size() > 0) {
                e.get(0);
            }
        }
        if (this.f14307a == 0) {
            if (f14304e.contains(b)) {
                this.f14307a = 4;
            } else if (f14305f.contains(b)) {
                this.f14307a = 3;
            } else if (f14303d.contains(b)) {
                this.f14307a = 2;
            } else if (f14302c.contains(b)) {
                this.f14307a = 1;
            }
        }
    }

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: b */
    public void mo8699b() {
    }

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: c */
    public void mo8698c() {
    }

    @Override // p081h.p093b.p113e.AbstractC5694d
    /* renamed from: d */
    public void mo8697d() {
    }

    /* renamed from: e */
    public int m24678e() {
        int i = this.f14307a;
        if (i == 2) {
            return 402653192;
        }
        if (i == 3) {
            return 939524104;
        }
        int i2 = this.f14308b;
        if (i2 == 0) {
            return -1073741824;
        }
        if (i2 == 1) {
            return -1073741823;
        }
        return i2 == 2 ? -1073741822 : 0;
    }
}
