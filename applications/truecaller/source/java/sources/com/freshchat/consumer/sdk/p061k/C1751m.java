package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.p045a.C1337l;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1719n;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.k.m */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/m.class */
public class C1751m extends AbstractC1735a {

    /* renamed from: qk */
    private C1337l.AbstractC1339b f4569qk;

    public C1751m(Context context) {
        super(context);
    }

    /* renamed from: a */
    public void m39712a(C1337l.AbstractC1339b abstractC1339b) {
        this.f4569qk = abstractC1339b;
    }

    /* renamed from: ib */
    public String m39711ib() {
        String str;
        C1337l.AbstractC1339b abstractC1339b = this.f4569qk;
        if (abstractC1339b != null && (abstractC1339b instanceof C1337l.C1338a)) {
            C1337l.C1338a c1338a = (C1337l.C1338a) abstractC1339b;
            if (C1626as.m40233a(c1338a.m41454hw())) {
                str = C1719n.m39885I(getContext(), c1338a.m41454hw());
                return str;
            }
        }
        str = "";
        return str;
    }

    /* renamed from: ic */
    public String m39710ic() {
        CalendarDay.PartOfDay m41451hy;
        C1337l.AbstractC1339b abstractC1339b = this.f4569qk;
        return (abstractC1339b == null || !(abstractC1339b instanceof C1337l.C1340c) || (m41451hy = ((C1337l.C1340c) abstractC1339b).m41451hy()) == null) ? "" : getContext().getString(m41451hy.getStringResId());
    }

    /* renamed from: id */
    public List<CalendarDay.TimeSlot> m39709id() {
        ArrayList arrayList = new ArrayList();
        C1337l.AbstractC1339b abstractC1339b = this.f4569qk;
        if (abstractC1339b != null && (abstractC1339b instanceof C1337l.C1340c)) {
            List<CalendarDay.TimeSlot> m41450hz = ((C1337l.C1340c) abstractC1339b).m41450hz();
            if (C1716k.m39902a(m41450hz)) {
                arrayList.addAll(m41450hz);
            }
        }
        return arrayList;
    }
}
