package p193e.p1485h.p1486a.p1493c.p1502r0;
/* renamed from: e.h.a.c.r0.k */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/k.class */
public enum EnumC22824k {
    SimpleMessage("simple"),
    IconMessage("message-icon"),
    CarouselMessage("carousel"),
    CarouselImageMessage("carousel-image");
    

    /* renamed from: a */
    public final String f63334a;

    EnumC22824k(String str) {
        this.f63334a = str;
    }

    /* renamed from: a */
    public static EnumC22824k m7732a(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1799711058:
                if (str.equals("carousel-image")) {
                    z = false;
                    break;
                }
                break;
            case -1332589953:
                if (str.equals("message-icon")) {
                    z = true;
                    break;
                }
                break;
            case -902286926:
                if (str.equals("simple")) {
                    z = true;
                    break;
                }
                break;
            case 2908512:
                if (str.equals("carousel")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return CarouselImageMessage;
            case true:
                return IconMessage;
            case true:
                return SimpleMessage;
            case true:
                return CarouselMessage;
            default:
                return null;
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f63334a;
    }
}
