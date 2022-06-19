package com.freshchat.consumer.sdk.beans;

import e.m.d.y.n;
import e.m.e.k;
import e.m.e.z;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/FCLocale.class */
public class FCLocale {
    private String country;
    private String direction;
    private String displayCode;
    private String displayName;
    private String extension;
    private String language;
    private long localeId;
    private String region;
    private String script;
    private String variant;

    public static FCLocale fromString(String str) {
        try {
            return (FCLocale) n.B1(FCLocale.class).cast(new k().g(str, FCLocale.class));
        } catch (z e) {
            return null;
        }
    }

    public String getCountry() {
        return this.country;
    }

    public String getDirection() {
        return this.direction;
    }

    public String getDisplayCode() {
        return this.displayCode;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getExtension() {
        return this.extension;
    }

    public String getLanguage() {
        return this.language;
    }

    public long getLocaleId() {
        return this.localeId;
    }

    public String getRegion() {
        return this.region;
    }

    public String getScript() {
        return this.script;
    }

    public String getVariant() {
        return this.variant;
    }

    public FCLocale setCountry(String str) {
        this.country = str;
        return this;
    }

    public FCLocale setDirection(String str) {
        this.direction = str;
        return this;
    }

    public FCLocale setDisplayCode(String str) {
        this.displayCode = str;
        return this;
    }

    public FCLocale setDisplayName(String str) {
        this.displayName = str;
        return this;
    }

    public FCLocale setExtension(String str) {
        this.extension = str;
        return this;
    }

    public FCLocale setLanguage(String str) {
        this.language = str;
        return this;
    }

    public FCLocale setLocaleId(long j) {
        this.localeId = j;
        return this;
    }

    public FCLocale setRegion(String str) {
        this.region = str;
        return this;
    }

    public FCLocale setScript(String str) {
        this.script = str;
        return this;
    }

    public FCLocale setVariant(String str) {
        this.variant = str;
        return this;
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("FCLocale{", "localeId='");
        m8704I.append(this.localeId);
        m8704I.append('\'');
        m8704I.append(", language='");
        C22128a.m8678P0(m8704I, this.language, '\'', ", script='");
        C22128a.m8678P0(m8704I, this.script, '\'', ", region='");
        C22128a.m8678P0(m8704I, this.region, '\'', ", country='");
        C22128a.m8678P0(m8704I, this.country, '\'', ", variant='");
        C22128a.m8678P0(m8704I, this.variant, '\'', ", extension='");
        C22128a.m8678P0(m8704I, this.extension, '\'', ", displayCode='");
        C22128a.m8678P0(m8704I, this.displayCode, '\'', ", displayName='");
        C22128a.m8678P0(m8704I, this.displayName, '\'', ", direction='");
        return C22128a.m8626f(m8704I, this.direction, '\'', '}');
    }
}
