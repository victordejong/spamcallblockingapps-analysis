package com.amazonaws.services.p101s3.model;

import com.amazonaws.services.p101s3.internal.S3RequesterChargedResult;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.DeleteObjectsResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteObjectsResult.class */
public class DeleteObjectsResult implements S3RequesterChargedResult, Serializable {
    private final List<DeletedObject> deletedObjects;
    private boolean isRequesterCharged;

    /* renamed from: com.amazonaws.services.s3.model.DeleteObjectsResult$DeletedObject */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject.class */
    public static class DeletedObject implements Serializable {
        private boolean deleteMarker;
        private String deleteMarkerVersionId;
        private String key;
        private String versionId;

        public String getDeleteMarkerVersionId() {
            return this.deleteMarkerVersionId;
        }

        public String getKey() {
            return this.key;
        }

        public String getVersionId() {
            return this.versionId;
        }

        public boolean isDeleteMarker() {
            return this.deleteMarker;
        }

        public void setDeleteMarker(boolean z) {
            this.deleteMarker = z;
        }

        public void setDeleteMarkerVersionId(String str) {
            this.deleteMarkerVersionId = str;
        }

        public void setKey(String str) {
            this.key = str;
        }

        public void setVersionId(String str) {
            this.versionId = str;
        }
    }

    public DeleteObjectsResult(List<DeletedObject> list) {
        this(list, false);
    }

    public DeleteObjectsResult(List<DeletedObject> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        this.deletedObjects = arrayList;
        arrayList.addAll(list);
        setRequesterCharged(z);
    }

    public List<DeletedObject> getDeletedObjects() {
        return this.deletedObjects;
    }

    public boolean isRequesterCharged() {
        return this.isRequesterCharged;
    }

    @Override // com.amazonaws.services.p101s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z) {
        this.isRequesterCharged = z;
    }
}
