package com.freshchat.consumer.sdk.beans.reqres;

import com.freshchat.consumer.sdk.beans.ChannelResponseTime;
import e.m.e.d0.b;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse.class */
public class ChannelsResponseTimeResponse {
    private List<ChannelResponseTime> channelResponseTime;
    private List<ChannelResponseTime> channelResponseTimesFor7Days;
    @b("channelCustomResponse")
    private List<ChannelResponseTime> channelsCustomResponseTimeMessage;
    private List<ChannelResponseTime> channelsWithAllMembersAway;

    public List<ChannelResponseTime> getChannelResponseTime() {
        return this.channelResponseTime;
    }

    public List<ChannelResponseTime> getChannelResponseTimesFor7Days() {
        return this.channelResponseTimesFor7Days;
    }

    public List<ChannelResponseTime> getChannelsCustomResponseTimeMessage() {
        return this.channelsCustomResponseTimeMessage;
    }

    public List<ChannelResponseTime> getChannelsWithAllMembersAway() {
        return this.channelsWithAllMembersAway;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ChannelsResponseTimeResponse{channelResponseTime=");
        m8728C.append(this.channelResponseTime);
        m8728C.append(", channelResponseTimesFor7Days=");
        m8728C.append(this.channelResponseTimesFor7Days);
        m8728C.append(", channelsCustomResponseTimeMessage=");
        m8728C.append(this.channelsCustomResponseTimeMessage);
        m8728C.append(", channelsWithAllMembersAway=");
        m8728C.append(this.channelsWithAllMembersAway);
        m8728C.append('}');
        return m8728C.toString();
    }
}
