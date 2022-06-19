package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import java.util.Arrays;
/* renamed from: com.freshchat.consumer.sdk.j.bq */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bq.class */
public final class C1661bq implements C1649bg.AbstractC1651b {

    /* renamed from: iI */
    public final /* synthetic */ Context f4424iI;

    /* renamed from: lM */
    public final /* synthetic */ String f4425lM;

    /* renamed from: lP */
    public final /* synthetic */ String f4426lP;

    /* renamed from: lS */
    public final /* synthetic */ String[] f4427lS;

    public C1661bq(String str, Context context, String str2, String[] strArr) {
        this.f4425lM = str;
        this.f4424iI = context;
        this.f4426lP = str2;
        this.f4427lS = strArr;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        Category m40112A;
        Event m40064gz;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventFAQListOpen);
        m40067a = m40090a.m40067a(Event.Property.FCPropertyFAQCategoryName, this.f4425lM);
        m40112A = C1649bg.m40112A(this.f4424iI, this.f4426lP);
        if (m40112A != null) {
            m40067a.m40067a(Event.Property.FCPropertyFAQCategoryID, m40112A.getCategoryAlias());
        }
        if (C1626as.m40225f(this.f4427lS)) {
            m40067a.m40067a(Event.Property.FCPropertyInputTags, Arrays.toString(this.f4427lS));
        }
        m40064gz = m40067a.m40064gz();
        return m40064gz;
    }
}
