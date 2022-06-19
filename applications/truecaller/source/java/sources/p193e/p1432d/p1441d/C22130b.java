package p193e.p1432d.p1441d;

import android.accounts.Account;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.d.d.b */
/* loaded from: classes-dex2jar.jar:e/d/d/b.class */
public class C22130b {

    /* renamed from: q */
    public static final Map<String, Integer> f61464q;

    /* renamed from: r */
    public static final List<String> f61465r = Collections.unmodifiableList(new ArrayList(0));

    /* renamed from: a */
    public final C22140j f61466a;

    /* renamed from: b */
    public List<C22144n> f61467b;

    /* renamed from: c */
    public List<C22135e> f61468c;

    /* renamed from: d */
    public List<C22146p> f61469d;

    /* renamed from: e */
    public List<C22143m> f61470e;

    /* renamed from: f */
    public List<C22139i> f61471f;

    /* renamed from: g */
    public List<C22145o> f61472g;

    /* renamed from: h */
    public List<C22149s> f61473h;

    /* renamed from: i */
    public List<C22147q> f61474i;

    /* renamed from: j */
    public List<C22141k> f61475j;

    /* renamed from: k */
    public List<C22142l> f61476k;

    /* renamed from: l */
    public List<C22132b> f61477l;

    /* renamed from: m */
    public C22134d f61478m;

    /* renamed from: n */
    public C22133c f61479n;

    /* renamed from: o */
    public final int f61480o;

    /* renamed from: p */
    public List<C22130b> f61481p;

    /* renamed from: e.d.d.b$b */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$b.class */
    public static class C22132b implements AbstractC22136f {

        /* renamed from: a */
        public final String f61482a;

        /* renamed from: b */
        public final List<String> f61483b;

