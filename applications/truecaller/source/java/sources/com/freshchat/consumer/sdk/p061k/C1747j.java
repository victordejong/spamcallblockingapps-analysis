package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.p045a.C1337l;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.k.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/j.class */
public class C1747j extends AbstractC1735a {
    private int calendarType;

    /* renamed from: qa */
    private List<C1337l.AbstractC1339b> f4559qa;

    public C1747j(Context context) {
        super(context);
    }

    /* renamed from: H */
    public void m39721H(List<C1337l.AbstractC1339b> list) {
        this.f4559qa = list;
    }

    public int getCalendarType() {
        return this.calendarType;
    }

    /* renamed from: hY */
    public List<C1337l.AbstractC1339b> m39720hY() {
        List<C1337l.AbstractC1339b> list = this.f4559qa;
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    public void setCalendarType(int i) {
        this.calendarType = i;
    }
}
