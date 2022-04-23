package p081h.p203i.p384e;
/* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
/* renamed from: h.i.e.t */
/* loaded from: classes2-dex2jar.jar:h/i/e/t.class */
public abstract class EnumC10114t extends Enum<EnumC10114t> {

    /* renamed from: a */
    public static final EnumC10114t f22835a = new C10115a("DEFAULT", 0);

    /* renamed from: b */
    public static final EnumC10114t f22836b = new EnumC10114t("STRING", 1) { // from class: h.i.e.t.b
    };

    /* renamed from: c */
    public static final /* synthetic */ EnumC10114t[] f22837c = {f22835a, f22836b};

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: h.i.e.t$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/t$a.class */
    public final class C10115a extends EnumC10114t {
        public C10115a(String str, int i) {
            super(str, i, null);
        }
    }

    public EnumC10114t(String str, int i) {
    }

    public /* synthetic */ EnumC10114t(String str, int i, C10115a aVar) {
        this(str, i);
    }

    public static EnumC10114t valueOf(String str) {
        return (EnumC10114t) Enum.valueOf(EnumC10114t.class, str);
    }

    public static EnumC10114t[] values() {
        return (EnumC10114t[]) f22837c.clone();
    }
}
