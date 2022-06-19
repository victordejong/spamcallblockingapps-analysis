package com.truecaller.insights.models.pdo;

import androidx.annotation.Keep;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10553h;
import s1.i;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/PdoBinderType.class */
public abstract class PdoBinderType {

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0087\b\u0018��2\u00020\u0001B»\u0001\u0012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b3\u00104J!\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u001c\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\f\u0010\u000bJ\u001c\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\r\u0010\u000bJ\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000bJ\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u000bJ\u001c\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u000bJ\u001c\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u000bJ\u001c\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u000bJ\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u000bJÖ\u0001\u0010\u001d\u001a\u00020��2\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0014\b\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0014\b\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0014\b\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0014\b\u0002\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0014\b\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0014\b\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\"\u001a\u00020!HÖ\u0001¢\u0006\u0004\b\"\u0010#J\u001a\u0010'\u001a\u00020&2\b\u0010%\u001a\u0004\u0018\u00010$HÖ\u0003¢\u0006\u0004\b'\u0010(R%\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010)\u001a\u0004\b*\u0010\u000bR%\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010)\u001a\u0004\b+\u0010\u000bR%\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u0010)\u001a\u0004\b,\u0010\u000bR%\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010)\u001a\u0004\b-\u0010\u000bR%\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010)\u001a\u0004\b.\u0010\u000bR%\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010)\u001a\u0004\b/\u0010\u000bR%\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010)\u001a\u0004\b0\u0010\u000bR%\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010)\u001a\u0004\b1\u0010\u000bR%\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010)\u001a\u0004\b2\u0010\u000b¨\u00065"}, d2 = {"Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;", "Lcom/truecaller/insights/models/pdo/PdoBinderType;", "Le/a/c/r/h/h;", "category", "", "", "getBinderByCategory", "(Le/a/c/r/h/h;)Ljava/util/Map;", "getBinderByCategoryString", "(Ljava/lang/String;)Ljava/util/Map;", "component1", "()Ljava/util/Map;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "GRM_BANK", "GRM_EVENT", "GRM_TRAVEL", "GRM_BILL", "GRM_OTP", "GRM_OFFERS", "GRM_NOTIF", "GRM_DELIVERY", "GRM_VOID", "copy", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/Map;", "getGRM_BILL", "getGRM_DELIVERY", "getGRM_VOID", "getGRM_TRAVEL", "getGRM_BANK", "getGRM_OTP", "getGRM_EVENT", "getGRM_NOTIF", "getGRM_OFFERS", "<init>", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/PdoBinderType$PdoBinder.class */
    public static final class PdoBinder extends PdoBinderType {
        private final Map<String, String> GRM_BANK;
        private final Map<String, String> GRM_BILL;
        private final Map<String, String> GRM_DELIVERY;
        private final Map<String, String> GRM_EVENT;
        private final Map<String, String> GRM_NOTIF;
        private final Map<String, String> GRM_OFFERS;
        private final Map<String, String> GRM_OTP;
        private final Map<String, String> GRM_TRAVEL;
        private final Map<String, String> GRM_VOID;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PdoBinder(Map<String, String> map, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4, Map<String, String> map5, Map<String, String> map6, Map<String, String> map7, Map<String, String> map8, Map<String, String> map9) {
            super(null);
            l.e(map, "GRM_BANK");
            l.e(map2, "GRM_EVENT");
            l.e(map3, "GRM_TRAVEL");
            l.e(map4, "GRM_BILL");
            l.e(map5, "GRM_OTP");
            l.e(map6, "GRM_OFFERS");
            l.e(map7, "GRM_NOTIF");
            l.e(map8, "GRM_DELIVERY");
            l.e(map9, "GRM_VOID");
            this.GRM_BANK = map;
            this.GRM_EVENT = map2;
            this.GRM_TRAVEL = map3;
            this.GRM_BILL = map4;
            this.GRM_OTP = map5;
            this.GRM_OFFERS = map6;
            this.GRM_NOTIF = map7;
            this.GRM_DELIVERY = map8;
            this.GRM_VOID = map9;
        }

        public static /* synthetic */ PdoBinder copy$default(PdoBinder pdoBinder, Map map, Map map2, Map map3, Map map4, Map map5, Map map6, Map map7, Map map8, Map map9, int i, Object obj) {
            if ((i & 1) != 0) {
                map = pdoBinder.GRM_BANK;
            }
            if ((i & 2) != 0) {
                map2 = pdoBinder.GRM_EVENT;
            }
            if ((i & 4) != 0) {
                map3 = pdoBinder.GRM_TRAVEL;
            }
            if ((i & 8) != 0) {
                map4 = pdoBinder.GRM_BILL;
            }
            if ((i & 16) != 0) {
                map5 = pdoBinder.GRM_OTP;
            }
            if ((i & 32) != 0) {
                map6 = pdoBinder.GRM_OFFERS;
            }
            if ((i & 64) != 0) {
                map7 = pdoBinder.GRM_NOTIF;
            }
            if ((i & 128) != 0) {
                map8 = pdoBinder.GRM_DELIVERY;
            }
            if ((i & 256) != 0) {
                map9 = pdoBinder.GRM_VOID;
            }
            return pdoBinder.copy(map, map2, map3, map4, map5, map6, map7, map8, map9);
        }

        public final Map<String, String> component1() {
            return this.GRM_BANK;
        }

        public final Map<String, String> component2() {
            return this.GRM_EVENT;
        }

        public final Map<String, String> component3() {
            return this.GRM_TRAVEL;
        }

        public final Map<String, String> component4() {
            return this.GRM_BILL;
        }

        public final Map<String, String> component5() {
            return this.GRM_OTP;
        }

        public final Map<String, String> component6() {
            return this.GRM_OFFERS;
        }

        public final Map<String, String> component7() {
            return this.GRM_NOTIF;
        }

        public final Map<String, String> component8() {
            return this.GRM_DELIVERY;
        }

        public final Map<String, String> component9() {
            return this.GRM_VOID;
        }

        public final PdoBinder copy(Map<String, String> map, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4, Map<String, String> map5, Map<String, String> map6, Map<String, String> map7, Map<String, String> map8, Map<String, String> map9) {
            l.e(map, "GRM_BANK");
            l.e(map2, "GRM_EVENT");
            l.e(map3, "GRM_TRAVEL");
            l.e(map4, "GRM_BILL");
            l.e(map5, "GRM_OTP");
            l.e(map6, "GRM_OFFERS");
            l.e(map7, "GRM_NOTIF");
            l.e(map8, "GRM_DELIVERY");
            l.e(map9, "GRM_VOID");
            return new PdoBinder(map, map2, map3, map4, map5, map6, map7, map8, map9);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof PdoBinder)) {
                    return false;
                }
                PdoBinder pdoBinder = (PdoBinder) obj;
                return l.a(this.GRM_BANK, pdoBinder.GRM_BANK) && l.a(this.GRM_EVENT, pdoBinder.GRM_EVENT) && l.a(this.GRM_TRAVEL, pdoBinder.GRM_TRAVEL) && l.a(this.GRM_BILL, pdoBinder.GRM_BILL) && l.a(this.GRM_OTP, pdoBinder.GRM_OTP) && l.a(this.GRM_OFFERS, pdoBinder.GRM_OFFERS) && l.a(this.GRM_NOTIF, pdoBinder.GRM_NOTIF) && l.a(this.GRM_DELIVERY, pdoBinder.GRM_DELIVERY) && l.a(this.GRM_VOID, pdoBinder.GRM_VOID);
            }
            return true;
        }

        public final Map<String, String> getBinderByCategory(AbstractC10553h abstractC10553h) {
            Map<String, String> map;
            l.e(abstractC10553h, "category");
            if (l.a(abstractC10553h, AbstractC10553h.C10554a.f31482a)) {
                map = this.GRM_BANK;
            } else if (l.a(abstractC10553h, AbstractC10553h.C10555b.f31483a)) {
                map = this.GRM_BILL;
            } else if (l.a(abstractC10553h, AbstractC10553h.C10557d.f31485a)) {
                map = this.GRM_EVENT;
            } else if (l.a(abstractC10553h, AbstractC10553h.C10560g.f31488a)) {
                map = this.GRM_OTP;
            } else if (l.a(abstractC10553h, AbstractC10553h.C10558e.f31486a)) {
                map = this.GRM_NOTIF;
            } else if (l.a(abstractC10553h, AbstractC10553h.C10562i.f31490a)) {
                map = this.GRM_TRAVEL;
            } else if (l.a(abstractC10553h, AbstractC10553h.C10559f.f31487a)) {
                map = this.GRM_OFFERS;
            } else if (l.a(abstractC10553h, AbstractC10553h.C10556c.f31484a)) {
                map = this.GRM_DELIVERY;
            } else if (!l.a(abstractC10553h, AbstractC10553h.C10561h.f31489a)) {
                throw new i();
            } else {
                map = this.GRM_VOID;
            }
            return map;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public final Map<String, String> getBinderByCategoryString(String str) {
            Map<String, String> map;
            l.e(str, "category");
            switch (str.hashCode()) {
                case -1935925833:
                    if (str.equals("Offers")) {
                        map = this.GRM_OFFERS;
                        break;
                    }
                    map = this.GRM_VOID;
                    break;
                case -1781830854:
                    if (str.equals("Travel")) {
                        map = this.GRM_TRAVEL;
                        break;
                    }
                    map = this.GRM_VOID;
                    break;
                case 78603:
                    if (str.equals("OTP")) {
                        map = this.GRM_OTP;
                        break;
                    }
                    map = this.GRM_VOID;
                    break;
                case 2062940:
                    if (str.equals("Bank")) {
                        map = this.GRM_BANK;
                        break;
                    }
                    map = this.GRM_VOID;
                    break;
                case 2070567:
                    if (str.equals("Bill")) {
                        map = this.GRM_BILL;
                        break;
                    }
                    map = this.GRM_VOID;
                    break;
                case 2578847:
                    if (str.equals("Skip")) {
                        map = this.GRM_VOID;
                        break;
                    }
                    map = this.GRM_VOID;
                    break;
                case 67338874:
                    if (str.equals("Event")) {
                        map = this.GRM_EVENT;
                        break;
                    }
                    map = this.GRM_VOID;
                    break;
                case 75456272:
                    if (str.equals("Notif")) {
                        map = this.GRM_NOTIF;
                        break;
                    }
                    map = this.GRM_VOID;
                    break;
                case 888111124:
                    if (str.equals("Delivery")) {
                        map = this.GRM_DELIVERY;
                        break;
                    }
                    map = this.GRM_VOID;
                    break;
                default:
                    map = this.GRM_VOID;
                    break;
            }
            return map;
        }

        public final Map<String, String> getGRM_BANK() {
            return this.GRM_BANK;
        }

        public final Map<String, String> getGRM_BILL() {
            return this.GRM_BILL;
        }

        public final Map<String, String> getGRM_DELIVERY() {
            return this.GRM_DELIVERY;
        }

        public final Map<String, String> getGRM_EVENT() {
            return this.GRM_EVENT;
        }

        public final Map<String, String> getGRM_NOTIF() {
            return this.GRM_NOTIF;
        }

        public final Map<String, String> getGRM_OFFERS() {
            return this.GRM_OFFERS;
        }

        public final Map<String, String> getGRM_OTP() {
            return this.GRM_OTP;
        }

        public final Map<String, String> getGRM_TRAVEL() {
            return this.GRM_TRAVEL;
        }

        public final Map<String, String> getGRM_VOID() {
            return this.GRM_VOID;
        }

        public int hashCode() {
            Map<String, String> map = this.GRM_BANK;
            int i = 0;
            int hashCode = map != null ? map.hashCode() : 0;
            Map<String, String> map2 = this.GRM_EVENT;
            int hashCode2 = map2 != null ? map2.hashCode() : 0;
            Map<String, String> map3 = this.GRM_TRAVEL;
            int hashCode3 = map3 != null ? map3.hashCode() : 0;
            Map<String, String> map4 = this.GRM_BILL;
            int hashCode4 = map4 != null ? map4.hashCode() : 0;
            Map<String, String> map5 = this.GRM_OTP;
            int hashCode5 = map5 != null ? map5.hashCode() : 0;
            Map<String, String> map6 = this.GRM_OFFERS;
            int hashCode6 = map6 != null ? map6.hashCode() : 0;
            Map<String, String> map7 = this.GRM_NOTIF;
            int hashCode7 = map7 != null ? map7.hashCode() : 0;
            Map<String, String> map8 = this.GRM_DELIVERY;
            int hashCode8 = map8 != null ? map8.hashCode() : 0;
            Map<String, String> map9 = this.GRM_VOID;
            if (map9 != null) {
                i = map9.hashCode();
            }
            return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PdoBinder(GRM_BANK=");
            m8728C.append(this.GRM_BANK);
            m8728C.append(", GRM_EVENT=");
            m8728C.append(this.GRM_EVENT);
            m8728C.append(", GRM_TRAVEL=");
            m8728C.append(this.GRM_TRAVEL);
            m8728C.append(", GRM_BILL=");
            m8728C.append(this.GRM_BILL);
            m8728C.append(", GRM_OTP=");
            m8728C.append(this.GRM_OTP);
            m8728C.append(", GRM_OFFERS=");
            m8728C.append(this.GRM_OFFERS);
            m8728C.append(", GRM_NOTIF=");
            m8728C.append(this.GRM_NOTIF);
            m8728C.append(", GRM_DELIVERY=");
            m8728C.append(this.GRM_DELIVERY);
            m8728C.append(", GRM_VOID=");
            m8728C.append(this.GRM_VOID);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.insights.models.pdo.PdoBinderType$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/PdoBinderType$a.class */
    public static final class C4068a extends PdoBinderType {

        /* renamed from: a */
        public static final C4068a f12659a = new C4068a();

        public C4068a() {
            super(null);
        }
    }

    private PdoBinderType() {
    }

    public /* synthetic */ PdoBinderType(f fVar) {
        this();
    }
}
