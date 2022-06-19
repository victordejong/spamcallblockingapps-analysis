package com.danikula.videocache.p227q;

import android.text.TextUtils;
import com.danikula.videocache.C4441m;
/* renamed from: com.danikula.videocache.q.f */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/q/f.class */
public class C4453f implements AbstractC4447c {
    /* renamed from: b */
    private String m22428b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return (lastIndexOf == -1 || lastIndexOf <= str.lastIndexOf(47) || (lastIndexOf + 2) + 4 <= str.length()) ? "" : str.substring(lastIndexOf + 1, str.length());
    }

    @Override // com.danikula.videocache.p227q.AbstractC4447c
    /* renamed from: a */
    public String mo22429a(String str) {
        String m22428b = m22428b(str);
        String m22456d = C4441m.m22456d(str);
        if (!TextUtils.isEmpty(m22428b)) {
            m22456d = m22456d + "." + m22428b;
        }
        return m22456d;
    }
}
