package p081h.p203i.p384e;

import androidx.media2.session.MediaSessionImplBase;
import java.lang.reflect.Field;
import java.util.Locale;
/* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
/* renamed from: h.i.e.c */
/* loaded from: classes2-dex2jar.jar:h/i/e/c.class */
public abstract class EnumC10091c extends Enum<EnumC10091c> implements AbstractC10098d {

    /* renamed from: a */
    public static final EnumC10091c f22808a = new C10092a("IDENTITY", 0);

    /* renamed from: b */
    public static final EnumC10091c f22809b = new EnumC10091c("UPPER_CAMEL_CASE", 1) { // from class: h.i.e.c.b
        @Override // p081h.p203i.p384e.AbstractC10098d
        public String translateName(Field field) {
            return EnumC10091c.m13390a(field.getName());
        }
    };

    /* renamed from: c */
    public static final EnumC10091c f22810c = new EnumC10091c("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: h.i.e.c.c
        @Override // p081h.p203i.p384e.AbstractC10098d
        public String translateName(Field field) {
            return EnumC10091c.m13390a(EnumC10091c.m13389a(field.getName(), " "));
        }
    };

    /* renamed from: d */
    public static final EnumC10091c f22811d = new EnumC10091c("LOWER_CASE_WITH_UNDERSCORES", 3) { // from class: h.i.e.c.d
        @Override // p081h.p203i.p384e.AbstractC10098d
        public String translateName(Field field) {
            return EnumC10091c.m13389a(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    };

    /* renamed from: e */
    public static final EnumC10091c f22812e = new EnumC10091c("LOWER_CASE_WITH_DASHES", 4) { // from class: h.i.e.c.e
        @Override // p081h.p203i.p384e.AbstractC10098d
        public String translateName(Field field) {
            return EnumC10091c.m13389a(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    /* renamed from: f */
    public static final EnumC10091c f22813f = new EnumC10091c("LOWER_CASE_WITH_DOTS", 5) { // from class: h.i.e.c.f
        @Override // p081h.p203i.p384e.AbstractC10098d
        public String translateName(Field field) {
            return EnumC10091c.m13389a(field.getName(), MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM).toLowerCase(Locale.ENGLISH);
        }
    };

    /* renamed from: g */
    public static final /* synthetic */ EnumC10091c[] f22814g = {f22808a, f22809b, f22810c, f22811d, f22812e, f22813f};

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: h.i.e.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/c$a.class */
    public final class C10092a extends EnumC10091c {
        public C10092a(String str, int i) {
            super(str, i, null);
        }

        @Override // p081h.p203i.p384e.AbstractC10098d
        public String translateName(Field field) {
            return field.getName();
        }
    }

    public EnumC10091c(String str, int i) {
    }

    public /* synthetic */ EnumC10091c(String str, int i, C10092a aVar) {
        this(str, i);
    }

    /* renamed from: a */
    public static String m13390a(String str) {
        int length = str.length();
        int i = 0;
        while (!Character.isLetter(str.charAt(i)) && i < length - 1) {
            i++;
        }
        char charAt = str.charAt(i);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(charAt);
        if (i == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i) + upperCase + str.substring(i + 1);
    }

    /* renamed from: a */
    public static String m13389a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    public static EnumC10091c valueOf(String str) {
        return (EnumC10091c) Enum.valueOf(EnumC10091c.class, str);
    }

    public static EnumC10091c[] values() {
        return (EnumC10091c[]) f22814g.clone();
    }
}