        public C22132b(String str, List<String> list) {
            this.f61482a = str;
            this.f61483b = list;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public EnumC22138h mo8532a() {
            return EnumC22138h.ANDROID_CUSTOM;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C22132b)) {
                return false;
            }
            C22132b c22132b = (C22132b) obj;
            if (!TextUtils.equals(this.f61482a, c22132b.f61482a)) {
                return false;
            }
            List<String> list = this.f61483b;
            if (list == null) {
                if (c22132b.f61483b != null) {
                    z = false;
                }
                return z;
            }
            int size = list.size();
            if (size != c22132b.f61483b.size()) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (!TextUtils.equals(this.f61483b.get(i), c22132b.f61483b.get(i))) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            String str = this.f61482a;
            int hashCode = str != null ? str.hashCode() : 0;
            List<String> list = this.f61483b;
            int i = hashCode;
            if (list != null) {
                Iterator<String> it = list.iterator();
                while (true) {
                    i = hashCode;
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    hashCode = (hashCode * 31) + (next != null ? next.hashCode() : 0);
                }
            }
            return i;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            StringBuilder m8728C = C22128a.m8728C("android-custom: ");
            m8728C.append(this.f61482a);
            m8728C.append(", data: ");
            sb.append(m8728C.toString());
            List<String> list = this.f61483b;
            sb.append(list == null ? AnalyticsConstants.NULL : Arrays.toString(list.toArray()));
            return sb.toString();
        }
    }

    /* renamed from: e.d.d.b$c */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$c.class */
    public static class C22133c implements AbstractC22136f {

        /* renamed from: a */
        public final String f61484a;

        public C22133c(String str) {
            this.f61484a = str;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public EnumC22138h mo8532a() {
            return EnumC22138h.ANNIVERSARY;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C22133c) {
                return TextUtils.equals(this.f61484a, ((C22133c) obj).f61484a);
            }
            return false;
        }

        public int hashCode() {
            String str = this.f61484a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("anniversary: ");
            m8728C.append(this.f61484a);
            return m8728C.toString();
        }
    }

    /* renamed from: e.d.d.b$d */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$d.class */
    public static class C22134d implements AbstractC22136f {

        /* renamed from: a */
        public final String f61485a;

        public C22134d(String str) {
            this.f61485a = str;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public EnumC22138h mo8532a() {
            return EnumC22138h.BIRTHDAY;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C22134d) {
                return TextUtils.equals(this.f61485a, ((C22134d) obj).f61485a);
            }
            return false;
        }

        public int hashCode() {
            String str = this.f61485a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("birthday: ");
            m8728C.append(this.f61485a);
            return m8728C.toString();
        }
    }

    /* renamed from: e.d.d.b$e */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$e.class */
    public static class C22135e implements AbstractC22136f {

        /* renamed from: a */
        public final String f61486a;

        /* renamed from: b */
        public final int f61487b;

        /* renamed from: c */
        public final String f61488c;

        /* renamed from: d */
        public final boolean f61489d;

        public C22135e(String str, int i, String str2, boolean z) {
            this.f61487b = i;
            this.f61486a = str;
            this.f61488c = str2;
            this.f61489d = z;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public final EnumC22138h mo8532a() {
            return EnumC22138h.EMAIL;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C22135e)) {
                return false;
            }
            C22135e c22135e = (C22135e) obj;
            if (this.f61487b != c22135e.f61487b || !TextUtils.equals(this.f61486a, c22135e.f61486a) || !TextUtils.equals(this.f61488c, c22135e.f61488c) || this.f61489d != c22135e.f61489d) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f61487b;
            String str = this.f61486a;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f61488c;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return (((((i * 31) + hashCode) * 31) + i2) * 31) + (this.f61489d ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, data: %s, label: %s, isPrimary: %s", Integer.valueOf(this.f61487b), this.f61486a, this.f61488c, Boolean.valueOf(this.f61489d));
        }
    }

    /* renamed from: e.d.d.b$f */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$f.class */
    public interface AbstractC22136f {
        /* renamed from: a */
        EnumC22138h mo8532a();
    }

    /* renamed from: e.d.d.b$g */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$g.class */
    public interface AbstractC22137g {
    }

    /* renamed from: e.d.d.b$h */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$h.class */
    public enum EnumC22138h {
        NAME,
        PHONE,
        EMAIL,
        POSTAL_ADDRESS,
        ORGANIZATION,
        IM,
        PHOTO,
        WEBSITE,
        SIP,
        NICKNAME,
        NOTE,
        BIRTHDAY,
        ANNIVERSARY,
        ANDROID_CUSTOM
    }

    /* renamed from: e.d.d.b$i */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$i.class */
    public static class C22139i implements AbstractC22136f {

        /* renamed from: a */
        public final String f61505a;

        /* renamed from: b */
        public final int f61506b;

        /* renamed from: c */
        public final String f61507c;

        /* renamed from: d */
        public final int f61508d;

        /* renamed from: e */
        public final boolean f61509e;

        public C22139i(int i, String str, String str2, int i2, boolean z) {
            this.f61506b = i;
            this.f61507c = str;
            this.f61508d = i2;
            this.f61505a = str2;
            this.f61509e = z;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public final EnumC22138h mo8532a() {
            return EnumC22138h.IM;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C22139i)) {
                return false;
            }
            C22139i c22139i = (C22139i) obj;
            if (this.f61508d != c22139i.f61508d || this.f61506b != c22139i.f61506b || !TextUtils.equals(this.f61507c, c22139i.f61507c) || !TextUtils.equals(this.f61505a, c22139i.f61505a) || this.f61509e != c22139i.f61509e) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f61508d;
            int i2 = this.f61506b;
            String str = this.f61507c;
            int i3 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f61505a;
            if (str2 != null) {
                i3 = str2.hashCode();
            }
            return (((((((i * 31) + i2) * 31) + hashCode) * 31) + i3) * 31) + (this.f61509e ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s", Integer.valueOf(this.f61508d), Integer.valueOf(this.f61506b), this.f61507c, this.f61505a, Boolean.valueOf(this.f61509e));
        }
    }

    /* renamed from: e.d.d.b$j */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$j.class */
    public static class C22140j implements AbstractC22136f {

        /* renamed from: a */
        public String f61510a;

        /* renamed from: b */
        public String f61511b;

        /* renamed from: c */
        public String f61512c;

        /* renamed from: d */
        public String f61513d;

        /* renamed from: e */
        public String f61514e;

        /* renamed from: f */
        public String f61515f;

        /* renamed from: g */
        public String f61516g;

        /* renamed from: h */
        public String f61517h;

        /* renamed from: i */
        public String f61518i;

        /* renamed from: j */
        public String f61519j;

        /* renamed from: k */
        public String f61520k;

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public final EnumC22138h mo8532a() {
            return EnumC22138h.NAME;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C22140j)) {
                return false;
            }
            C22140j c22140j = (C22140j) obj;
            if (!TextUtils.equals(this.f61510a, c22140j.f61510a) || !TextUtils.equals(this.f61512c, c22140j.f61512c) || !TextUtils.equals(this.f61511b, c22140j.f61511b) || !TextUtils.equals(this.f61513d, c22140j.f61513d) || !TextUtils.equals(this.f61514e, c22140j.f61514e) || !TextUtils.equals(this.f61515f, c22140j.f61515f) || !TextUtils.equals(this.f61516g, c22140j.f61516g) || !TextUtils.equals(this.f61518i, c22140j.f61518i) || !TextUtils.equals(this.f61517h, c22140j.f61517h) || !TextUtils.equals(this.f61519j, c22140j.f61519j)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f61510a;
            String str2 = this.f61512c;
            String str3 = this.f61511b;
            String str4 = this.f61513d;
            String str5 = this.f61514e;
            String str6 = this.f61515f;
            String str7 = this.f61516g;
            String str8 = this.f61518i;
            String str9 = this.f61517h;
            String str10 = this.f61519j;
            int i = 0;
            for (int i2 = 0; i2 < 10; i2++) {
                String str11 = new String[]{str, str2, str3, str4, str5, str6, str7, str8, str9, str10}[i2];
                i = (i * 31) + (str11 != null ? str11.hashCode() : 0);
            }
            return i;
        }

        public String toString() {
            return String.format("family: %s, given: %s, middle: %s, prefix: %s, suffix: %s", this.f61510a, this.f61511b, this.f61512c, this.f61513d, this.f61514e);
        }
    }

    /* renamed from: e.d.d.b$k */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$k.class */
    public static class C22141k implements AbstractC22136f {

        /* renamed from: a */
        public final String f61521a;

        public C22141k(String str) {
            this.f61521a = str;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public EnumC22138h mo8532a() {
            return EnumC22138h.NICKNAME;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C22141k)) {
                return false;
            }
            return TextUtils.equals(this.f61521a, ((C22141k) obj).f61521a);
        }

        public int hashCode() {
            String str = this.f61521a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("nickname: ");
            m8728C.append(this.f61521a);
            return m8728C.toString();
        }
    }

    /* renamed from: e.d.d.b$l */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$l.class */
    public static class C22142l implements AbstractC22136f {

        /* renamed from: a */
        public final String f61522a;

        public C22142l(String str) {
            this.f61522a = str;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public EnumC22138h mo8532a() {
            return EnumC22138h.NOTE;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C22142l) {
                return TextUtils.equals(this.f61522a, ((C22142l) obj).f61522a);
            }
            return false;
        }

        public int hashCode() {
            String str = this.f61522a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("note: ");
            m8728C.append(this.f61522a);
            return m8728C.toString();
        }
    }

    /* renamed from: e.d.d.b$m */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$m.class */
    public static class C22143m implements AbstractC22136f {

        /* renamed from: a */
        public String f61523a;

        /* renamed from: b */
        public String f61524b;

        /* renamed from: c */
        public String f61525c;

        /* renamed from: d */
        public final int f61526d;

        /* renamed from: e */
        public boolean f61527e;

        public C22143m(String str, String str2, String str3, String str4, int i, boolean z) {
            this.f61526d = i;
            this.f61523a = str;
            this.f61524b = str2;
            this.f61525c = str3;
            this.f61527e = z;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public final EnumC22138h mo8532a() {
            return EnumC22138h.ORGANIZATION;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C22143m)) {
                return false;
            }
            C22143m c22143m = (C22143m) obj;
            if (this.f61526d != c22143m.f61526d || !TextUtils.equals(this.f61523a, c22143m.f61523a) || !TextUtils.equals(this.f61524b, c22143m.f61524b) || !TextUtils.equals(this.f61525c, c22143m.f61525c) || this.f61527e != c22143m.f61527e) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f61526d;
            String str = this.f61523a;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f61524b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f61525c;
            if (str3 != null) {
                i2 = str3.hashCode();
            }
            return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + (this.f61527e ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, organization: %s, department: %s, title: %s, isPrimary: %s", Integer.valueOf(this.f61526d), this.f61523a, this.f61524b, this.f61525c, Boolean.valueOf(this.f61527e));
        }
    }

    /* renamed from: e.d.d.b$n */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$n.class */
    public static class C22144n implements AbstractC22136f {

        /* renamed from: a */
        public final String f61528a;

        /* renamed from: b */
        public final int f61529b;

        /* renamed from: c */
        public final String f61530c;

        /* renamed from: d */
        public boolean f61531d;

        public C22144n(String str, int i, String str2, boolean z) {
            this.f61528a = str;
            this.f61529b = i;
            this.f61530c = str2;
            this.f61531d = z;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public final EnumC22138h mo8532a() {
            return EnumC22138h.PHONE;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C22144n)) {
                return false;
            }
            C22144n c22144n = (C22144n) obj;
            if (this.f61529b != c22144n.f61529b || !TextUtils.equals(this.f61528a, c22144n.f61528a) || !TextUtils.equals(this.f61530c, c22144n.f61530c) || this.f61531d != c22144n.f61531d) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f61529b;
            String str = this.f61528a;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f61530c;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return (((((i * 31) + hashCode) * 31) + i2) * 31) + (this.f61531d ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, data: %s, label: %s, isPrimary: %s", Integer.valueOf(this.f61529b), this.f61528a, this.f61530c, Boolean.valueOf(this.f61531d));
        }
    }

    /* renamed from: e.d.d.b$o */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$o.class */
    public static class C22145o implements AbstractC22136f {

        /* renamed from: a */
        public final String f61532a;

        /* renamed from: b */
        public final boolean f61533b;

        /* renamed from: c */
        public final byte[] f61534c;

        /* renamed from: d */
        public final Uri f61535d;

        /* renamed from: e */
        public Integer f61536e = null;

        public C22145o(String str, byte[] bArr, boolean z, Uri uri) {
            this.f61532a = str;
            this.f61534c = bArr;
            this.f61533b = z;
            this.f61535d = uri;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public final EnumC22138h mo8532a() {
            return EnumC22138h.PHOTO;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C22145o)) {
                return false;
            }
            C22145o c22145o = (C22145o) obj;
            if (!TextUtils.equals(this.f61532a, c22145o.f61532a) || !Arrays.equals(this.f61534c, c22145o.f61534c) || this.f61533b != c22145o.f61533b || this.f61535d != c22145o.f61535d) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            Integer num = this.f61536e;
            if (num != null) {
                return num.intValue();
            }
            String str = this.f61532a;
            int i = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            byte[] bArr = this.f61534c;
            int i2 = hashCode;
            if (bArr != null) {
                int length = bArr.length;
                while (true) {
                    i2 = hashCode;
                    if (i >= length) {
                        break;
                    }
                    hashCode += bArr[i];
                    i++;
                }
            }
            int i3 = (i2 * 31) + (this.f61533b ? 1231 : 1237);
            this.f61536e = Integer.valueOf(i3);
            return i3;
        }

        public String toString() {
            Locale locale = Locale.ENGLISH;
            String str = this.f61532a;
            int i = 0;
            byte[] bArr = this.f61534c;
            if (bArr != null) {
                i = bArr.length;
            }
            return String.format(locale, "format: %s: size: %d, isPrimary: %s uri: %s ", str, Integer.valueOf(i), Boolean.valueOf(this.f61533b), this.f61535d);
        }
    }

    /* renamed from: e.d.d.b$p */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$p.class */
    public static class C22146p implements AbstractC22136f {

        /* renamed from: a */
        public final String f61537a;

        /* renamed from: b */
        public final String f61538b;

        /* renamed from: c */
        public final String f61539c;

        /* renamed from: d */
        public final String f61540d;

        /* renamed from: e */
        public final String f61541e;

        /* renamed from: f */
        public final String f61542f;

        /* renamed from: g */
        public final String f61543g;

        /* renamed from: h */
        public final int f61544h;

        /* renamed from: i */
        public final String f61545i;

        /* renamed from: j */
        public boolean f61546j;

        public C22146p(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, String str8, boolean z, int i2) {
            this.f61544h = i;
            this.f61537a = str;
            this.f61538b = str2;
            this.f61539c = str3;
            this.f61540d = str4;
            this.f61541e = str5;
            this.f61542f = str6;
            this.f61543g = str7;
            this.f61545i = str8;
            this.f61546j = z;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public final EnumC22138h mo8532a() {
            return EnumC22138h.POSTAL_ADDRESS;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C22146p)) {
                return false;
            }
            C22146p c22146p = (C22146p) obj;
            int i = this.f61544h;
            if (i != c22146p.f61544h || ((i == 0 && !TextUtils.equals(this.f61545i, c22146p.f61545i)) || this.f61546j != c22146p.f61546j || !TextUtils.equals(this.f61537a, c22146p.f61537a) || !TextUtils.equals(this.f61538b, c22146p.f61538b) || !TextUtils.equals(this.f61539c, c22146p.f61539c) || !TextUtils.equals(this.f61540d, c22146p.f61540d) || !TextUtils.equals(this.f61541e, c22146p.f61541e) || !TextUtils.equals(this.f61542f, c22146p.f61542f) || !TextUtils.equals(this.f61543g, c22146p.f61543g))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f61544h;
            String str = this.f61545i;
            int hashCode = (((i * 31) + (str != null ? str.hashCode() : 0)) * 31) + (this.f61546j ? 1231 : 1237);
            String str2 = this.f61537a;
            String str3 = this.f61538b;
            String str4 = this.f61539c;
            String str5 = this.f61540d;
            String str6 = this.f61541e;
            String str7 = this.f61542f;
            String str8 = this.f61543g;
            for (int i2 = 0; i2 < 7; i2++) {
                String str9 = new String[]{str2, str3, str4, str5, str6, str7, str8}[i2];
                hashCode = (hashCode * 31) + (str9 != null ? str9.hashCode() : 0);
            }
            return hashCode;
        }

        public String toString() {
            return String.format("type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s", Integer.valueOf(this.f61544h), this.f61545i, Boolean.valueOf(this.f61546j), this.f61537a, this.f61538b, this.f61539c, this.f61540d, this.f61541e, this.f61542f, this.f61543g);
        }
    }

    /* renamed from: e.d.d.b$q */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$q.class */
    public static class C22147q implements AbstractC22136f {

        /* renamed from: a */
        public final String f61547a;

        /* renamed from: b */
        public final int f61548b;

        /* renamed from: c */
        public final String f61549c;

        /* renamed from: d */
        public final boolean f61550d;

        public C22147q(String str, int i, String str2, boolean z) {
            if (str.startsWith("sip:")) {
                this.f61547a = str.substring(4);
            } else {
                this.f61547a = str;
            }
            this.f61548b = i;
            this.f61549c = str2;
            this.f61550d = z;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public EnumC22138h mo8532a() {
            return EnumC22138h.SIP;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C22147q)) {
                return false;
            }
            C22147q c22147q = (C22147q) obj;
            if (this.f61548b != c22147q.f61548b || !TextUtils.equals(this.f61549c, c22147q.f61549c) || !TextUtils.equals(this.f61547a, c22147q.f61547a) || this.f61550d != c22147q.f61550d) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.f61548b;
            String str = this.f61549c;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f61547a;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return (((((i * 31) + hashCode) * 31) + i2) * 31) + (this.f61550d ? 1231 : 1237);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("sip: ");
            m8728C.append(this.f61547a);
            return m8728C.toString();
        }
    }

    /* renamed from: e.d.d.b$r */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$r.class */
    public class C22148r implements AbstractC22137g {

        /* renamed from: a */
        public StringBuilder f61551a;

        /* renamed from: b */
        public boolean f61552b;

        public C22148r(C22131a c22131a) {
            C22130b.this = r4;
        }

        /* renamed from: a */
        public boolean m8535a(AbstractC22136f abstractC22136f) {
            if (!this.f61552b) {
                this.f61551a.append(", ");
                this.f61552b = false;
            }
            StringBuilder sb = this.f61551a;
            sb.append("[");
            sb.append(abstractC22136f.toString());
            sb.append("]");
            return true;
        }

        /* renamed from: b */
        public void m8534b() {
            this.f61551a.append(StringConstant.NEW_LINE);
        }

        /* renamed from: c */
        public void m8533c(EnumC22138h enumC22138h) {
            StringBuilder sb = this.f61551a;
            sb.append(enumC22138h.toString() + ": ");
            this.f61552b = true;
        }

        public String toString() {
            return this.f61551a.toString();
        }
    }

    /* renamed from: e.d.d.b$s */
    /* loaded from: classes-dex2jar.jar:e/d/d/b$s.class */
    public static class C22149s implements AbstractC22136f {

        /* renamed from: a */
        public final String f61554a;

        public C22149s(String str) {
            this.f61554a = str;
        }

        @Override // p193e.p1432d.p1441d.C22130b.AbstractC22136f
        /* renamed from: a */
        public EnumC22138h mo8532a() {
            return EnumC22138h.WEBSITE;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C22149s) {
                return TextUtils.equals(this.f61554a, ((C22149s) obj).f61554a);
            }
            return false;
        }

        public int hashCode() {
            String str = this.f61554a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("website: ");
            m8728C.append(this.f61554a);
            return m8728C.toString();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f61464q = hashMap;
        C22128a.m8609j0(0, hashMap, "X-AIM", 1, "X-MSN", 2, "X-YAHOO", 6, "X-ICQ");
        hashMap.put("X-JABBER", 7);
        hashMap.put("X-SKYPE-USERNAME", 3);
        hashMap.put("X-GOOGLE-TALK", 5);
        hashMap.put("X-GOOGLE TALK", 5);
    }

    public C22130b() {
        this.f61466a = new C22140j();
        this.f61480o = -1073741824;
    }

    public C22130b(int i, Account account) {
        this.f61466a = new C22140j();
        this.f61480o = i;
    }

    /* renamed from: a */
    public final void m8540a(String str, String str2, String str3, String str4, int i, boolean z) {
        if (this.f61470e == null) {
            this.f61470e = new ArrayList();
        }
        this.f61470e.add(new C22143m(str, str2, str3, str4, i, z));
    }

    /* renamed from: b */
    public final void m8539b(int i, String str, String str2, boolean z) {
        boolean z2;
        boolean z3;
        if (this.f61467b == null) {
            this.f61467b = new ArrayList();
        }
        StringBuilder sb = new StringBuilder();
        String trim = str.trim();
        String str3 = trim;
        if (i != 6) {
            int i2 = this.f61480o;
            Map<String, Integer> map = C22129a.f61462a;
            int i3 = 0;
            if ((i2 & 33554432) != 0) {
                str3 = trim;
            } else {
                int length = trim.length();
                boolean z4 = false;
                while (true) {
                    z2 = z4;
                    if (i3 >= length) {
                        break;
                    }
                    char charAt = trim.charAt(i3);
                    if (charAt == 'p' || charAt == 'P') {
                        sb.append(',');
                    } else if (charAt == 'w' || charAt == 'W') {
                        sb.append(';');
                    } else {
                        if ('0' > charAt || charAt > '9') {
                            z3 = z2;
                            if (i3 == 0) {
                                z3 = z2;
                                if (charAt != '+') {
                                }
                            }
                            i3++;
                            z4 = z3;
                        }
                        sb.append(charAt);
                        z3 = z2;
                        i3++;
                        z4 = z3;
                    }
                    z3 = true;
                    i3++;
                    z4 = z3;
                }
                if (!z2) {
                    int i4 = this.f61480o;
                    Map<Integer, String> map2 = C22162o.f61592a;
                    int i5 = 1;
                    if (C22129a.f61463b.contains(Integer.valueOf(i4))) {
                        i5 = 2;
                    }
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb.toString());
                    PhoneNumberUtils.formatNumber(spannableStringBuilder, i5);
                    str3 = spannableStringBuilder.toString();
                } else {
                    str3 = sb.toString();
                }
            }
        }
        this.f61467b.add(new C22144n(str3, i, str2, z));
    }

    /* renamed from: c */
    public final String m8538c() {
        String str;
        if (!TextUtils.isEmpty(this.f61466a.f61515f)) {
            str = this.f61466a.f61515f;
        } else {
            C22140j c22140j = this.f61466a;
            boolean z = true;
            if (!(TextUtils.isEmpty(c22140j.f61510a) && TextUtils.isEmpty(c22140j.f61511b) && TextUtils.isEmpty(c22140j.f61512c) && TextUtils.isEmpty(c22140j.f61513d) && TextUtils.isEmpty(c22140j.f61514e))) {
                int i = this.f61480o;
                C22140j c22140j2 = this.f61466a;
                str = C22162o.m8497b(i, c22140j2.f61510a, c22140j2.f61512c, c22140j2.f61511b, c22140j2.f61513d, c22140j2.f61514e);
            } else {
                C22140j c22140j3 = this.f61466a;
                if (!(TextUtils.isEmpty(c22140j3.f61516g) && TextUtils.isEmpty(c22140j3.f61517h) && TextUtils.isEmpty(c22140j3.f61518i))) {
                    int i2 = this.f61480o;
                    C22140j c22140j4 = this.f61466a;
                    str = C22162o.m8497b(i2, c22140j4.f61516g, c22140j4.f61518i, c22140j4.f61517h, null, null);
                } else {
                    List<C22135e> list = this.f61468c;
                    if (list == null || list.size() <= 0) {
                        List<C22144n> list2 = this.f61467b;
                        if (list2 == null || list2.size() <= 0) {
                            List<C22146p> list3 = this.f61469d;
                            if (list3 == null || list3.size() <= 0) {
                                List<C22143m> list4 = this.f61470e;
                                if (list4 == null || list4.size() <= 0) {
                                    str = null;
                                } else {
                                    C22143m c22143m = this.f61470e.get(0);
                                    StringBuilder sb = new StringBuilder();
                                    if (!TextUtils.isEmpty(c22143m.f61523a)) {
                                        sb.append(c22143m.f61523a);
                                    }
                                    if (!TextUtils.isEmpty(c22143m.f61524b)) {
                                        if (sb.length() > 0) {
                                            sb.append(", ");
                                        }
                                        sb.append(c22143m.f61524b);
                                    }
                                    if (!TextUtils.isEmpty(c22143m.f61525c)) {
                                        if (sb.length() > 0) {
                                            sb.append(", ");
                                        }
                                        sb.append(c22143m.f61525c);
                                    }
                                    str = sb.toString();
                                }
                            } else {
                                C22146p c22146p = this.f61469d.get(0);
                                int i3 = this.f61480o;
                                StringBuilder sb2 = new StringBuilder();
                                String[] strArr = {c22146p.f61537a, c22146p.f61538b, c22146p.f61539c, c22146p.f61540d, c22146p.f61541e, c22146p.f61542f, c22146p.f61543g};
                                if (C22129a.f61463b.contains(Integer.valueOf(i3))) {
                                    int i4 = 6;
                                    while (true) {
                                        boolean z2 = z;
                                        if (i4 < 0) {
                                            break;
                                        }
                                        String str2 = strArr[i4];
                                        z = z2;
                                        if (!TextUtils.isEmpty(str2)) {
                                            if (!z2) {
                                                sb2.append(' ');
                                            } else {
                                                z2 = false;
                                            }
                                            sb2.append(str2);
                                            z = z2;
                                        }
                                        i4--;
                                    }
                                } else {
                                    boolean z3 = true;
                                    int i5 = 0;
                                    while (i5 < 7) {
                                        String str3 = strArr[i5];
                                        boolean z4 = z3;
                                        if (!TextUtils.isEmpty(str3)) {
                                            if (!z3) {
                                                sb2.append(' ');
                                            } else {
                                                z3 = false;
                                            }
                                            sb2.append(str3);
                                            z4 = z3;
                                        }
                                        i5++;
                                        z3 = z4;
                                    }
                                }
                                str = sb2.toString().trim();
                            }
                        } else {
                            str = this.f61467b.get(0).f61528a;
                        }
                    } else {
                        str = this.f61468c.get(0).f61486a;
                    }
                }
            }
        }
        String str4 = str;
        if (str == null) {
            str4 = "";
        }
        return str4;
    }

    /* renamed from: d */
    public final void m8537d(String str, Collection<String> collection) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String str2 = str;
        if (str.startsWith("sip:")) {
            String substring = str.substring(4);
            str2 = substring;
            if (substring.length() == 0) {
                return;
            }
        }
        String str3 = null;
        boolean z = false;
        int i = -1;
        if (collection != null) {
            z = false;
            str3 = null;
            i = -1;
            for (String str4 : collection) {
                String upperCase = str4.toUpperCase();
                if (upperCase.equals("PREF")) {
                    z = true;
                } else if (upperCase.equals("HOME")) {
                    i = 1;
                } else if (upperCase.equals("WORK")) {
                    i = 2;
                } else if (i < 0) {
                    str3 = upperCase.startsWith("X-") ? str4.substring(2) : str4;
                    i = 0;
                }
            }
        }
        int i2 = i;
        if (i < 0) {
            i2 = 3;
        }
        if (this.f61474i == null) {
            this.f61474i = new ArrayList();
        }
        this.f61474i.add(new C22147q(str2, i2, str3, z));
    }

    /* renamed from: e */
    public final void m8536e(List<? extends AbstractC22136f> list, AbstractC22137g abstractC22137g) {
        if (list == null || list.size() <= 0) {
            return;
        }
        C22148r c22148r = (C22148r) abstractC22137g;
        c22148r.m8533c(list.get(0).mo8532a());
        for (AbstractC22136f abstractC22136f : list) {
            c22148r.m8535a(abstractC22136f);
        }
        c22148r.m8534b();
    }

    public String toString() {
        C22148r c22148r = new C22148r(null);
        StringBuilder sb = new StringBuilder();
        c22148r.f61551a = sb;
        StringBuilder m8728C = C22128a.m8728C("[[hash: ");
        m8728C.append(C22130b.this.hashCode());
        m8728C.append(StringConstant.NEW_LINE);
        sb.append(m8728C.toString());
        Objects.requireNonNull(this.f61466a);
        c22148r.m8533c(EnumC22138h.NAME);
        c22148r.m8535a(this.f61466a);
        c22148r.m8534b();
        m8536e(this.f61467b, c22148r);
        m8536e(this.f61468c, c22148r);
        m8536e(this.f61469d, c22148r);
        m8536e(this.f61470e, c22148r);
        m8536e(this.f61471f, c22148r);
        m8536e(this.f61472g, c22148r);
        m8536e(this.f61473h, c22148r);
        m8536e(this.f61474i, c22148r);
        m8536e(this.f61475j, c22148r);
        m8536e(this.f61476k, c22148r);
        m8536e(this.f61477l, c22148r);
        if (this.f61478m != null) {
            c22148r.m8533c(EnumC22138h.BIRTHDAY);
            c22148r.m8535a(this.f61478m);
            c22148r.m8534b();
        }
        if (this.f61479n != null) {
            c22148r.m8533c(EnumC22138h.ANNIVERSARY);
            c22148r.m8535a(this.f61479n);
            c22148r.m8534b();
        }
        c22148r.f61551a.append("]]\n");
        return c22148r.toString();
    }
}
