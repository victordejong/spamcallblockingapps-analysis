package com.freshchat.consumer.sdk.p063m;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p061k.C1748k;
/* renamed from: com.freshchat.consumer.sdk.m.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/j.class */
public class C1787j extends AbstractC1776a {

    /* renamed from: dS */
    private AppCompatEditText f4642dS;

    /* renamed from: dT */
    private AppCompatButton f4643dT;

    /* renamed from: pc */
    private C1748k f4644pc;

    /* renamed from: g */
    private void m39566g(View view) {
        this.f4642dS = (AppCompatEditText) view.findViewById(C1298R.C1300id.freshchat_calendar_email_edittext);
        AppCompatButton appCompatButton = (AppCompatButton) view.findViewById(C1298R.C1300id.freshchat_calendar_next_button);
        this.f4643dT = appCompatButton;
        appCompatButton.setEnabled(false);
        this.f4642dS.addTextChangedListener(new C1789l(this));
        this.f4643dT.setOnClickListener(new View$OnClickListenerC1790m(this));
        String m39718bi = this.f4644pc.m39718bi();
        if (C1626as.m40233a(m39718bi)) {
            this.f4642dS.setText(m39718bi);
        }
    }

    @Override // com.freshchat.consumer.sdk.p063m.AbstractC1776a
    /* renamed from: cc */
    public void mo39555cc(Context context) {
        this.f4644pc = new C1748k(context);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C1298R.layout.freshchat_fragment_calendar_email_entry, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        C1787j.super.onViewCreated(view, bundle);
        m39566g(view);
        view.post(new RunnableC1788k(this, view));
    }
}
