package com.freshchat.consumer.sdk.p063m;

import androidx.appcompat.widget.AppCompatButton;
import com.freshchat.consumer.sdk.p057j.AbstractC1692cp;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p061k.C1748k;
/* renamed from: com.freshchat.consumer.sdk.m.l */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/l.class */
public class C1789l extends AbstractC1692cp {

    /* renamed from: pf */
    public final /* synthetic */ C1787j f4647pf;

    public C1789l(C1787j c1787j) {
        this.f4647pf = c1787j;
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1692cp, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        boolean z;
        AppCompatButton appCompatButton;
        C1748k c1748k;
        if (C1626as.m40233a(charSequence)) {
            c1748k = this.f4647pf.f4644pc;
            z = c1748k.m39719aK(charSequence.toString());
        } else {
            z = false;
        }
        appCompatButton = this.f4647pf.f4643dT;
        appCompatButton.setEnabled(z);
    }
}
