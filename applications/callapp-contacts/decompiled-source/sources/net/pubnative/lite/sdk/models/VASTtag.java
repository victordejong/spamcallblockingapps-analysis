package net.pubnative.lite.sdk.models;

import android.text.TextUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/VASTtag.class */
public class VASTtag {
    String ad_id;
    String bundle;
    String connection;
    String dnt;
    private String formatted_url;
    String gdpr;
    String gdpr_consent;
    String height;
    String lat;
    String lon;
    String us_privacy;
    String user_agent;
    private final String vastTagURL;
    String width;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder.class */
    public static class VASTtagBuilder {
        String ad_id;
        String bundle;
        String connection;
        String dnt;
        String gdpr;
        String gdpr_consent;
        String height;
        String lat;
        String lon;
        String us_privacy;
        String user_agent;
        private final String vastTagURL;
        String width;

        public VASTtagBuilder(String str) {
            this.vastTagURL = str;
        }

        public VASTtagBuilder adId(String str) {
            this.ad_id = str;
            return this;
        }

        public VASTtag build() {
            VASTtag vASTtag = new VASTtag(this);
            vASTtag.format();
            return vASTtag;
        }

        public VASTtagBuilder bundle(String str) {
            this.bundle = str;
            return this;
        }

        public VASTtagBuilder connection(String str) {
            this.connection = str;
            return this;
        }

        public VASTtagBuilder dnt(String str) {
            this.dnt = str;
            return this;
        }

        public VASTtagBuilder gdpr(String str) {
            this.gdpr = str;
            return this;
        }

        public VASTtagBuilder gdprConsent(String str) {
            this.gdpr_consent = str;
            return this;
        }

        public VASTtagBuilder height(String str) {
            this.height = str;
            return this;
        }

        public VASTtagBuilder lat(String str) {
            this.lat = str;
            return this;
        }

        public VASTtagBuilder lon(String str) {
            this.lon = str;
            return this;
        }

        public VASTtagBuilder usPrivacy(String str) {
            this.us_privacy = str;
            return this;
        }

        public VASTtagBuilder userAgent(String str) {
            this.user_agent = str;
            return this;
        }

        public VASTtagBuilder width(String str) {
            this.width = str;
            return this;
        }
    }

    private VASTtag(VASTtagBuilder vASTtagBuilder) {
        this.vastTagURL = vASTtagBuilder.vastTagURL;
        this.ad_id = vASTtagBuilder.ad_id;
        this.bundle = vASTtagBuilder.bundle;
        this.connection = vASTtagBuilder.connection;
        this.dnt = vASTtagBuilder.dnt;
        this.lat = vASTtagBuilder.lat;
        this.lon = vASTtagBuilder.lon;
        this.user_agent = vASTtagBuilder.user_agent;
        this.width = vASTtagBuilder.width;
        this.height = vASTtagBuilder.height;
        this.gdpr = vASTtagBuilder.gdpr;
        this.gdpr_consent = vASTtagBuilder.gdpr_consent;
        this.us_privacy = vASTtagBuilder.us_privacy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void format() {
        this.formatted_url = this.vastTagURL;
        if (!TextUtils.isEmpty(this.ad_id)) {
            this.formatted_url = this.formatted_url.replace("{{adid}}", this.ad_id);
        }
        if (!TextUtils.isEmpty(this.bundle)) {
            this.formatted_url = this.formatted_url.replace("{{bundle}}", this.bundle);
        }
        if (!TextUtils.isEmpty(this.connection)) {
            this.formatted_url = this.formatted_url.replace("{{connection}}", this.connection);
        }
        if (!TextUtils.isEmpty(this.dnt)) {
            this.formatted_url = this.formatted_url.replace("{{dnt}}", this.dnt);
        }
        if (!TextUtils.isEmpty(this.user_agent)) {
            this.formatted_url = this.formatted_url.replace("{{user_agent}}", this.user_agent);
        }
        if (!TextUtils.isEmpty(this.width)) {
            this.formatted_url = this.formatted_url.replace("{{width}}", this.width);
        }
        if (!TextUtils.isEmpty(this.height)) {
            this.formatted_url = this.formatted_url.replace("{{height}}", this.height);
        }
        if (!TextUtils.isEmpty(this.gdpr)) {
            this.formatted_url = this.formatted_url.replace("{{gdpr}}", this.gdpr);
        }
        if (!TextUtils.isEmpty(this.gdpr_consent)) {
            this.formatted_url = this.formatted_url.replace("{{gdpr_consent}}", this.gdpr_consent);
        }
        if (!TextUtils.isEmpty(this.us_privacy)) {
            this.formatted_url = this.formatted_url.replace("{{us_privacy}}", this.us_privacy);
        }
        if (!TextUtils.isEmpty(this.lat)) {
            this.formatted_url = this.formatted_url.replace("{{lat}}", this.lat);
        }
        if (!TextUtils.isEmpty(this.lon)) {
            this.formatted_url = this.formatted_url.replace("{{lon}}", this.lon);
        }
    }

    public String getFormattedURL() {
        return this.formatted_url;
    }
}
