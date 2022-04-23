package com.amazonaws.services.s3.internal;

import com.amazonaws.services.s3.model.DeleteObjectsResult;
import com.amazonaws.services.s3.model.MultiObjectDeleteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/DeleteObjectsResponse.class */
public class DeleteObjectsResponse implements S3RequesterChargedResult {

    /* renamed from: a  reason: collision with root package name */
    public List<DeleteObjectsResult.DeletedObject> f6790a;

    /* renamed from: b  reason: collision with root package name */
    public List<MultiObjectDeleteException.DeleteError> f6791b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6792c;

    public DeleteObjectsResponse() {
        this(new ArrayList(), new ArrayList());
    }

    public DeleteObjectsResponse(List<DeleteObjectsResult.DeletedObject> list, List<MultiObjectDeleteException.DeleteError> list2) {
        this.f6790a = list;
        this.f6791b = list2;
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z) {
        this.f6792c = z;
    }
}
