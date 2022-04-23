package com.callapp.contacts.manager;

import com.callapp.contacts.manager.-$;
import com.callapp.contacts.util.CallLogEntry;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/_$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV_2781jDqaAg.class */
public final /* synthetic */ class _$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV_2781jDqaAg implements Comparator {
    public static final /* synthetic */ -$.Lambda.IncognitoCallManager.ITq5FEEOkhYCPzHV-2781jDqaAg INSTANCE = new _$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV_2781jDqaAg();

    private /* synthetic */ _$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV_2781jDqaAg() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compare;
        compare = Long.compare(((CallLogEntry) obj).getTime().getTime(), ((CallLogEntry) obj2).getTime().getTime());
        return compare;
    }
}
