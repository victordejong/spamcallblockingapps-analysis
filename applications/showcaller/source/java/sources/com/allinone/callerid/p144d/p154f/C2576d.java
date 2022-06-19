package com.allinone.callerid.p144d.p154f;

import android.text.TextUtils;
import com.danikula.videocache.C4441m;
import com.danikula.videocache.p227q.AbstractC4447c;
/* renamed from: com.allinone.callerid.d.f.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/f/d.class */
public class C2576d implements AbstractC4447c {
    /* renamed from: b */
    private String m27083b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return (lastIndexOf == -1 || lastIndexOf <= str.lastIndexOf(47) || (lastIndexOf + 2) + 4 <= str.length()) ? "" : str.substring(lastIndexOf + 1, str.length());
    }

    @Override // com.danikula.videocache.p227q.AbstractC4447c
    /* renamed from: a */
    public String mo22429a(String str) {
        String m27083b = m27083b(str);
        int lastIndexOf = str.lastIndexOf(46);
        if (str.length() <= 18 || lastIndexOf <= 18) {
            String m22456d = C4441m.m22456d(str);
            if (!TextUtils.isEmpty(m27083b)) {
                m22456d = m22456d + "." + m27083b;
            }
            return m22456d;
        }
        return str.substring(lastIndexOf - 18);
    }
}
