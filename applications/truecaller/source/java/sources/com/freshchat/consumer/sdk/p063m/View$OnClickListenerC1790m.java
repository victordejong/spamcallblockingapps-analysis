package com.freshchat.consumer.sdk.p063m;

import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p061k.C1748k;
import com.freshchat.consumer.sdk.p063m.AbstractC1776a;
/* renamed from: com.freshchat.consumer.sdk.m.m */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/m.class */
public class View$OnClickListenerC1790m implements View.OnClickListener {

    /* renamed from: pf */
    public final /* synthetic */ C1787j f4648pf;

    public View$OnClickListenerC1790m(C1787j c1787j) {
        this.f4648pf = c1787j;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AppCompatEditText appCompatEditText;
        AppCompatEditText appCompatEditText2;
        C1748k c1748k;
        appCompatEditText = this.f4648pf.f4642dS;
        if (C1626as.m40233a(appCompatEditText.getText())) {
            appCompatEditText2 = this.f4648pf.f4642dS;
            String obj = appCompatEditText2.getText().toString();
            c1748k = this.f4648pf.f4644pc;
            c1748k.m39717bq(obj);
            this.f4648pf.m39595a(AbstractC1776a.EnumC1777a.CALENDAR_LIMITED_TIMESLOTS_VIEW_FRAGMENT);
        }
    }
}
