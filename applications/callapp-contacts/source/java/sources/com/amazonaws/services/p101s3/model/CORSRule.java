package com.amazonaws.services.p101s3.model;

import java.util.Arrays;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.CORSRule */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CORSRule.class */
public class CORSRule {
    private List<String> allowedHeaders;
    private List<AllowedMethods> allowedMethods;
    private List<String> allowedOrigins;
    private List<String> exposedHeaders;

    /* renamed from: id */
    private String f12457id;
    private int maxAgeSeconds;

    /* renamed from: com.amazonaws.services.s3.model.CORSRule$AllowedMethods */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CORSRule$AllowedMethods.class */
    public enum AllowedMethods {
        GET("GET"),
        PUT("PUT"),
        HEAD("HEAD"),
        POST("POST"),
        DELETE("DELETE");
        
        private final String AllowedMethod;

        AllowedMethods(String str) {
            this.AllowedMethod = str;
        }

        public static AllowedMethods fromValue(String str) throws IllegalArgumentException {
            AllowedMethods[] values;
            for (AllowedMethods allowedMethods : values()) {
                String allowedMethods2 = allowedMethods.toString();
                if (allowedMethods2 == null && str == null) {
                    return allowedMethods;
                }
                if (allowedMethods2 != null && allowedMethods2.equals(str)) {
                    return allowedMethods;
                }
            }
            throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.AllowedMethod;
        }
    }

    public List<String> getAllowedHeaders() {
        return this.allowedHeaders;
    }

    public List<AllowedMethods> getAllowedMethods() {
        return this.allowedMethods;
    }

    public List<String> getAllowedOrigins() {
        return this.allowedOrigins;
    }

    public List<String> getExposedHeaders() {
        return this.exposedHeaders;
    }

    public String getId() {
        return this.f12457id;
    }

    public int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public void setAllowedHeaders(List<String> list) {
        this.allowedHeaders = list;
    }

    public void setAllowedHeaders(String... strArr) {
        this.allowedHeaders = Arrays.asList(strArr);
    }

    public void setAllowedMethods(List<AllowedMethods> list) {
        this.allowedMethods = list;
    }

    public void setAllowedMethods(AllowedMethods... allowedMethodsArr) {
        this.allowedMethods = Arrays.asList(allowedMethodsArr);
    }

    public void setAllowedOrigins(List<String> list) {
        this.allowedOrigins = list;
    }

    public void setAllowedOrigins(String... strArr) {
        this.allowedOrigins = Arrays.asList(strArr);
    }

    public void setExposedHeaders(List<String> list) {
        this.exposedHeaders = list;
    }

    public void setExposedHeaders(String... strArr) {
        this.exposedHeaders = Arrays.asList(strArr);
    }

    public void setId(String str) {
        this.f12457id = str;
    }

    public void setMaxAgeSeconds(int i) {
        this.maxAgeSeconds = i;
    }

    public CORSRule withAllowedHeaders(List<String> list) {
        this.allowedHeaders = list;
        return this;
    }

    public CORSRule withAllowedMethods(List<AllowedMethods> list) {
        this.allowedMethods = list;
        return this;
    }

    public CORSRule withAllowedOrigins(List<String> list) {
        this.allowedOrigins = list;
        return this;
    }

    public CORSRule withExposedHeaders(List<String> list) {
        this.exposedHeaders = list;
        return this;
    }

    public CORSRule withId(String str) {
        this.f12457id = str;
        return this;
    }

    public CORSRule withMaxAgeSeconds(int i) {
        this.maxAgeSeconds = i;
        return this;
    }
}
