package com.truecaller.insights.binders.utils;

import com.truecaller.insights.C4030R;
import com.truecaller.insights.models.InsightsDomain;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.k;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.b;
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/binders/utils/DeliverySchemaRuleHelper.class */
public final class DeliverySchemaRuleHelper {

    /* renamed from: a */
    public static final k<Integer, Integer> f12475a = new k<>(Integer.valueOf(C4030R.attr.tcx_avatarTextRed), Integer.valueOf(C4030R.attr.tcx_avatarBackgroundRed));

    /* renamed from: b */
    public static final k<Integer, Integer> f12476b = new k<>(Integer.valueOf(C4030R.attr.tcx_avatarTextYellow), Integer.valueOf(C4030R.attr.tcx_avatarBackgroundYellow));

    /* renamed from: c */
    public static final k<Integer, Integer> f12477c = new k<>(Integer.valueOf(C4030R.attr.tcx_avatarTextGreen), Integer.valueOf(C4030R.attr.tcx_avatarBackgroundGreen));

    /* renamed from: d */
    public static final DeliverySchemaRuleHelper f12478d = null;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "ArrivalOnTime", "ArrivingToday", "ArrivingTomorrow", "ArrivingEarly", "ArrivingDelay", "FailedDelivery", "SelfPickup", "Exchange", "Pickup", "PickedUp", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus.class */
    public enum OrderSubStatus {
        ArrivalOnTime("arrvontm"),
        ArrivingToday("arrvtdy"),
        ArrivingTomorrow("arrvtom"),
        ArrivingEarly("arrvearly"),
        ArrivingDelay("arrvdelay"),
        FailedDelivery("faileddlvry"),
        SelfPickup("selfpickup"),
        Exchange("exchange"),
        Pickup("pickup"),
        PickedUp("pickedup");
        
        public static final C4035a Companion = new C4035a(null);
        private static final Map<String, OrderSubStatus> map;
        private final String value;

        /* renamed from: com.truecaller.insights.binders.utils.DeliverySchemaRuleHelper$OrderSubStatus$a */
        /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus$a.class */
        public static final class C4035a {
            public C4035a(f fVar) {
            }
        }

        static {
            OrderSubStatus[] values = values();
            int m3942Y1 = C25225a.m3942Y1(10);
            int i = m3942Y1;
            if (m3942Y1 < 16) {
                i = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(i);
            for (OrderSubStatus orderSubStatus : values) {
                linkedHashMap.put(orderSubStatus.value, orderSubStatus);
            }
            map = linkedHashMap;
        }

        OrderSubStatus(String str) {
            this.value = str;
        }

        public static final /* synthetic */ Map access$getMap$cp() {
            return map;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "ManageDelivery", "TrackDelivery", "BookDelivery", "PickDelivery", "Acknowledge", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes.class */
    public enum UrlTypes {
        ManageDelivery("managedlvry"),
        TrackDelivery("trackdlvry"),
        BookDelivery("bookdlvry"),
        PickDelivery("pickdlvry"),
        Acknowledge("acknwlg");
        
        public static final C4036a Companion = new C4036a(null);
        private static final Map<String, UrlTypes> map;
        private final String value;

        /* renamed from: com.truecaller.insights.binders.utils.DeliverySchemaRuleHelper$UrlTypes$a */
        /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes$a.class */
        public static final class C4036a {
            public C4036a(f fVar) {
            }
        }

        static {
            UrlTypes[] values = values();
            int m3942Y1 = C25225a.m3942Y1(5);
            int i = m3942Y1;
            if (m3942Y1 < 16) {
                i = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(i);
            for (UrlTypes urlTypes : values) {
                linkedHashMap.put(urlTypes.value, urlTypes);
            }
            map = linkedHashMap;
        }

        UrlTypes(String str) {
            this.value = str;
        }

        public static final /* synthetic */ Map access$getMap$cp() {
            return map;
        }

        public final String getValue() {
            return this.value;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static final String m35286a(String str) {
        String str2;
        if (str != null) {
            switch (str.hashCode()) {
                case -1911998312:
                    if (str.equals("Packed")) {
                        str2 = OrderStatus.OrderPacked.getValue();
                        break;
                    }
                    break;
                case -1572307763:
                    if (str.equals("Order Confirmed")) {
                        str2 = OrderStatus.OrderConfirmed.getValue();
                        break;
                    }
                    break;
                case -606546937:
                    if (str.equals("Arriving Soon")) {
                        str2 = OrderStatus.Transit.getValue();
                        break;
                    }
                    break;
                case -568756941:
                    if (str.equals("Shipped")) {
                        str2 = OrderStatus.OrderShipped.getValue();
                        break;
                    }
                    break;
                case -291609921:
                    if (str.equals("Order Cancelled")) {
                        str2 = OrderStatus.OrderCancelled.getValue();
                        break;
                    }
                    break;
                case -148828048:
                    if (str.equals("Ready for pickup")) {
                        str2 = OrderSubStatus.SelfPickup.getValue();
                        break;
                    }
                    break;
                case 883957375:
                    if (str.equals("Delivery unsuccessful")) {
                        str2 = OrderSubStatus.FailedDelivery.getValue();
                        break;
                    }
                    break;
                case 1622940524:
                    if (str.equals("Return Pickup")) {
                        str2 = OrderStatus.Returned.getValue();
                        break;
                    }
                    break;
                case 1761640548:
                    if (str.equals("Delivered")) {
                        str2 = OrderStatus.Delivered.getValue();
                        break;
                    }
                    break;
            }
            return str2;
        }
        str2 = null;
        return str2;
    }

    /* renamed from: b */
    public static final String m35285b(InsightsDomain.C4058b c4058b) {
        l.e(c4058b, "$this$getUiDate");
        b m35252c = c4058b.m35252c();
        if (m35252c == null || c4058b.m35250e() == OrderStatus.Undelivered) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(m35252c.q());
        int q = m35252c.q();
        if (q >= 20) {
            q %= 10;
        }
        sb.append(q != 1 ? q != 2 ? q != 3 ? "th" : "rd" : "nd" : "st");
        sb.append(' ');
        b.a A = m35252c.A();
        l.d(A, "dateTime.monthOfYear()");
        sb.append(A.b());
        return sb.toString();
    }
}
