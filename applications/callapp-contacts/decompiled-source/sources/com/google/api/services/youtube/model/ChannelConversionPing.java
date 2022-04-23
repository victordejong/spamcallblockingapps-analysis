package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelConversionPing.class */
public final class ChannelConversionPing extends GenericJson {
    @q
    private String context;
    @q
    private String conversionUrl;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ChannelConversionPing clone() {
        return (ChannelConversionPing) super.clone();
    }

    public final String getContext() {
        return this.context;
    }

    public final String getConversionUrl() {
        return this.conversionUrl;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ChannelConversionPing set(String str, Object obj) {
        return (ChannelConversionPing) super.set(str, obj);
    }

    public final ChannelConversionPing setContext(String str) {
        this.context = str;
        return this;
    }

    public final ChannelConversionPing setConversionUrl(String str) {
        this.conversionUrl = str;
        return this;
    }
}
