package androidx.webkit;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/webkit/ProxyConfig.class */
public final class ProxyConfig {
    private static final String BYPASS_RULE_REMOVE_IMPLICIT = "<-loopback>";
    private static final String BYPASS_RULE_SIMPLE_NAMES = "<local>";
    private static final String DIRECT = "direct://";
    public static final String MATCH_ALL_SCHEMES = "*";
    public static final String MATCH_HTTP = "http";
    public static final String MATCH_HTTPS = "https";
    private List<String> mBypassRules;
    private List<ProxyRule> mProxyRules;

    /* loaded from: classes-dex2jar.jar:androidx/webkit/ProxyConfig$Builder.class */
    public static final class Builder {
        private List<String> mBypassRules;
        private List<ProxyRule> mProxyRules;

        public Builder() {
            this.mProxyRules = new ArrayList();
            this.mBypassRules = new ArrayList();
        }

        public Builder(ProxyConfig proxyConfig) {
            this.mProxyRules = proxyConfig.getProxyRules();
            this.mBypassRules = proxyConfig.getBypassRules();
        }

        private List<String> bypassRules() {
            return this.mBypassRules;
        }

        private List<ProxyRule> proxyRules() {
            return this.mProxyRules;
        }

        public Builder addBypassRule(String str) {
            this.mBypassRules.add(str);
            return this;
        }

        public Builder addDirect() {
            return addDirect("*");
        }

        public Builder addDirect(String str) {
            this.mProxyRules.add(new ProxyRule(str, ProxyConfig.DIRECT));
            return this;
        }

        public Builder addProxyRule(String str) {
            this.mProxyRules.add(new ProxyRule(str));
            return this;
        }

        public Builder addProxyRule(String str, String str2) {
            this.mProxyRules.add(new ProxyRule(str2, str));
            return this;
        }

        public ProxyConfig build() {
            return new ProxyConfig(proxyRules(), bypassRules());
        }

        public Builder bypassSimpleHostnames() {
            return addBypassRule(ProxyConfig.BYPASS_RULE_SIMPLE_NAMES);
        }

        public Builder removeImplicitRules() {
            return addBypassRule(ProxyConfig.BYPASS_RULE_REMOVE_IMPLICIT);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/webkit/ProxyConfig$ProxyRule.class */
    public static final class ProxyRule {
        private String mSchemeFilter;
        private String mUrl;

        public ProxyRule(String str) {
            this("*", str);
        }

        public ProxyRule(String str, String str2) {
            this.mSchemeFilter = str;
            this.mUrl = str2;
        }

        public String getSchemeFilter() {
            return this.mSchemeFilter;
        }

        public String getUrl() {
            return this.mUrl;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/webkit/ProxyConfig$ProxyScheme.class */
    public @interface ProxyScheme {
    }

    public ProxyConfig(List<ProxyRule> list, List<String> list2) {
        this.mProxyRules = list;
        this.mBypassRules = list2;
    }

    public List<String> getBypassRules() {
        return Collections.unmodifiableList(this.mBypassRules);
    }

    public List<ProxyRule> getProxyRules() {
        return Collections.unmodifiableList(this.mProxyRules);
    }
}
