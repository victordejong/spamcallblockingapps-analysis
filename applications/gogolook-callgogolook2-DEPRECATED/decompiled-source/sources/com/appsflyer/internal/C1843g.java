package com.appsflyer.internal;

import com.flurry.sdk.C3184gs;
import com.flurry.sdk.C3478n;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.appsflyer.internal.g */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g.class */
public final class C1843g {

    /* renamed from: com.appsflyer.internal.g$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g$b.class */
    public enum EnumC1844b {
        UNKNOWN,
        ACCELEROMETER,
        MAGNETOMETER,
        RESERVED,
        GYROSCOPE
    }

    /* renamed from: com.appsflyer.internal.g$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g$c.class */
    public enum EnumC1845c {
        UNKNOWN("uk"),
        ACCELEROMETER("am"),
        MAGNETOMETER("mm"),
        RESERVED("rs"),
        GYROSCOPE(C3184gs.f5259a);
        

        /* renamed from: ı */
        public String f1867;

        EnumC1845c(String str) {
            this.f1867 = str;
        }
    }

    /* renamed from: com.appsflyer.internal.g$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g$d.class */
    public enum EnumC1846d {
        NONE,
        FIRST,
        ALL
    }

    /* renamed from: ı */
    public static List<BigDecimal> m36129(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        Float f = (Float) arrayList.get(0);
        Float f2 = (Float) arrayList.get(1);
        Float f3 = (Float) arrayList.get(2);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(BigDecimal.valueOf(Double.parseDouble(f.toString())));
        arrayList2.add(BigDecimal.valueOf(Double.parseDouble(f2.toString())));
        arrayList2.add(BigDecimal.valueOf(Double.parseDouble(f3.toString())));
        return arrayList2;
    }

