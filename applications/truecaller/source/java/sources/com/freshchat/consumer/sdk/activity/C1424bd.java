package com.freshchat.consumer.sdk.activity;

import androidx.appcompat.widget.SearchView;
import com.freshchat.consumer.sdk.p061k.C1761w;
/* renamed from: com.freshchat.consumer.sdk.activity.bd */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/bd.class */
public class C1424bd implements SearchView.AbstractC0071l {

    /* renamed from: qL */
    public final /* synthetic */ FAQSearchActivity f3939qL;

    public C1424bd(FAQSearchActivity fAQSearchActivity) {
        this.f3939qL = fAQSearchActivity;
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextChange(String str) {
        if (this.f3939qL.m41101dH()) {
            this.f3939qL.onUserInteraction();
        }
        ((C1761w) this.f3939qL.f3912pe).m39637bC(str);
        this.f3939qL.m41139bw(str);
        return true;
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextSubmit(String str) {
        return true;
    }
}
