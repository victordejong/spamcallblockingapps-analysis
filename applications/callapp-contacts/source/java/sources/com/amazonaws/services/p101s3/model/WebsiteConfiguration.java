package com.amazonaws.services.p101s3.model;

import java.util.LinkedList;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.WebsiteConfiguration */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/WebsiteConfiguration.class */
public class WebsiteConfiguration {
    private String errorDocument;
    private String indexDocumentSuffix;
    private String redirectAllRequestsTo;
    private List<RoutingRule> routingRules = new LinkedList();

    public String getErrorDocument() {
        return this.errorDocument;
    }

    public String getIndexDocumentSuffix() {
        return this.indexDocumentSuffix;
    }

    public String getRedirectAllRequestsTo() {
        return this.redirectAllRequestsTo;
    }

    public List<RoutingRule> getRoutingRule() {
        return this.routingRules;
    }

    public void setErrorDocument(String str) {
        this.errorDocument = str;
    }

    public void setIndexDocumentSuffix(String str) {
        this.indexDocumentSuffix = str;
    }

    public void setRedirectAllRequestsTo(String str) {
        this.redirectAllRequestsTo = str;
    }

    public void setRoutingRules(List<RoutingRule> list) {
        this.routingRules = list;
    }

    public WebsiteConfiguration withIndexDocumentSuffix(String str) {
        this.indexDocumentSuffix = str;
        return this;
    }

    public WebsiteConfiguration withRedirectAllRequestsTo(String str) {
        this.redirectAllRequestsTo = str;
        return this;
    }

    public WebsiteConfiguration withRoutingRule(List<RoutingRule> list) {
        this.routingRules = list;
        return this;
    }

    public WebsiteConfiguration witherrorDocument(String str) {
        this.errorDocument = str;
        return this;
    }
}
