package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.JwtTokenStatus;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1720o;
import com.freshchat.consumer.sdk.p057j.p060c.EnumC1674a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.k.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/b.class */
public class C1736b extends C1744h {

    /* renamed from: lt */
    private JwtTokenStatus f4537lt;

    /* renamed from: lu */
    private EnumC1674a f4538lu;

    public C1736b(Context context) {
        super(context);
    }

    /* renamed from: gq */
    public EnumC1674a m39774gq() {
        EnumC1674a enumC1674a;
        if (!C1622ap.m40246aZ(getContext())) {
            if (C1618al.m40261aS(getContext())) {
                C1638b.m40170L(getContext());
                enumC1674a = EnumC1674a.SHOW_PROGRESS;
            } else {
                enumC1674a = EnumC1674a.EXIT_WITH_MESSAGE;
            }
            this.f4538lu = enumC1674a;
            return this.f4538lu;
        } else if (!C1720o.m39853bB(getContext())) {
            EnumC1674a enumC1674a2 = EnumC1674a.SHOW_CONTENT;
            this.f4538lu = enumC1674a2;
            return enumC1674a2;
        } else {
            JwtTokenStatus m39843bz = C1720o.m39843bz(getContext());
            C1720o.m39856b(getContext(), m39843bz);
            C1720o.m39844by(getContext());
            JwtTokenStatus jwtTokenStatus = this.f4537lt;
            EnumC1674a m39855b = jwtTokenStatus == null ? C1720o.m39855b(m39843bz) : (jwtTokenStatus == m39843bz || m39843bz == JwtTokenStatus.TOKEN_EXPIRED || m39843bz == JwtTokenStatus.TOKEN_NOT_PROCESSED) ? this.f4538lu : C1720o.m39857a(jwtTokenStatus, m39843bz);
            this.f4537lt = m39843bz;
            StringBuilder m8728C = C22128a.m8728C("Token state - ");
            m8728C.append(m39843bz.name());
            C1613ai.m40284d("FRESHCHAT_JWT", m8728C.toString());
            C1613ai.m40284d("FRESHCHAT_JWT", "Updated action - " + m39855b.name());
            this.f4538lu = m39855b;
            return m39855b;
        }
    }

    /* renamed from: ha */
    public boolean m39773ha() {
        return this.f4538lu == EnumC1674a.SHOW_CONTENT;
    }
}
