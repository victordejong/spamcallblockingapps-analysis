package com.truecaller.messaging.conversation.search;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u001d\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/messaging/conversation/search/SearchFilter;", "", "", RemoteMessageConst.Notification.ICON, "I", "getIcon", "()I", "text", "getText", "<init>", "(Ljava/lang/String;III)V", "DATE", "STARRED", "MEMBER", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/search/SearchFilter.class */
public enum SearchFilter {
    DATE(2131231838, C2752R.string.search_conversation_filter_date),
    STARRED(2131232367, C2752R.string.search_conversation_filter_starred),
    MEMBER(2131232171, C2752R.string.search_conversation_filter_member);
    
    private final int icon;
    private final int text;

    SearchFilter(int i, int i2) {
        this.icon = i;
        this.text = i2;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getText() {
        return this.text;
    }
}
