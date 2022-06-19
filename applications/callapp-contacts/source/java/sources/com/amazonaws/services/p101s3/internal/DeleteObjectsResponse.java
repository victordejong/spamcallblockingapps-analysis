package com.amazonaws.services.p101s3.internal;

import com.amazonaws.services.p101s3.model.DeleteObjectsResult;
import com.amazonaws.services.p101s3.model.MultiObjectDeleteException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.internal.DeleteObjectsResponse */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/DeleteObjectsResponse.class */
public class DeleteObjectsResponse implements S3RequesterChargedResult {

    /* renamed from: a */
    public List<DeleteObjectsResult.DeletedObject> f12323a;

    /* renamed from: b */
    public List<MultiObjectDeleteException.DeleteError> f12324b;

    /* renamed from: c */
    private boolean f12325c;

    public DeleteObjectsResponse() {
        this(new ArrayList(), new ArrayList());
    }

    public DeleteObjectsResponse(List<DeleteObjectsResult.DeletedObject> list, List<MultiObjectDeleteException.DeleteError> list2) {
        this.f12323a = list;
        this.f12324b = list2;
    }

    @Override // com.amazonaws.services.p101s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z) {
        this.f12325c = z;
    }
}