    /* renamed from: ı */
    public static Map m36128(List<Map<String, Object>> list) {
        HashMap hashMap;
        ArrayList arrayList;
        HashMap hashMap2 = new HashMap();
        Iterator<Map<String, Object>> it = list.iterator();
        while (true) {
            hashMap = hashMap2;
            if (!it.hasNext()) {
                break;
            }
            Map<String, Object> next = it.next();
            HashMap hashMap3 = new HashMap();
            boolean z = next.get("sVS") != null;
            EnumC1846d dVar = (!z || !(next.get("sVE") != null)) ? z ? EnumC1846d.FIRST : EnumC1846d.NONE : EnumC1846d.ALL;
            if (dVar == EnumC1846d.NONE) {
                hashMap = new HashMap();
                hashMap.put("er", "na");
                break;
            }
            Integer num = (Integer) next.get("sT");
            String str = (String) next.get("sN");
            if (str != null) {
                hashMap3.put(C3478n.f5989a, str);
            } else {
                hashMap3.put(C3478n.f5989a, "uk");
            }
            EnumC1844b bVar = EnumC1844b.values()[num.intValue()];
            ArrayList arrayList2 = new ArrayList(m36129(next.get("sVS")));
            if (dVar == EnumC1846d.ALL) {
                arrayList2.addAll(m36129(next.get("sVE")));
            }
            if (bVar == EnumC1844b.MAGNETOMETER) {
                ArrayList arrayList3 = new ArrayList();
                BigDecimal valueOf = BigDecimal.valueOf(Math.atan2(((BigDecimal) arrayList2.get(1)).doubleValue(), ((BigDecimal) arrayList2.get(0)).doubleValue()) * 57.29577951308232d);
                DecimalFormat decimalFormat = new DecimalFormat("##.#");
                decimalFormat.setRoundingMode(RoundingMode.DOWN);
                arrayList3.add(Double.valueOf(Double.parseDouble(decimalFormat.format(valueOf))));
                BigDecimal bigDecimal = (BigDecimal) arrayList2.get(2);
                DecimalFormat decimalFormat2 = new DecimalFormat("##.#");
                decimalFormat2.setRoundingMode(RoundingMode.DOWN);
                arrayList3.add(Double.valueOf(Double.parseDouble(decimalFormat2.format(bigDecimal))));
                ArrayList arrayList4 = new ArrayList();
                if (arrayList2.size() > 5) {
                    BigDecimal subtract = BigDecimal.valueOf(Math.atan2(((BigDecimal) arrayList2.get(4)).doubleValue(), ((BigDecimal) arrayList2.get(3)).doubleValue()) * 57.29577951308232d).subtract(valueOf);
                    DecimalFormat decimalFormat3 = new DecimalFormat("##.#");
                    decimalFormat3.setRoundingMode(RoundingMode.DOWN);
                    arrayList4.add(Double.valueOf(Double.parseDouble(decimalFormat3.format(subtract))));
                    BigDecimal subtract2 = ((BigDecimal) arrayList2.get(5)).subtract((BigDecimal) arrayList2.get(2));
                    DecimalFormat decimalFormat4 = new DecimalFormat("##.#");
                    decimalFormat4.setRoundingMode(RoundingMode.DOWN);
                    arrayList4.add(Double.valueOf(Double.parseDouble(decimalFormat4.format(subtract2))));
                }
                arrayList = new ArrayList();
                arrayList.add(arrayList3);
                arrayList.add(arrayList4);
            } else {
                ArrayList arrayList5 = new ArrayList();
                if (arrayList2.size() > 5) {
                    BigDecimal subtract3 = ((BigDecimal) arrayList2.get(3)).subtract((BigDecimal) arrayList2.get(0));
                    DecimalFormat decimalFormat5 = new DecimalFormat("##.#");
                    decimalFormat5.setRoundingMode(RoundingMode.DOWN);
                    arrayList5.add(Double.valueOf(Double.parseDouble(decimalFormat5.format(subtract3))));
                    BigDecimal subtract4 = ((BigDecimal) arrayList2.get(4)).subtract((BigDecimal) arrayList2.get(1));
                    DecimalFormat decimalFormat6 = new DecimalFormat("##.#");
                    decimalFormat6.setRoundingMode(RoundingMode.DOWN);
                    arrayList5.add(Double.valueOf(Double.parseDouble(decimalFormat6.format(subtract4))));
                    BigDecimal subtract5 = ((BigDecimal) arrayList2.get(5)).subtract((BigDecimal) arrayList2.get(2));
                    DecimalFormat decimalFormat7 = new DecimalFormat("##.#");
                    decimalFormat7.setRoundingMode(RoundingMode.DOWN);
                    arrayList5.add(Double.valueOf(Double.parseDouble(decimalFormat7.format(subtract5))));
                }
                ArrayList arrayList6 = new ArrayList();
                BigDecimal bigDecimal2 = (BigDecimal) arrayList2.get(0);
                DecimalFormat decimalFormat8 = new DecimalFormat("##.#");
                decimalFormat8.setRoundingMode(RoundingMode.DOWN);
                arrayList6.add(Double.valueOf(Double.parseDouble(decimalFormat8.format(bigDecimal2))));
                BigDecimal bigDecimal3 = (BigDecimal) arrayList2.get(1);
                DecimalFormat decimalFormat9 = new DecimalFormat("##.#");
                decimalFormat9.setRoundingMode(RoundingMode.DOWN);
                arrayList6.add(Double.valueOf(Double.parseDouble(decimalFormat9.format(bigDecimal3))));
                BigDecimal bigDecimal4 = (BigDecimal) arrayList2.get(2);
                DecimalFormat decimalFormat10 = new DecimalFormat("##.#");
                decimalFormat10.setRoundingMode(RoundingMode.DOWN);
                arrayList6.add(Double.valueOf(Double.parseDouble(decimalFormat10.format(bigDecimal4))));
                arrayList = new ArrayList();
                arrayList.add(arrayList6);
                arrayList.add(arrayList5);
            }
            hashMap3.put("v", arrayList);
            hashMap2.put(EnumC1845c.values()[num.intValue()].f1867, hashMap3);
            if (dVar == EnumC1846d.FIRST) {
                hashMap2.put("er", "no_svs");
            }
        }
        return hashMap;
    }
}
