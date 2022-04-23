package com.callapp.contacts.util;

import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.util.-$;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/_$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD_9o_WoI.class */
public final /* synthetic */ class _$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD_9o_WoI implements Comparator {
    public static final /* synthetic */ -$.Lambda.CallLogUtils._cMpZ9whXzfbzAtLP2tD-9o_WoI INSTANCE = new _$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD_9o_WoI();

    private /* synthetic */ _$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD_9o_WoI() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int a2;
        a2 = CallLogUtils.a((AggregateCallLogData) obj, (AggregateCallLogData) obj2);
        return a2;
    }
}
