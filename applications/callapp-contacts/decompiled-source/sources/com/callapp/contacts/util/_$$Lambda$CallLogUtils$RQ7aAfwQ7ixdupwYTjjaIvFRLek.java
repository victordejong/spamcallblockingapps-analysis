package com.callapp.contacts.util;

import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.util.-$;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/_$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek.class */
public final /* synthetic */ class _$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek implements RowCallback {
    public static final /* synthetic */ -$.Lambda.CallLogUtils.RQ7aAfwQ7ixdupwYTjjaIvFRLek INSTANCE = new _$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek();

    private /* synthetic */ _$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek() {
    }

    @Override // com.callapp.contacts.framework.dao.RowCallback
    public final Object onRow(RowContext rowContext) {
        CallLogEntry b2;
        b2 = CallLogUtils.b(rowContext);
        return b2;
    }
}
