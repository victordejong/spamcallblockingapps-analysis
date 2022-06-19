package p193e.p1485h.p1486a.p1488b.p1492k;

import e.h.a.b.h.b;
import e.h.a.b.h.c;
import e.h.a.b.h.d;
import e.h.a.b.h.e;
import e.h.a.b.h.g;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1485h.p1486a.p1488b.C22675d;
import p193e.p1485h.p1486a.p1488b.EnumC22678e;
import p193e.p1485h.p1486a.p1488b.p1489h.AbstractC22682a;
import s1.z.c.l;
@Metadata(d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\b��\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/clevertap/android/pushtemplates/validators/ValidatorFactory;", "", "()V", "Companion", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.k.l */
/* loaded from: classes-dex2jar.jar:e/h/a/b/k/l.class */
public final class C22708l {

    /* renamed from: a */
    public static Map<String, ? extends AbstractC22682a<? extends Object>> f62829a;

    /* renamed from: a */
    public static final AbstractC22707k m7931a(EnumC22678e enumC22678e, C22675d c22675d) {
        l.e(enumC22678e, "templateType");
        l.e(c22675d, "templateRenderer");
        l.e(c22675d, "templateRenderer");
        HashMap hashMap = new HashMap();
        hashMap.put("PT_TITLE", new g(c22675d.f62764c, 0, "Title is missing or empty"));
        hashMap.put("PT_MSG", new g(c22675d.f62765d, 0, "Message is missing or empty"));
        hashMap.put("PT_BG", new g(c22675d.f62779r, 0, "Background colour is missing or empty"));
        hashMap.put("PT_DEEPLINK_LIST", new e(c22675d.f62773l, 1, "Deeplink is missing or empty"));
        hashMap.put("PT_IMAGE_LIST", new e(c22675d.f62772k, 3, "Three required images not present"));
        hashMap.put("PT_RATING_DEFAULT_DL", new g(c22675d.f62780s, 0, "Default deeplink is missing or empty"));
        hashMap.put("PT_FIVE_DEEPLINK_LIST", new e(c22675d.f62773l, 3, "Three required deeplinks not present"));
        hashMap.put("PT_FIVE_IMAGE_LIST", new e(c22675d.f62772k, 3, "Three required images not present"));
        hashMap.put("PT_PRODUCT_THREE_IMAGE_LIST", new d(c22675d.f62772k, 3, "Only three images are required"));
        hashMap.put("PT_THREE_DEEPLINK_LIST", new d(c22675d.f62773l, 3, "Three required deeplinks not present"));
        hashMap.put("PT_BIG_TEXT_LIST", new d(c22675d.f62774m, 3, "Three required product titles not present"));
        hashMap.put("PT_SMALL_TEXT_LIST", new d(c22675d.f62775n, 3, "Three required product descriptions not present"));
        hashMap.put("PT_PRODUCT_DISPLAY_ACTION", new g(c22675d.f62777p, 0, "Button label is missing or empty"));
        hashMap.put("PT_PRODUCT_DISPLAY_ACTION_CLR", new g(c22675d.f62778q, 0, "Button colour is missing or empty"));
        hashMap.put("PT_BIG_IMG", new g(c22675d.f62768g, 0, "Display Image is missing or empty"));
        hashMap.put("PT_TIMER_THRESHOLD", new b(c22675d.f62784w, -1, "Timer Threshold or End time not defined"));
        hashMap.put("PT_TIMER_END", new b(c22675d.f62743B, -1, "Timer Threshold or End time not defined"));
        hashMap.put("PT_INPUT_FEEDBACK", new g(c22675d.f62786y, 0, "Feedback Text or Actions is missing or empty"));
        hashMap.put("PT_ACTIONS", new c(c22675d.f62755N, 0, "Feedback Text or Actions is missing or empty"));
        f62829a = hashMap;
        int ordinal = enumC22678e.ordinal();
        f fVar = null;
        switch (ordinal) {
            case 0:
                Map<String, ? extends AbstractC22682a<? extends Object>> map = f62829a;
                if (map == null) {
                    l.l("keys");
                    throw null;
                }
                fVar = new b(new C22705d(map));
                break;
            case 1:
            case 2:
                Map<String, ? extends AbstractC22682a<? extends Object>> map2 = f62829a;
                if (map2 == null) {
                    l.l("keys");
                    throw null;
                }
                fVar = new c(new b(new C22705d(map2)));
                break;
            case 3:
                Map<String, ? extends AbstractC22682a<? extends Object>> map3 = f62829a;
                if (map3 == null) {
                    l.l("keys");
                    throw null;
                }
                fVar = new h(new b(new C22705d(map3)));
                break;
            case 4:
                Map<String, ? extends AbstractC22682a<? extends Object>> map4 = f62829a;
                if (map4 == null) {
                    l.l("keys");
                    throw null;
                }
                fVar = new e(new C22704a(map4));
                break;
            case 5:
                Map<String, ? extends AbstractC22682a<? extends Object>> map5 = f62829a;
                if (map5 == null) {
                    l.l("keys");
                    throw null;
                }
                fVar = new g(new b(new C22705d(map5)));
                break;
            case 6:
                Map<String, ? extends AbstractC22682a<? extends Object>> map6 = f62829a;
                if (map6 == null) {
                    l.l("keys");
                    throw null;
                }
                fVar = new m(new C22705d(map6));
                break;
            case 7:
                Map<String, ? extends AbstractC22682a<? extends Object>> map7 = f62829a;
                if (map7 == null) {
                    l.l("keys");
                    throw null;
                }
                fVar = new j(new b(new C22705d(map7)));
                break;
            case 8:
                Map<String, ? extends AbstractC22682a<? extends Object>> map8 = f62829a;
                if (map8 == null) {
                    l.l("keys");
                    throw null;
                }
                fVar = new f(new C22705d(map8));
                break;
        }
        return fVar;
    }
}
