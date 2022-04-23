package com.dropbox.core.util;

import com.dropbox.core.util.b;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/c.class */
public abstract class c {
    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(b bVar);

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        new b.a(sb).a(this);
        return sb.toString();
    }
}
