package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Conversation;
import com.freshchat.consumer.sdk.p049c.C1506c;
import com.freshchat.consumer.sdk.p049c.C1508e;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.g.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/g.class */
public class C1547g extends AbstractC1544d<Channel> {

    /* renamed from: aL */
    private Conversation f4178aL;
    private long channelId;

    /* renamed from: eT */
    private final C1508e f4179eT;

    /* renamed from: eU */
    private final C1506c f4180eU;

    /* renamed from: kQ */
    private final boolean f4181kQ;

    public C1547g(Context context, boolean z) {
        super(context);
        this.f4180eU = new C1506c(context);
        this.f4179eT = new C1508e(context);
        this.f4181kQ = z;
    }

    public C1547g(Context context, boolean z, long j) {
        this(context, z);
        this.channelId = j;
    }

    /* renamed from: df */
    public Channel getData() {
        Channel channel;
        if (this.f4181kQ) {
            this.f4179eT.m40757fR();
        }
        long j = this.channelId;
        if (j <= 0) {
            List<Channel> m40774cv = this.f4180eU.m40774cv();
            if (m40774cv.isEmpty()) {
                return null;
            }
            channel = m40774cv.get(0);
        } else {
            channel = this.f4180eU.m40771e(j);
        }
        if (channel != null) {
            this.f4178aL = this.f4179eT.m40760f(channel.getId());
        }
        return channel;
    }

    /* renamed from: dg */
    public Conversation m40569dg() {
        return this.f4178aL;
    }
}
