package com.truecaller.insights.binders.utils;

import com.truecaller.insights.binders.utils.DeliverySchemaRuleHelper;
import com.truecaller.insights.models.InsightsDomain;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\u0001\u0018�� \n2\b\u0012\u0004\u0012\u00020��0\u00012\u00020\u0002:\u0001\u000bB\u0011\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tR\u0019\u0010\u0004\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, d2 = {"Lcom/truecaller/insights/binders/utils/OrderStatus;", "", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", C22021b.f61237c, "OrderConfirmed", "OrderPacked", "OrderShipped", "OrderCancelled", "Returned", "Transit", "ActionRequired", "Undelivered", "Delivered", "Return", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/binders/utils/OrderStatus.class */
public enum OrderStatus {
    OrderConfirmed { // from class: com.truecaller.insights.binders.utils.OrderStatus.e
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Order Confirmed";
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            if (c4058b.m35252c() == null) {
                str = c4058b.m35251d();
            } else {
                StringBuilder m8728C = C22128a.m8728C("Delivery date: ");
                DeliverySchemaRuleHelper deliverySchemaRuleHelper = DeliverySchemaRuleHelper.f12478d;
                m8728C.append(DeliverySchemaRuleHelper.m35285b(c4058b));
                str = m8728C.toString();
            }
            return str;
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            if (c4058b.m35252c() != null) {
                if (c4058b.m35251d().length() > 0) {
                    StringBuilder m8728C = C22128a.m8728C("Confirmed: ");
                    m8728C.append(c4058b.m35251d());
                    str = m8728C.toString();
                    return str;
                }
            }
            str = "Order Confirmed";
            return str;
        }
    },
    OrderPacked { // from class: com.truecaller.insights.binders.utils.OrderStatus.f
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Packed";
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            if (c4058b.m35252c() == null) {
                str = c4058b.m35251d();
            } else {
                StringBuilder m8728C = C22128a.m8728C("Delivery date: ");
                DeliverySchemaRuleHelper deliverySchemaRuleHelper = DeliverySchemaRuleHelper.f12478d;
                m8728C.append(DeliverySchemaRuleHelper.m35285b(c4058b));
                str = m8728C.toString();
            }
            return str;
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            if (c4058b.m35252c() != null) {
                if (c4058b.m35251d().length() > 0) {
                    StringBuilder m8728C = C22128a.m8728C("Packed: ");
                    m8728C.append(c4058b.m35251d());
                    str = m8728C.toString();
                    return str;
                }
            }
            str = "Packed";
            return str;
        }
    },
    OrderShipped { // from class: com.truecaller.insights.binders.utils.OrderStatus.g
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Shipped";
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            if (c4058b.m35252c() == null) {
                str = c4058b.m35251d();
            } else {
                StringBuilder m8728C = C22128a.m8728C("Delivery date: ");
                DeliverySchemaRuleHelper deliverySchemaRuleHelper = DeliverySchemaRuleHelper.f12478d;
                m8728C.append(DeliverySchemaRuleHelper.m35285b(c4058b));
                str = m8728C.toString();
            }
            return str;
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            if (c4058b.m35252c() != null) {
                if (c4058b.m35251d().length() > 0) {
                    StringBuilder m8728C = C22128a.m8728C("Shipped: ");
                    m8728C.append(c4058b.m35251d());
                    str = m8728C.toString();
                    return str;
                }
            }
            str = "Shipped";
            return str;
        }
    },
    OrderCancelled { // from class: com.truecaller.insights.binders.utils.OrderStatus.d
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Order Cancelled";
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return c4058b.m35251d();
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiTitle(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Order Cancelled";
        }
    },
    Returned { // from class: com.truecaller.insights.binders.utils.OrderStatus.i
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Return Pickup";
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return c4058b.m35251d();
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiTitle(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Return Pickup";
        }
    },
    Transit { // from class: com.truecaller.insights.binders.utils.OrderStatus.j
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return c4058b.m35249f() == DeliverySchemaRuleHelper.OrderSubStatus.ArrivingToday ? "Arriving Today" : "Arriving Soon";
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            if (c4058b.m35252c() == null || c4058b.m35249f() == DeliverySchemaRuleHelper.OrderSubStatus.ArrivingToday) {
                str = c4058b.m35251d();
            } else {
                StringBuilder m8728C = C22128a.m8728C("Delivery date: ");
                DeliverySchemaRuleHelper deliverySchemaRuleHelper = DeliverySchemaRuleHelper.f12478d;
                m8728C.append(DeliverySchemaRuleHelper.m35285b(c4058b));
                str = m8728C.toString();
            }
            return str;
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            if (c4058b.m35249f() == DeliverySchemaRuleHelper.OrderSubStatus.ArrivingToday) {
                str = "Arriving Today";
            } else {
                if (c4058b.m35252c() != null) {
                    if (c4058b.m35251d().length() > 0) {
                        StringBuilder m8728C = C22128a.m8728C("Arriving: ");
                        m8728C.append(c4058b.m35251d());
                        str = m8728C.toString();
                    }
                }
                str = "Arriving Soon";
            }
            return str;
        }
    },
    ActionRequired { // from class: com.truecaller.insights.binders.utils.OrderStatus.a
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            DeliverySchemaRuleHelper.OrderSubStatus m35249f = c4058b.m35249f();
            if (m35249f != null) {
                int ordinal = m35249f.ordinal();
                if (ordinal == 5) {
                    str = "Delivery unsuccessful";
                } else if (ordinal == 6) {
                    str = "Ready for pickup";
                }
                return str;
            }
            str = null;
            return str;
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return c4058b.m35251d().length() == 0 ? "Request reattempt or cancel" : c4058b.m35251d();
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            DeliverySchemaRuleHelper.OrderSubStatus m35249f = c4058b.m35249f();
            if (m35249f != null) {
                int ordinal = m35249f.ordinal();
                if (ordinal == 5) {
                    str = "Delivery unsuccessful";
                } else if (ordinal == 6) {
                    str = "Ready for pickup";
                }
                return str;
            }
            str = null;
            return str;
        }
    },
    Undelivered { // from class: com.truecaller.insights.binders.utils.OrderStatus.k
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Not delivered";
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return c4058b.m35251d();
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiTitle(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Not delivered";
        }
    },
    Delivered { // from class: com.truecaller.insights.binders.utils.OrderStatus.c
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Delivered";
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return c4058b.m35251d();
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiTitle(InsightsDomain.C4058b c4058b) {
            l.e(c4058b, "domain");
            return "Delivered";
        }
    },
    Return { // from class: com.truecaller.insights.binders.utils.OrderStatus.h
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiOrderStatus(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            DeliverySchemaRuleHelper.OrderSubStatus m35249f = c4058b.m35249f();
            if (m35249f != null) {
                int ordinal = m35249f.ordinal();
                if (ordinal == 7) {
                    str = "Exchange";
                } else if (ordinal == 8) {
                    str = "Return Pickup";
                } else if (ordinal == 9) {
                    str = "Pickup Complete";
                }
                return str;
            }
            str = null;
            return str;
        }

        @Override // com.truecaller.insights.binders.utils.OrderStatus
        public String uiSubTitle(InsightsDomain.C4058b c4058b) {
            String str;
            l.e(c4058b, "domain");
            if (c4058b.m35252c() == null) {
                str = c4058b.m35251d();
            } else {
                StringBuilder m8728C = C22128a.m8728C("Pickup date: ");
                DeliverySchemaRuleHelper deliverySchemaRuleHelper = DeliverySchemaRuleHelper.f12478d;
                m8728C.append(DeliverySchemaRuleHelper.m35285b(c4058b));
                str = m8728C.toString();
            }
            return str;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
        @Override // com.truecaller.insights.binders.utils.OrderStatus
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String uiTitle(com.truecaller.insights.models.InsightsDomain.C4058b r4) {
            /*
                r3 = this;
                r0 = r4
                java.lang.String r1 = "domain"
                s1.z.c.l.e(r0, r1)
                r0 = r4
                com.truecaller.insights.binders.utils.DeliverySchemaRuleHelper$OrderSubStatus r0 = r0.m35249f()
                r5 = r0
                r0 = r5
                if (r0 != 0) goto L12
                goto L29
            L12:
                r0 = r5
                int r0 = r0.ordinal()
                r6 = r0
                r0 = r6
                r1 = 7
                if (r0 == r1) goto L37
                r0 = r6
                r1 = 8
                if (r0 == r1) goto L31
                r0 = r6
                r1 = 9
                if (r0 == r1) goto L2e
            L29:
                r0 = 0
                r5 = r0
                goto L3a
            L2e:
                java.lang.String r0 = "Pickup Complete"
                return r0
            L31:
                java.lang.String r0 = "Return Pickup"
                r5 = r0
                goto L3a
            L37:
                java.lang.String r0 = "Exchange"
                r5 = r0
            L3a:
                r0 = r5
                r7 = r0
                r0 = r4
                w3.b.a.b r0 = r0.m35252c()
                if (r0 == 0) goto L74
                r0 = r4
                java.lang.String r0 = r0.m35251d()
                int r0 = r0.length()
                if (r0 <= 0) goto L55
                r0 = 1
                r6 = r0
                goto L57
            L55:
                r0 = 0
                r6 = r0
            L57:
                r0 = r5
                r7 = r0
                r0 = r6
                if (r0 == 0) goto L74
                r0 = r5
                java.lang.String r1 = ": "
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8696K(r0, r1)
                r5 = r0
                r0 = r5
                r1 = r4
                java.lang.String r1 = r1.m35251d()
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                java.lang.String r0 = r0.toString()
                r7 = r0
            L74:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.insights.binders.utils.OrderStatus.C4044h.uiTitle(com.truecaller.insights.models.InsightsDomain$b):java.lang.String");
        }
    };
    
    public static final C4038b Companion = new C4038b(null);
    private static final Map<String, OrderStatus> map;
    private final String value;

    /* renamed from: com.truecaller.insights.binders.utils.OrderStatus$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/binders/utils/OrderStatus$b.class */
    public static final class C4038b {
        public C4038b(f fVar) {
        }
    }

    static {
        OrderStatus[] values = values();
        int m3942Y1 = C25225a.m3942Y1(10);
        int i = m3942Y1;
        if (m3942Y1 < 16) {
            i = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (OrderStatus orderStatus : values) {
            linkedHashMap.put(orderStatus.value, orderStatus);
        }
        map = linkedHashMap;
    }

    OrderStatus(String str) {
        this.value = str;
    }

    /* synthetic */ OrderStatus(String str, f fVar) {
        this(str);
    }

    public static final /* synthetic */ Map access$getMap$cp() {
        return map;
    }

    public final String getValue() {
        return this.value;
    }

    public abstract /* synthetic */ String uiOrderStatus(InsightsDomain.C4058b c4058b);

    public abstract /* synthetic */ String uiSubTitle(InsightsDomain.C4058b c4058b);

    public abstract /* synthetic */ String uiTitle(InsightsDomain.C4058b c4058b);
}
