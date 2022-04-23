package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.model.DeleteObjectsResult;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/MultiObjectDeleteException.class */
public class MultiObjectDeleteException extends AmazonS3Exception {
    private static final long serialVersionUID = -2004213552302446866L;
    private final List<DeleteObjectsResult.DeletedObject> deletedObjects;
    private final List<DeleteError> errors;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError.class */
    public static class DeleteError {
        private String code;
        private String key;
        private String message;
        private String versionId;

        public String getCode() {
            return this.code;
        }

        public String getKey() {
            return this.key;
        }

        public String getMessage() {
            return this.message;
        }

        public String getVersionId() {
            return this.versionId;
        }

        public void setCode(String str) {
            this.code = str;
        }

        public void setKey(String str) {
            this.key = str;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setVersionId(String str) {
            this.versionId = str;
        }
    }

    public MultiObjectDeleteException(Collection<DeleteError> collection, Collection<DeleteObjectsResult.DeletedObject> collection2) {
        super("One or more objects could not be deleted");
        ArrayList arrayList = new ArrayList();
        this.errors = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.deletedObjects = arrayList2;
        arrayList2.addAll(collection2);
        arrayList.addAll(collection);
    }

    public List<DeleteObjectsResult.DeletedObject> getDeletedObjects() {
        return this.deletedObjects;
    }

    @Override // com.amazonaws.AmazonServiceException
    public String getErrorCode() {
        return super.getErrorCode();
    }

    public List<DeleteError> getErrors() {
        return this.errors;
    }
}
