package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelSectionTargeting.class */
public final class ChannelSectionTargeting extends GenericJson {
    @q
    private List<String> countries;
    @q
    private List<String> languages;
    @q
    private List<String> regions;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ChannelSectionTargeting clone() {
        return (ChannelSectionTargeting) super.clone();
    }

    public final List<String> getCountries() {
        return this.countries;
    }

    public final List<String> getLanguages() {
        return this.languages;
    }

    public final List<String> getRegions() {
        return this.regions;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ChannelSectionTargeting set(String str, Object obj) {
        return (ChannelSectionTargeting) super.set(str, obj);
    }

    public final ChannelSectionTargeting setCountries(List<String> list) {
        this.countries = list;
        return this;
    }

    public final ChannelSectionTargeting setLanguages(List<String> list) {
        this.languages = list;
        return this;
    }

    public final ChannelSectionTargeting setRegions(List<String> list) {
        this.regions = list;
        return this;
    }
}
