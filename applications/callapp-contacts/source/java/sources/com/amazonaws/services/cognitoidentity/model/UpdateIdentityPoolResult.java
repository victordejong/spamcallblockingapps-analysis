package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolResult.class */
public class UpdateIdentityPoolResult implements Serializable {
    private Boolean allowClassicFlow;
    private Boolean allowUnauthenticatedIdentities;
    private List<CognitoIdentityProvider> cognitoIdentityProviders;
    private String developerProviderName;
    private String identityPoolId;
    private String identityPoolName;
    private Map<String, String> identityPoolTags;
    private List<String> openIdConnectProviderARNs;
    private List<String> samlProviderARNs;
    private Map<String, String> supportedLoginProviders;

    public UpdateIdentityPoolResult addIdentityPoolTagsEntry(String str, String str2) {
        if (this.identityPoolTags == null) {
            this.identityPoolTags = new HashMap();
        }
        if (!this.identityPoolTags.containsKey(str)) {
            this.identityPoolTags.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public UpdateIdentityPoolResult addSupportedLoginProvidersEntry(String str, String str2) {
        if (this.supportedLoginProviders == null) {
            this.supportedLoginProviders = new HashMap();
        }
        if (!this.supportedLoginProviders.containsKey(str)) {
            this.supportedLoginProviders.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public UpdateIdentityPoolResult clearIdentityPoolTagsEntries() {
        this.identityPoolTags = null;
        return this;
    }

    public UpdateIdentityPoolResult clearSupportedLoginProvidersEntries() {
        this.supportedLoginProviders = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateIdentityPoolResult)) {
            return false;
        }
        UpdateIdentityPoolResult updateIdentityPoolResult = (UpdateIdentityPoolResult) obj;
        if ((updateIdentityPoolResult.getIdentityPoolId() == null) ^ (getIdentityPoolId() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.getIdentityPoolId() != null && !updateIdentityPoolResult.getIdentityPoolId().equals(getIdentityPoolId())) {
            return false;
        }
        if ((updateIdentityPoolResult.getIdentityPoolName() == null) ^ (getIdentityPoolName() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.getIdentityPoolName() != null && !updateIdentityPoolResult.getIdentityPoolName().equals(getIdentityPoolName())) {
            return false;
        }
        if ((updateIdentityPoolResult.getAllowUnauthenticatedIdentities() == null) ^ (getAllowUnauthenticatedIdentities() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.getAllowUnauthenticatedIdentities() != null && !updateIdentityPoolResult.getAllowUnauthenticatedIdentities().equals(getAllowUnauthenticatedIdentities())) {
            return false;
        }
        if ((updateIdentityPoolResult.getAllowClassicFlow() == null) ^ (getAllowClassicFlow() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.getAllowClassicFlow() != null && !updateIdentityPoolResult.getAllowClassicFlow().equals(getAllowClassicFlow())) {
            return false;
        }
        if ((updateIdentityPoolResult.getSupportedLoginProviders() == null) ^ (getSupportedLoginProviders() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.getSupportedLoginProviders() != null && !updateIdentityPoolResult.getSupportedLoginProviders().equals(getSupportedLoginProviders())) {
            return false;
        }
        if ((updateIdentityPoolResult.getDeveloperProviderName() == null) ^ (getDeveloperProviderName() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.getDeveloperProviderName() != null && !updateIdentityPoolResult.getDeveloperProviderName().equals(getDeveloperProviderName())) {
            return false;
        }
        if ((updateIdentityPoolResult.getOpenIdConnectProviderARNs() == null) ^ (getOpenIdConnectProviderARNs() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.getOpenIdConnectProviderARNs() != null && !updateIdentityPoolResult.getOpenIdConnectProviderARNs().equals(getOpenIdConnectProviderARNs())) {
            return false;
        }
        if ((updateIdentityPoolResult.getCognitoIdentityProviders() == null) ^ (getCognitoIdentityProviders() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.getCognitoIdentityProviders() != null && !updateIdentityPoolResult.getCognitoIdentityProviders().equals(getCognitoIdentityProviders())) {
            return false;
        }
        if ((updateIdentityPoolResult.getSamlProviderARNs() == null) ^ (getSamlProviderARNs() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.getSamlProviderARNs() != null && !updateIdentityPoolResult.getSamlProviderARNs().equals(getSamlProviderARNs())) {
            return false;
        }
        if ((updateIdentityPoolResult.getIdentityPoolTags() == null) ^ (getIdentityPoolTags() == null)) {
            return false;
        }
        return updateIdentityPoolResult.getIdentityPoolTags() == null || updateIdentityPoolResult.getIdentityPoolTags().equals(getIdentityPoolTags());
    }

    public Boolean getAllowClassicFlow() {
        return this.allowClassicFlow;
    }

    public Boolean getAllowUnauthenticatedIdentities() {
        return this.allowUnauthenticatedIdentities;
    }

    public List<CognitoIdentityProvider> getCognitoIdentityProviders() {
        return this.cognitoIdentityProviders;
    }

    public String getDeveloperProviderName() {
        return this.developerProviderName;
    }

    public String getIdentityPoolId() {
        return this.identityPoolId;
    }

    public String getIdentityPoolName() {
        return this.identityPoolName;
    }

    public Map<String, String> getIdentityPoolTags() {
        return this.identityPoolTags;
    }

    public List<String> getOpenIdConnectProviderARNs() {
        return this.openIdConnectProviderARNs;
    }

    public List<String> getSamlProviderARNs() {
        return this.samlProviderARNs;
    }

    public Map<String, String> getSupportedLoginProviders() {
        return this.supportedLoginProviders;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityPoolId() == null ? 0 : getIdentityPoolId().hashCode();
        int hashCode2 = getIdentityPoolName() == null ? 0 : getIdentityPoolName().hashCode();
        int hashCode3 = getAllowUnauthenticatedIdentities() == null ? 0 : getAllowUnauthenticatedIdentities().hashCode();
        int hashCode4 = getAllowClassicFlow() == null ? 0 : getAllowClassicFlow().hashCode();
        int hashCode5 = getSupportedLoginProviders() == null ? 0 : getSupportedLoginProviders().hashCode();
        int hashCode6 = getDeveloperProviderName() == null ? 0 : getDeveloperProviderName().hashCode();
        int hashCode7 = getOpenIdConnectProviderARNs() == null ? 0 : getOpenIdConnectProviderARNs().hashCode();
        int hashCode8 = getCognitoIdentityProviders() == null ? 0 : getCognitoIdentityProviders().hashCode();
        int hashCode9 = getSamlProviderARNs() == null ? 0 : getSamlProviderARNs().hashCode();
        if (getIdentityPoolTags() != null) {
            i = getIdentityPoolTags().hashCode();
        }
        return ((((((((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public Boolean isAllowClassicFlow() {
        return this.allowClassicFlow;
    }

    public Boolean isAllowUnauthenticatedIdentities() {
        return this.allowUnauthenticatedIdentities;
    }

    public void setAllowClassicFlow(Boolean bool) {
        this.allowClassicFlow = bool;
    }

    public void setAllowUnauthenticatedIdentities(Boolean bool) {
        this.allowUnauthenticatedIdentities = bool;
    }

    public void setCognitoIdentityProviders(Collection<CognitoIdentityProvider> collection) {
        if (collection == null) {
            this.cognitoIdentityProviders = null;
        } else {
            this.cognitoIdentityProviders = new ArrayList(collection);
        }
    }

    public void setDeveloperProviderName(String str) {
        this.developerProviderName = str;
    }

    public void setIdentityPoolId(String str) {
        this.identityPoolId = str;
    }

    public void setIdentityPoolName(String str) {
        this.identityPoolName = str;
    }

    public void setIdentityPoolTags(Map<String, String> map) {
        this.identityPoolTags = map;
    }

    public void setOpenIdConnectProviderARNs(Collection<String> collection) {
        if (collection == null) {
            this.openIdConnectProviderARNs = null;
        } else {
            this.openIdConnectProviderARNs = new ArrayList(collection);
        }
    }

    public void setSamlProviderARNs(Collection<String> collection) {
        if (collection == null) {
            this.samlProviderARNs = null;
        } else {
            this.samlProviderARNs = new ArrayList(collection);
        }
    }

    public void setSupportedLoginProviders(Map<String, String> map) {
        this.supportedLoginProviders = map;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityPoolId() != null) {
            sb.append("IdentityPoolId: " + getIdentityPoolId() + ",");
        }
        if (getIdentityPoolName() != null) {
            sb.append("IdentityPoolName: " + getIdentityPoolName() + ",");
        }
        if (getAllowUnauthenticatedIdentities() != null) {
            sb.append("AllowUnauthenticatedIdentities: " + getAllowUnauthenticatedIdentities() + ",");
        }
        if (getAllowClassicFlow() != null) {
            sb.append("AllowClassicFlow: " + getAllowClassicFlow() + ",");
        }
        if (getSupportedLoginProviders() != null) {
            sb.append("SupportedLoginProviders: " + getSupportedLoginProviders() + ",");
        }
        if (getDeveloperProviderName() != null) {
            sb.append("DeveloperProviderName: " + getDeveloperProviderName() + ",");
        }
        if (getOpenIdConnectProviderARNs() != null) {
            sb.append("OpenIdConnectProviderARNs: " + getOpenIdConnectProviderARNs() + ",");
        }
        if (getCognitoIdentityProviders() != null) {
            sb.append("CognitoIdentityProviders: " + getCognitoIdentityProviders() + ",");
        }
        if (getSamlProviderARNs() != null) {
            sb.append("SamlProviderARNs: " + getSamlProviderARNs() + ",");
        }
        if (getIdentityPoolTags() != null) {
            sb.append("IdentityPoolTags: " + getIdentityPoolTags());
        }
        sb.append("}");
        return sb.toString();
    }

    public UpdateIdentityPoolResult withAllowClassicFlow(Boolean bool) {
        this.allowClassicFlow = bool;
        return this;
    }

    public UpdateIdentityPoolResult withAllowUnauthenticatedIdentities(Boolean bool) {
        this.allowUnauthenticatedIdentities = bool;
        return this;
    }

    public UpdateIdentityPoolResult withCognitoIdentityProviders(Collection<CognitoIdentityProvider> collection) {
        setCognitoIdentityProviders(collection);
        return this;
    }

    public UpdateIdentityPoolResult withCognitoIdentityProviders(CognitoIdentityProvider... cognitoIdentityProviderArr) {
        if (getCognitoIdentityProviders() == null) {
            this.cognitoIdentityProviders = new ArrayList(cognitoIdentityProviderArr.length);
        }
        for (CognitoIdentityProvider cognitoIdentityProvider : cognitoIdentityProviderArr) {
            this.cognitoIdentityProviders.add(cognitoIdentityProvider);
        }
        return this;
    }

    public UpdateIdentityPoolResult withDeveloperProviderName(String str) {
        this.developerProviderName = str;
        return this;
    }

    public UpdateIdentityPoolResult withIdentityPoolId(String str) {
        this.identityPoolId = str;
        return this;
    }

    public UpdateIdentityPoolResult withIdentityPoolName(String str) {
        this.identityPoolName = str;
        return this;
    }

    public UpdateIdentityPoolResult withIdentityPoolTags(Map<String, String> map) {
        this.identityPoolTags = map;
        return this;
    }

    public UpdateIdentityPoolResult withOpenIdConnectProviderARNs(Collection<String> collection) {
        setOpenIdConnectProviderARNs(collection);
        return this;
    }

    public UpdateIdentityPoolResult withOpenIdConnectProviderARNs(String... strArr) {
        if (getOpenIdConnectProviderARNs() == null) {
            this.openIdConnectProviderARNs = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.openIdConnectProviderARNs.add(str);
        }
        return this;
    }

    public UpdateIdentityPoolResult withSamlProviderARNs(Collection<String> collection) {
        setSamlProviderARNs(collection);
        return this;
    }

    public UpdateIdentityPoolResult withSamlProviderARNs(String... strArr) {
        if (getSamlProviderARNs() == null) {
            this.samlProviderARNs = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.samlProviderARNs.add(str);
        }
        return this;
    }

    public UpdateIdentityPoolResult withSupportedLoginProviders(Map<String, String> map) {
        this.supportedLoginProviders = map;
        return this;
    }
}
