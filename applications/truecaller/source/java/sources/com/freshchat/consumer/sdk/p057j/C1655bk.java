package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import java.util.Arrays;
/* renamed from: com.freshchat.consumer.sdk.j.bk */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bk.class */
public final class C1655bk implements C1649bg.AbstractC1651b {

    /* renamed from: iI */
    public final /* synthetic */ Context f4410iI;

    /* renamed from: lM */
    public final /* synthetic */ String f4411lM;

    /* renamed from: lN */
    public final /* synthetic */ String f4412lN;

    /* renamed from: lP */
    public final /* synthetic */ String f4413lP;

    /* renamed from: lQ */
    public final /* synthetic */ String f4414lQ;

    /* renamed from: lS */
    public final /* synthetic */ String[] f4415lS;

    public C1655bk(String str, String str2, Context context, String str3, String str4, String[] strArr) {
        this.f4412lN = str;
        this.f4411lM = str2;
        this.f4410iI = context;
        this.f4413lP = str3;
        this.f4414lQ = str4;
        this.f4415lS = strArr;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        C1649bg.C1650a m40067a2;
        Category m40112A;
        Article m40068z;
        Event m40064gz;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventFAQOpen);
        m40067a = m40090a.m40067a(Event.Property.FCPropertyFAQTitle, this.f4412lN);
        m40067a2 = m40067a.m40067a(Event.Property.FCPropertyFAQCategoryName, this.f4411lM);
        m40112A = C1649bg.m40112A(this.f4410iI, this.f4413lP);
        if (m40112A != null) {
            m40067a2.m40067a(Event.Property.FCPropertyFAQCategoryID, m40112A.getCategoryAlias());
        }
        m40068z = C1649bg.m40068z(this.f4410iI, this.f4414lQ);
        if (m40068z != null) {
            m40067a2.m40067a(Event.Property.FCPropertyFAQID, m40068z.getArticleAlias());
        }
        if (C1626as.m40225f(this.f4415lS)) {
            m40067a2.m40067a(Event.Property.FCPropertyInputTags, Arrays.toString(this.f4415lS));
        }
        m40064gz = m40067a2.m40064gz();
        return m40064gz;
    }
}
