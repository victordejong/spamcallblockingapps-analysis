package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/ListTagsForResourceRequest.class */
public class ListTagsForResourceRequest extends AmazonWebServiceRequest implements Serializable {
    private String resourceArn;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListTagsForResourceRequest)) {
            return false;
        }
        ListTagsForResourceRequest listTagsForResourceRequest = (ListTagsForResourceRequest) obj;
        if ((listTagsForResourceRequest.getResourceArn() == null) ^ (getResourceArn() == null)) {
            return false;
        }
        return listTagsForResourceRequest.getResourceArn() == null || listTagsForResourceRequest.getResourceArn().equals(getResourceArn());
    }

    public String getResourceArn() {
        return this.resourceArn;
    }

    public int hashCode() {
        return (getResourceArn() == null ? 0 : getResourceArn().hashCode()) + 31;
    }

    public void setResourceArn(String str) {
        this.resourceArn = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getResourceArn() != null) {
            sb.append("ResourceArn: " + getResourceArn());
        }
        sb.append("}");
        return sb.toString();
    }

    public ListTagsForResourceRequest withResourceArn(String str) {
        this.resourceArn = str;
        return this;
    }
}
