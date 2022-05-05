package com.a.a.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d.class */
public enum d {
    TypedTable("TT"),
    UntypedTable("TU"),
    TypedApiCall("AT"),
    JsonApiCall("AJ"),
    GenericApiCall("AG"),
    AdditionalQueryParameters("QS"),
    Offline("OL"),
    OpportunisticConcurrency("OC");
    
    private static final d[] i = (d[]) d.class.getEnumConstants();
    private String j;

    d(String str) {
        this.j = str;
    }

    public static String a(EnumSet<d> enumSet) {
        d[] dVarArr;
        String sb;
        ArrayList arrayList = new ArrayList();
        for (d dVar : i) {
            if (enumSet.contains(dVar)) {
                arrayList.add(dVar.j);
            }
        }
        if (arrayList.isEmpty()) {
            sb = null;
        } else {
            Collections.sort(arrayList);
            StringBuilder sb2 = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sb2.append((String) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb2.append(",");
            }
            sb = sb2.toString();
        }
        return sb;
    }
}
