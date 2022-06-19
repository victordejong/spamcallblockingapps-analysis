package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.ListNextBatchOfVersionsRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest.class */
public class ListNextBatchOfVersionsRequest extends AmazonWebServiceRequest implements Serializable {
    private VersionListing previousVersionListing;

    public ListNextBatchOfVersionsRequest(VersionListing versionListing) {
        setPreviousVersionListing(versionListing);
    }

    public VersionListing getPreviousVersionListing() {
        return this.previousVersionListing;
    }

    public void setPreviousVersionListing(VersionListing versionListing) {
        if (versionListing != null) {
            this.previousVersionListing = versionListing;
            return;
        }
        throw new IllegalArgumentException("The parameter previousVersionListing must be specified.");
    }

    public ListVersionsRequest toListVersionsRequest() {
        return new ListVersionsRequest(this.previousVersionListing.getBucketName(), this.previousVersionListing.getPrefix(), this.previousVersionListing.getNextKeyMarker(), this.previousVersionListing.getNextVersionIdMarker(), this.previousVersionListing.getDelimiter(), Integer.valueOf(this.previousVersionListing.getMaxKeys())).withEncodingType(this.previousVersionListing.getEncodingType());
    }

    public ListNextBatchOfVersionsRequest withPreviousVersionListing(VersionListing versionListing) {
        setPreviousVersionListing(versionListing);
        return this;
    }
}
