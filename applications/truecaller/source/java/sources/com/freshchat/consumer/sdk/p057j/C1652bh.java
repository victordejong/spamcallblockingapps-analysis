package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bh */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bh.class */
public final class C1652bh implements C1649bg.AbstractC1651b {

    /* renamed from: iI */
    public final /* synthetic */ Context f4400iI;

    /* renamed from: lM */
    public final /* synthetic */ String f4401lM;

    /* renamed from: lN */
    public final /* synthetic */ String f4402lN;

    /* renamed from: lP */
    public final /* synthetic */ String f4403lP;

    /* renamed from: lQ */
    public final /* synthetic */ String f4404lQ;

    /* renamed from: ro */
    public final /* synthetic */ boolean f4405ro;

    public C1652bh(String str, String str2, boolean z, Context context, String str3, String str4) {
        this.f4401lM = str;
        this.f4402lN = str2;
        this.f4405ro = z;
        this.f4400iI = context;
        this.f4403lP = str3;
        this.f4404lQ = str4;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        C1649bg.C1650a m40067a2;
        C1649bg.C1650a m40067a3;
        Category m40112A;
        Article m40068z;
        Event m40064gz;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventFAQVote);
        m40067a = m40090a.m40067a(Event.Property.FCPropertyFAQCategoryName, this.f4401lM);
        m40067a2 = m40067a.m40067a(Event.Property.FCPropertyFAQTitle, this.f4402lN);
        m40067a3 = m40067a2.m40067a(Event.Property.FCPropertyIsHelpful, Boolean.valueOf(this.f4405ro));
        m40112A = C1649bg.m40112A(this.f4400iI, this.f4403lP);
        if (m40112A != null) {
            m40067a3.m40067a(Event.Property.FCPropertyFAQCategoryID, m40112A.getCategoryAlias());
        }
        m40068z = C1649bg.m40068z(this.f4400iI, this.f4404lQ);
        if (m40068z != null) {
            m40067a3.m40067a(Event.Property.FCPropertyFAQID, m40068z.getArticleAlias());
        }
        m40064gz = m40067a3.m40064gz();
        return m40064gz;
    }
}
