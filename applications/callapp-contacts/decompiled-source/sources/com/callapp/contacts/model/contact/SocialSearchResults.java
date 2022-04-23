package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.model.PersonData;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/SocialSearchResults.class */
public class SocialSearchResults extends CacheableData {
    private static final long serialVersionUID = -594869188975868015L;
    public final JSONSocialNetworkID id;
    public final List<PersonData> results;
    public final String term;

    public SocialSearchResults(String str, List<PersonData> list) {
        this.term = str;
        this.results = list;
        this.id = null;
    }

    public SocialSearchResults(String str, List<PersonData> list, JSONSocialNetworkID jSONSocialNetworkID) {
        this.id = jSONSocialNetworkID;
        this.results = list;
        this.term = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SocialSearchResults socialSearchResults = (SocialSearchResults) obj;
        return this.results.equals(socialSearchResults.results) && this.term.equals(socialSearchResults.term);
    }

    public int hashCode() {
        return (this.term.hashCode() * 31) + this.results.hashCode();
    }
}
