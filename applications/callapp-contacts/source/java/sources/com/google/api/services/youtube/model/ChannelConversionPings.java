package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelConversionPings.class */
public final class ChannelConversionPings extends GenericJson {
    @AbstractC15247q
    private List<ChannelConversionPing> pings;

    static {
        C15232j.m9242a(ChannelConversionPing.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelConversionPings clone() {
        return (ChannelConversionPings) super.clone();
    }

    public final List<ChannelConversionPing> getPings() {
        return this.pings;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelConversionPings set(String str, Object obj) {
        return (ChannelConversionPings) super.set(str, obj);
    }

    public final ChannelConversionPings setPings(List<ChannelConversionPing> list) {
        this.pings = list;
        return this;
    }
}
