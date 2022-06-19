package com.amazonaws.auth.policy;

import com.sinch.verification.core.verification.VerificationLanguage;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Principal.class */
public class Principal {

    /* renamed from: a */
    public static final Principal f12027a = new Principal("AWS", "*");

    /* renamed from: b */
    public static final Principal f12028b = new Principal("Service", "*");

    /* renamed from: c */
    public static final Principal f12029c = new Principal("Federated", "*");

    /* renamed from: d */
    public static final Principal f12030d = new Principal("*", "*");

    /* renamed from: e */
    public final String f12031e;

    /* renamed from: f */
    public final String f12032f;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Principal$Services.class */
    public enum Services {
        AWSDataPipeline("datapipeline.amazonaws.com"),
        AmazonElasticTranscoder("elastictranscoder.amazonaws.com"),
        AmazonEC2("ec2.amazonaws.com"),
        AWSOpsWorks("opsworks.amazonaws.com"),
        AWSCloudHSM("cloudhsm.amazonaws.com"),
        AllServices("*");
        
        private String serviceId;

        Services(String str) {
            this.serviceId = str;
        }

        public static Services fromString(String str) {
            Services[] values;
            if (str != null) {
                for (Services services : values()) {
                    if (services.getServiceId().equalsIgnoreCase(str)) {
                        return services;
                    }
                }
                return null;
            }
            return null;
        }

        public final String getServiceId() {
            return this.serviceId;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Principal$WebIdentityProviders.class */
    public enum WebIdentityProviders {
        Facebook("graph.facebook.com"),
        Google("accounts.google.com"),
        Amazon("www.amazon.com"),
        AllProviders("*");
        
        private String webIdentityProvider;

        WebIdentityProviders(String str) {
            this.webIdentityProvider = str;
        }

        public static WebIdentityProviders fromString(String str) {
            WebIdentityProviders[] values;
            if (str != null) {
                for (WebIdentityProviders webIdentityProviders : values()) {
                    if (webIdentityProviders.getWebIdentityProvider().equalsIgnoreCase(str)) {
                        return webIdentityProviders;
                    }
                }
                return null;
            }
            return null;
        }

        public final String getWebIdentityProvider() {
            return this.webIdentityProvider;
        }
    }

    public Principal(Services services) {
        if (services != null) {
            this.f12031e = services.getServiceId();
            this.f12032f = "Service";
            return;
        }
        throw new IllegalArgumentException("Null AWS service name specified");
    }

    public Principal(WebIdentityProviders webIdentityProviders) {
        if (webIdentityProviders != null) {
            this.f12031e = webIdentityProviders.getWebIdentityProvider();
            this.f12032f = "Federated";
            return;
        }
        throw new IllegalArgumentException("Null web identity provider specified");
    }

    public Principal(String str) {
        if (str != null) {
            this.f12031e = str.replaceAll(VerificationLanguage.REGION_PREFIX, "");
            this.f12032f = "AWS";
            return;
        }
        throw new IllegalArgumentException("Null AWS account ID specified");
    }

    public Principal(String str, String str2) {
        this.f12032f = str;
        this.f12031e = "AWS".equals(str) ? str2.replaceAll(VerificationLanguage.REGION_PREFIX, "") : str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Principal)) {
            return false;
        }
        Principal principal = (Principal) obj;
        return this.f12032f.equals(principal.f12032f) && this.f12031e.equals(principal.f12031e);
    }

    public int hashCode() {
        return ((this.f12032f.hashCode() + 31) * 31) + this.f12031e.hashCode();
    }
}
