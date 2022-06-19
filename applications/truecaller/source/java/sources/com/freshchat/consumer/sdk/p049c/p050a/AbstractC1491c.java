package com.freshchat.consumer.sdk.p049c.p050a;

import com.freshchat.consumer.sdk.beans.ColDef;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.a.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/a/c.class */
public abstract class AbstractC1491c implements AbstractC1496h {
    /* renamed from: fN */
    private Set<Integer> m40805fN() {
        HashSet hashSet = new HashSet();
        for (ColDef colDef : mo40796cO()) {
            hashSet.add(Integer.valueOf(colDef.getVersionNumber()));
        }
        return hashSet;
    }

    /* renamed from: m */
    public static List<String> m40803m(int i) {
        AbstractC1496h[] abstractC1496hArr;
        ArrayList arrayList = new ArrayList();
        for (AbstractC1496h abstractC1496h : C1502n.f4105eq) {
            if (abstractC1496h.mo40800fL() <= i) {
                arrayList.add(abstractC1496h.mo40801cT());
                arrayList.add(abstractC1496h.mo40798n(i));
            }
        }
        return arrayList;
    }

    /* renamed from: q */
    public static List<String> m40802q(int i) {
        AbstractC1496h[] abstractC1496hArr;
        ColDef[] mo40796cO;
        ArrayList arrayList = new ArrayList();
        for (AbstractC1496h abstractC1496h : C1502n.f4105eq) {
            int mo40800fL = abstractC1496h.mo40800fL();
            int mo40799fM = abstractC1496h.mo40799fM();
            if (mo40800fL <= i && mo40799fM >= i) {
                if (mo40800fL == i) {
                    arrayList.add(abstractC1496h.mo40801cT());
                    arrayList.add(abstractC1496h.mo40798n(i));
                } else if (mo40800fL < mo40799fM) {
                    for (ColDef colDef : abstractC1496h.mo40796cO()) {
                        if (colDef.getVersionNumber() == i) {
                            StringBuilder m8728C = C22128a.m8728C("ALTER TABLE ");
                            m8728C.append(abstractC1496h.mo40795cP());
                            m8728C.append(" ADD COLUMN ");
                            m8728C.append(colDef.getColumnDefForQuery());
                            arrayList.add(m8728C.toString());
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: cR */
    public final String[] m40807cR() {
        ColDef[] mo40796cO = mo40796cO();
        String[] strArr = new String[mo40796cO.length];
        int length = mo40796cO.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            strArr[i2] = mo40796cO[i].getColumnName();
            i++;
            i2++;
        }
        return strArr;
    }

    /* renamed from: cS */
    public final String m40806cS() {
        return m40804k(true);
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: cT */
    public final String mo40801cT() {
        StringBuilder m8728C = C22128a.m8728C("DROP TABLE IF EXISTS ");
        m8728C.append(mo40795cP());
        m8728C.append(";");
        return m8728C.toString();
    }

    /* renamed from: cU */
    public String mo40797cU() {
        return "";
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: fL */
    public final int mo40800fL() {
        return ((Integer) Collections.min(m40805fN())).intValue();
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: fM */
    public final int mo40799fM() {
        return ((Integer) Collections.max(m40805fN())).intValue();
    }

    /* renamed from: k */
    public final String m40804k(boolean z) {
        StringBuilder sb = new StringBuilder();
        String[] m40807cR = m40807cR();
        sb.append("INSERT");
        sb.append(z ? " OR REPLACE " : StringConstant.SPACE);
        sb.append(" INTO ");
        sb.append(mo40795cP());
        sb.append("(");
        C22128a.m8666T0(sb, C1626as.m40231a(m40807cR, ","), ")", " VALUES ", "(");
        sb.append(C1626as.m40232a("?", ",", m40807cR.length));
        sb.append(");");
        return sb.toString();
    }

    @Override // com.freshchat.consumer.sdk.p049c.p050a.AbstractC1496h
    /* renamed from: n */
    public final String mo40798n(int i) {
        StringBuilder m8728C = C22128a.m8728C("CREATE TABLE IF NOT EXISTS ");
        m8728C.append(mo40795cP());
        m8728C.append("(");
        ColDef[] mo40796cO = mo40796cO();
        int length = mo40796cO.length;
        String str = "";
        int i2 = 0;
        while (i2 < length) {
            ColDef colDef = mo40796cO[i2];
            String str2 = str;
            if (colDef.getVersionNumber() <= i) {
                m8728C.append(str);
                m8728C.append(colDef.getColumnDefForQuery());
                str2 = ",";
            }
            i2++;
            str = str2;
        }
        if (C1626as.m40233a(mo40797cU())) {
            m8728C.append(",");
            m8728C.append(mo40797cU());
        }
        m8728C.append(")");
        return m8728C.toString();
    }
}
