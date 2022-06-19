package com.freshchat.consumer.sdk.p062l;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1704d;
/* renamed from: com.freshchat.consumer.sdk.l.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/l/j.class */
public class C1775j extends AbstractC1765b {
    /* renamed from: F */
    private void m39600F(Context context, String str) {
        if (C1626as.isEmpty(str)) {
            return;
        }
        User m39971bF = C1704d.m39971bF(context);
        if (C1626as.m40223o(str, m39971bF.getEmail())) {
            return;
        }
        m39971bF.setEmail(str);
        C1704d.m39973b(context, m39971bF);
    }

    /* renamed from: cf */
    private String m39597cf(Context context) {
        return m39596w(context).m40967bi();
    }

    /* renamed from: w */
    private C1466e m39596w(Context context) {
        return C1466e.m40905i(context);
    }

    /* renamed from: C */
    public String m39602C(Context context) {
        return m39596w(context).m40966bj();
    }

    /* renamed from: D */
    public void m39601D(Context context, String str) {
        m39596w(context).m40961bn(str);
        if (C1626as.isEmpty(m39597cf(context))) {
            m39600F(context, str);
        }
    }

    /* renamed from: cd */
    public String m39599cd(Context context) {
        return m39596w(context).m40907hA();
    }

    /* renamed from: ce */
    public String m39598ce(Context context) {
        String m40907hA = m39596w(context).m40907hA();
        return C1626as.m40233a(m40907hA) ? m40907hA : m39597cf(context);
    }
}
