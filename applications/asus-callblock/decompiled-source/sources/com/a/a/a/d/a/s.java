package com.a.a.a.d.a;

import android.util.Pair;
import com.a.a.a.d.f;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/a/s.class */
public final class s {
    public static String a(l lVar, f fVar) {
        boolean z = true;
        StringBuilder sb = new StringBuilder();
        if (lVar != null) {
            if (lVar.c()) {
                sb.append("&$inlinecount=allpages");
            }
            if (lVar.h() > 0) {
                sb.append("&$top=");
                sb.append(lVar.h());
            }
            if (lVar.i() >= 0) {
                sb.append("&$skip=");
                sb.append(lVar.i());
            }
            if (lVar.e().size() > 0) {
                sb.append("&$orderby=");
                boolean z2 = true;
                for (Pair<String, u> pair : lVar.e()) {
                    if (z2) {
                        z2 = false;
                    } else {
                        sb.append(",");
                    }
                    sb.append(q.a((String) pair.first, "!$&'()*+,;=:@"));
                    sb.append("%20");
                    sb.append(pair.second == u.Ascending ? "asc" : "desc");
                }
            }
            if (lVar.d()) {
                sb.append("&__includeDeleted=true");
            }
        }
        for (Pair<String, String> pair2 : fVar.a(fVar.a(), lVar != null ? lVar.g() : null)) {
            if (pair2.first != null) {
                sb.append("&");
                String str = (String) pair2.first;
                String str2 = (String) pair2.second;
                String str3 = str2;
                if (str2 == null) {
                    str3 = "null";
                }
                sb.append(q.a(str, "!$'()*,;:@"));
                sb.append("=");
                sb.append(q.a(str3, "!$'()*,;=:@"));
            }
        }
        if (!(lVar == null || lVar.f() == null || lVar.f().size() <= 0)) {
            sb.append("&$select=");
            for (String str4 : lVar.f()) {
                if (z) {
                    z = false;
                } else {
                    sb.append(",");
                }
                sb.append(q.a(str4, "!$&'()*,;=:@"));
            }
        }
        return sb.toString();
    }
}
