package com.appsflyer.internal;

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
public final class C3422g {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.g$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g$a.class */
    public enum EnumC3423a {
        NONE,
        FIRST,
        ALL
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.g$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g$c.class */
    public enum EnumC3424c {
        UNKNOWN("uk"),
        ACCELEROMETER("am"),
        MAGNETOMETER("mm"),
        RESERVED("rs"),
        GYROSCOPE("gs");
        

        /* renamed from: ι */
        String f12957;

        EnumC3424c(String str) {
            this.f12957 = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.g$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g$d.class */
    public enum EnumC3425d {
        UNKNOWN,
        ACCELEROMETER,
        MAGNETOMETER,
        RESERVED,
        GYROSCOPE
    }

    C3422g() {
    }

    /* renamed from: ι */
    private static List<BigDecimal> m37968(Object obj) {
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

    /* renamed from: ι */
    public static Map m37967(List<Map<String, Object>> list) {
        HashMap hashMap;
        ArrayList arrayList;
        HashMap hashMap2 = new HashMap();
        Iterator<Map<String, Object>> it2 = list.iterator();
        while (true) {
            hashMap = hashMap2;
            if (!it2.hasNext()) {
                break;
            }
            Map<String, Object> next = it2.next();
            HashMap hashMap3 = new HashMap();
            boolean z = next.get("sVS") != null;
            EnumC3423a enumC3423a = (!z || !(next.get("sVE") != null)) ? z ? EnumC3423a.FIRST : EnumC3423a.NONE : EnumC3423a.ALL;
            if (enumC3423a == EnumC3423a.NONE) {
                hashMap = new HashMap();
                hashMap.put("er", "na");
                break;
            }
            Integer num = (Integer) next.get("sT");
            String str = (String) next.get("sN");
            if (str != null) {
                hashMap3.put("n", str);
            } else {
                hashMap3.put("n", "uk");
            }
            EnumC3425d enumC3425d = EnumC3425d.values()[num.intValue()];
            ArrayList arrayList2 = new ArrayList(m37968(next.get("sVS")));
            if (enumC3423a == EnumC3423a.ALL) {
                arrayList2.addAll(m37968(next.get("sVE")));
            }
            if (enumC3425d == EnumC3425d.MAGNETOMETER) {
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
            hashMap2.put(EnumC3424c.values()[num.intValue()].f12957, hashMap3);
            if (enumC3423a == EnumC3423a.FIRST) {
                hashMap2.put("er", "no_svs");
            }
        }
        return hashMap;
    }
}
