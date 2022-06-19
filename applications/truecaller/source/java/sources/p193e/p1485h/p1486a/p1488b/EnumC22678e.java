package p193e.p1485h.p1486a.p1488b;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0080\u0001\u0018�� \u00112\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0011B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, d2 = {"Lcom/clevertap/android/pushtemplates/TemplateType;", "", "templateType", "", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "BASIC", "AUTO_CAROUSEL", "MANUAL_CAROUSEL", "RATING", "FIVE_ICONS", "PRODUCT_DISPLAY", "ZERO_BEZEL", "TIMER", "INPUT_BOX", "VIDEO", "CANCEL", "Companion", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.e */
/* loaded from: classes-dex2jar.jar:e/h/a/b/e.class */
public enum EnumC22678e {
    BASIC("pt_basic"),
    AUTO_CAROUSEL("pt_carousel"),
    MANUAL_CAROUSEL("pt_manual_carousel"),
    RATING("pt_rating"),
    FIVE_ICONS("pt_five_icons"),
    PRODUCT_DISPLAY("pt_product_display"),
    ZERO_BEZEL("pt_zero_bezel"),
    TIMER("pt_timer"),
    INPUT_BOX("pt_input"),
    VIDEO("pt_video"),
    CANCEL("pt_cancel");
    

    /* renamed from: b */
    public static final C22679a f62789b = new C22679a(null);

    /* renamed from: a */
    public final String f62802a;

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/clevertap/android/pushtemplates/TemplateType$Companion;", "", "()V", "fromString", "Lcom/clevertap/android/pushtemplates/TemplateType;", "type", "", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.h.a.b.e$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/b/e$a.class */
    public static final class C22679a {
        public C22679a(f fVar) {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: a */
        public final EnumC22678e m7980a(String str) {
            EnumC22678e enumC22678e;
            if (str != null) {
                switch (str.hashCode()) {
                    case -1726683778:
                        if (str.equals("pt_manual_carousel")) {
                            enumC22678e = EnumC22678e.MANUAL_CAROUSEL;
                            break;
                        }
                        break;
                    case -1531478936:
                        if (str.equals("pt_five_icons")) {
                            enumC22678e = EnumC22678e.FIVE_ICONS;
                            break;
                        }
                        break;
                    case -629497790:
                        if (str.equals("pt_zero_bezel")) {
                            enumC22678e = EnumC22678e.ZERO_BEZEL;
                            break;
                        }
                        break;
                    case -622393029:
                        if (str.equals("pt_carousel")) {
                            enumC22678e = EnumC22678e.AUTO_CAROUSEL;
                            break;
                        }
                        break;
                    case 310751795:
                        if (str.equals("pt_basic")) {
                            enumC22678e = EnumC22678e.BASIC;
                            break;
                        }
                        break;
                    case 317601231:
                        if (str.equals("pt_input")) {
                            enumC22678e = EnumC22678e.INPUT_BOX;
                            break;
                        }
                        break;
                    case 327607626:
                        if (str.equals("pt_timer")) {
                            enumC22678e = EnumC22678e.TIMER;
                            break;
                        }
                        break;
                    case 329446016:
                        if (str.equals("pt_video")) {
                            enumC22678e = EnumC22678e.VIDEO;
                            break;
                        }
                        break;
                    case 923207991:
                        if (str.equals("pt_product_display")) {
                            enumC22678e = EnumC22678e.PRODUCT_DISPLAY;
                            break;
                        }
                        break;
                    case 1071845653:
                        if (str.equals("pt_cancel")) {
                            enumC22678e = EnumC22678e.CANCEL;
                            break;
                        }
                        break;
                    case 1501467704:
                        if (str.equals("pt_rating")) {
                            enumC22678e = EnumC22678e.RATING;
                            break;
                        }
                        break;
                }
                return enumC22678e;
            }
            enumC22678e = null;
            return enumC22678e;
        }
    }

    EnumC22678e(String str) {
        this.f62802a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f62802a;
    }
}
