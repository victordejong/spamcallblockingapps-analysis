package com.freshchat.consumer.sdk.service.p067d;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Conversation;
import com.freshchat.consumer.sdk.beans.FlowBusinessHourType;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
import com.freshchat.consumer.sdk.p049c.C1508e;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1628au;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.service.d.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/d/g.class */
public class C1874g {

    /* renamed from: av */
    private final C1511g f4718av;

    /* renamed from: eT */
    private final C1508e f4719eT;

    public C1874g(C1508e c1508e, C1511g c1511g) {
        this.f4719eT = c1508e;
        this.f4718av = c1511g;
    }

    /* renamed from: f */
    private boolean m39373f(Channel channel) {
        boolean z = false;
        if (channel == null) {
            return false;
        }
        try {
            if (C1716k.m39900b((ArrayList) C1597ab.m40337in().fromJson(channel.getFlowMessagesJson(), new C1875h(this).getType())) > 0) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }

    /* renamed from: a */
    public boolean m39374a(Context context, Channel channel) {
        String str;
        boolean z = false;
        if (channel == null) {
            return false;
        }
        Conversation m40760f = this.f4719eT.m40760f(channel.getId());
        if (m40760f != null) {
            boolean z2 = m40760f.getStatus() == 2;
            boolean hasPendingCsat = m40760f.hasPendingCsat();
            if (!z2) {
                str = "Bot: Conversation Not resolved. shouldDisplayFlowMessages false";
                C1613ai.m40281i("FRESHCHAT", str);
                return false;
            } else if (hasPendingCsat) {
                RemoteConfig m40245bD = C1622ap.m40245bD(context);
                if (!C1628au.m40219a(m40245bD)) {
                    C1613ai.m40281i("FRESHCHAT", "Bot: Conversation Has pending CSAT. shouldDisplayFlowMessages false");
                    return false;
                } else if (!C1628au.m40217a(m40245bD, m40760f.getCsat())) {
                    C1613ai.m40281i("FRESHCHAT", "Bot: Conversation Has pending CSAT. shouldDisplayFlowMessages false");
                    return false;
                }
            }
        }
        if (this.f4718av.m40740E(channel.getId())) {
            str = "Bot: Has messages to upload. shouldDisplayFlowMessages false";
            C1613ai.m40281i("FRESHCHAT", str);
            return false;
        } else if (!m39373f(channel)) {
            return false;
        } else {
            FlowBusinessHourType flowBusinessHourType = channel.getFlowBusinessHourType();
            if (flowBusinessHourType == FlowBusinessHourType.BUSINESS_HOUR_ALWAYS) {
                return true;
            }
            if (C1876i.m39368r(context, channel.getOperatingHoursId())) {
                if (flowBusinessHourType == FlowBusinessHourType.BUSINESS_HOUR_OUTSIDE) {
                    z = true;
                }
                return z;
            }
            boolean z3 = false;
            if (flowBusinessHourType == FlowBusinessHourType.BUSINESS_HOUR_INSIDE) {
                z3 = true;
            }
            return z3;
        }
    }
}
