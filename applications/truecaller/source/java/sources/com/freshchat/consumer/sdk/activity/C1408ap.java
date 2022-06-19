package com.freshchat.consumer.sdk.activity;

import androidx.recyclerview.widget.GridLayoutManager$c;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p061k.C1758t;
/* renamed from: com.freshchat.consumer.sdk.activity.ap */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ap.class */
public class C1408ap extends GridLayoutManager$c {

    /* renamed from: pG */
    public final /* synthetic */ int f3921pG;

    /* renamed from: pv */
    public final /* synthetic */ FAQCategoriesActivity f3922pv;

    public C1408ap(FAQCategoriesActivity fAQCategoriesActivity, int i) {
        this.f3922pv = fAQCategoriesActivity;
        this.f3921pG = i;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager$c
    public int getSpanSize(int i) {
        if (i < C1716k.m39900b(((C1758t) this.f3922pv.f3912pe).m39668jt())) {
            return 1;
        }
        return this.f3921pG;
    }
}
