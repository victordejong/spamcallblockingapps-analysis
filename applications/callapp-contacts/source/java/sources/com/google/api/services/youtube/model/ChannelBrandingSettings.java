package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelBrandingSettings.class */
public final class ChannelBrandingSettings extends GenericJson {
    @AbstractC15247q
    private ChannelSettings channel;
    @AbstractC15247q
    private List<PropertyValue> hints;
    @AbstractC15247q
    private ImageSettings image;
    @AbstractC15247q
    private WatchSettings watch;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
