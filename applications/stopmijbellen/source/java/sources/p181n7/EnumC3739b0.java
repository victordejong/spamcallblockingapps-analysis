package p181n7;

import java.util.Hashtable;
import java.util.Locale;
/* renamed from: n7.b0 */
/* loaded from: classes2-dex2jar.jar:n7/b0.class */
public class EnumC3739b0 extends Enum<EnumC3739b0> {

    /* renamed from: b */
    public static final EnumC3739b0 f12151b;

    /* renamed from: c */
    public static final EnumC3739b0 f12152c;

    /* renamed from: d */
    public static final Hashtable<String, EnumC3739b0> f12153d;

    /* renamed from: e */
    public static final /* synthetic */ EnumC3739b0[] f12154e;

    /* renamed from: a */
    public final String f12155a;
    EnumC3739b0 EF0;

    /* renamed from: n7.b0$a */
    /* loaded from: classes2-dex2jar.jar:n7/b0$a.class */
    public static final class C3740a extends EnumC3739b0 {
        public C3740a(String str, int i, String str2) {
            super(str, i, str2, null);
        }
    }

    static {
        EnumC3739b0 enumC3739b0 = new EnumC3739b0("HTTP_1_0", 0, "http/1.0");
        f12151b = enumC3739b0;
        EnumC3739b0 enumC3739b02 = new EnumC3739b0("HTTP_1_1", 1, "http/1.1");
        f12152c = enumC3739b02;
        C3740a c3740a = new C3740a("SPDY_3", 2, "spdy/3.1");
        EnumC3739b0 enumC3739b03 = new EnumC3739b0("HTTP_2", 3, "h2-13") { // from class: n7.b0.b
        };
        f12154e = new EnumC3739b0[]{enumC3739b0, enumC3739b02, c3740a, enumC3739b03};
        Hashtable<String, EnumC3739b0> hashtable = new Hashtable<>();
        f12153d = hashtable;
        hashtable.put("http/1.0", enumC3739b0);
        hashtable.put("http/1.1", enumC3739b02);
        hashtable.put("spdy/3.1", c3740a);
        hashtable.put("h2-13", enumC3739b03);
    }

    public EnumC3739b0(String str, int i, String str2) {
        super(str, i);
        this.f12155a = str2;
    }

    public EnumC3739b0(String str, int i, String str2, C3740a c3740a) {
        super(str, i);
        this.f12155a = str2;
    }

    /* renamed from: a */
    public static EnumC3739b0 m1828a(String str) {
        if (str == null) {
            return null;
        }
        return f12153d.get(str.toLowerCase(Locale.US));
    }

    public static EnumC3739b0 valueOf(String str) {
        return (EnumC3739b0) Enum.valueOf(EnumC3739b0.class, str);
    }

    public static EnumC3739b0[] values() {
        return (EnumC3739b0[]) f12154e.clone();
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f12155a;
    }
}
