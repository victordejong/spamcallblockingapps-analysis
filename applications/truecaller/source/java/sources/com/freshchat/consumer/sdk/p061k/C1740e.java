package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
/* renamed from: com.freshchat.consumer.sdk.k.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/e.class */
public class C1740e extends AbstractC1735a {

    /* renamed from: ns */
    private QuickReplyButtonFragment f4547ns;

    /* renamed from: com.freshchat.consumer.sdk.k.e$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/e$a.class */
    public enum EnumC1741a {
        OPTION,
        MESSAGE
    }

    public C1740e(Context context) {
        super(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
        if (com.freshchat.consumer.sdk.p057j.C1626as.m40233a(r0) != false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m39752a(com.freshchat.consumer.sdk.p061k.C1740e.EnumC1741a r4) {
        /*
            r3 = this;
            r0 = r3
            com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment r0 = r0.f4547ns
            r5 = r0
            java.lang.String r0 = ""
            r6 = r0
            r0 = r5
            if (r0 != 0) goto Lf
            java.lang.String r0 = ""
            return r0
        Lf:
            r0 = r5
            java.lang.String r0 = r0.getCustomReplyText()
            r7 = r0
            r0 = r3
            com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment r0 = r0.f4547ns
            java.lang.String r0 = r0.getLabel()
            r5 = r0
            int[] r0 = com.freshchat.consumer.sdk.p061k.C1742f.f4551nt
            r1 = r4
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L48
            r0 = r8
            r1 = 2
            if (r0 == r1) goto L39
            java.lang.String r0 = ""
            r4 = r0
            goto L53
        L39:
            r0 = r7
            r4 = r0
            r0 = r5
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.m40233a(r0)
            if (r0 == 0) goto L53
        L43:
            r0 = r5
            r4 = r0
            goto L53
        L48:
            r0 = r7
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.m40233a(r0)
            if (r0 == 0) goto L43
            r0 = r7
            r4 = r0
        L53:
            r0 = r4
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)
            if (r0 == 0) goto L5f
            r0 = r6
            r4 = r0
            goto L5f
        L5f:
            r0 = r4
            java.lang.String r0 = r0.trim()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p061k.C1740e.m39752a(com.freshchat.consumer.sdk.k.e$a):java.lang.String");
    }

    /* renamed from: b */
    public void m39751b(QuickReplyButtonFragment quickReplyButtonFragment) {
        this.f4547ns = quickReplyButtonFragment;
    }

    /* renamed from: hb */
    public String m39750hb() {
        return m39752a(EnumC1741a.MESSAGE);
    }

    /* renamed from: jL */
    public String m39749jL() {
        return m39752a(EnumC1741a.OPTION);
    }
}
