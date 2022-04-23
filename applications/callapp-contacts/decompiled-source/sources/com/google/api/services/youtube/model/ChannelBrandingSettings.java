package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelBrandingSettings.class */
public final class ChannelBrandingSettings extends GenericJson {
    @q
    private ChannelSettings channel;
    @q
    private List<PropertyValue> hints;
    @q
    private ImageSettings image;
    @q
    private WatchSettings watch;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ChannelBrandingSettings clone() {
        return (ChannelBrandingSettings) super.clone();
    }

    public final ChannelSettings getChannel() {
        return this.channel;
    }

    public final List<PropertyValue> getHints() {
        return this.hints;
    }

    public final ImageSettings getImage() {
        return this.image;
    }

    public final WatchSettings getWatch() {
        return this.watch;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ChannelBrandingSettings set(String str, Object obj) {
        return (ChannelBrandingSettings) super.set(str, obj);
    }

    public final ChannelBrandingSettings setChannel(ChannelSettings channelSettings) {
        this.channel = channelSettings;
        return this;
    }

    public final ChannelBrandingSettings setHints(List<PropertyValue> list) {
        this.hints = list;
        return this;
    }

    public final ChannelBrandingSettings setImage(ImageSettings imageSettings) {
        this.image = imageSettings;
        return this;
    }

    public final ChannelBrandingSettings setWatch(WatchSettings watchSettings) {
        this.watch = watchSettings;
        return this;
    }
}
