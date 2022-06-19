package com.truecaller.service.p176t9;

import android.content.ContentValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1396y4.p1398g.AbstractC21806a;
import s1.f0.r;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: com.truecaller.service.t9.T9DaoHelper */
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/t9/T9DaoHelper.class */
public final class T9DaoHelper {

    /* renamed from: a */
    public AbstractC21806a f14780a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/service/t9/T9DaoHelper$MappingRule;", "", "<init>", "(Ljava/lang/String;I)V", "MATCH_IF_STARTS_WITH", "MATCH_ANYWHERE", "MATCH_ANY_WORD", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.service.t9.T9DaoHelper$MappingRule */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/service/t9/T9DaoHelper$MappingRule.class */
    public enum MappingRule {
        MATCH_IF_STARTS_WITH,
        MATCH_ANYWHERE,
        MATCH_ANY_WORD
    }

    /* renamed from: b */
    public static /* synthetic */ List m34738b(T9DaoHelper t9DaoHelper, String str, int i, MappingRule mappingRule, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            mappingRule = MappingRule.MATCH_ANY_WORD;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return t9DaoHelper.m34739a(str, i, mappingRule, z);
    }

    /* renamed from: a */
    public final List<ContentValues> m34739a(String str, int i, MappingRule mappingRule, boolean z) {
        ArrayList arrayList;
        String str2;
        String str3 = !(str == null || r.p(str)) ? str : null;
        if (str3 != null) {
            AbstractC21806a abstractC21806a = this.f14780a;
            if (abstractC21806a == null) {
                l.l("t9Mapper");
                throw null;
            }
            List<String> mo9040a = abstractC21806a.mo9040a(str3, mappingRule == MappingRule.MATCH_ANY_WORD, z);
            if (!(!mo9040a.isEmpty())) {
                mo9040a = null;
            }
            if (mo9040a == null) {
                mo9040a = C25225a.m3962T1(null);
            }
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(mo9040a, 10));
            Iterator<T> it = mo9040a.iterator();
            int i2 = 0;
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (i2 < 0) {
                    i.N0();
                    throw null;
                }
                String str4 = (String) next;
                ContentValues contentValues = new ContentValues();
                int ordinal = mappingRule.ordinal();
                if (ordinal != 0) {
                    if (ordinal == 1) {
                        str2 = "t9_anywhere";
                        contentValues.put(str2, str4);
                        contentValues.put("matched_value", str3);
                        contentValues.put("hit_priority", Integer.valueOf(i - i2));
                        arrayList2.add(contentValues);
                        i2++;
                    } else if (ordinal != 2) {
                        throw new s1.i();
                    }
                }
                str2 = "t9_starts_with";
                contentValues.put(str2, str4);
                contentValues.put("matched_value", str3);
                contentValues.put("hit_priority", Integer.valueOf(i - i2));
                arrayList2.add(contentValues);
                i2++;
            }
        } else {
            arrayList = s.a;
        }
        return arrayList;
    }
}
