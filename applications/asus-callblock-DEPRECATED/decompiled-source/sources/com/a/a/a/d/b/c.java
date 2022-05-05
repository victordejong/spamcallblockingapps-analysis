package com.a.a.a.d.b;

import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.r;
import com.google.gson.t;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/b/c.class */
public final class c implements t<Long> {
    @Override // com.google.gson.t
    public final /* synthetic */ l a(Long l) {
        l lVar;
        Long l2 = l;
        Long l3 = 9007199254740992L;
        Long l4 = -9007199254740992L;
        if (l2 == null) {
            lVar = n.f4553a;
        } else if (l2.longValue() > l3.longValue() || l2.longValue() < l4.longValue()) {
            throw new IllegalArgumentException("Long value must be between " + l4 + " and " + l3);
        } else {
            lVar = new r((Number) l2);
        }
        return lVar;
    }
}
