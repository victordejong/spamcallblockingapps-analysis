package com.amazonaws.services.s3.internal;

import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3DirectSpi.class */
public interface S3DirectSpi {
    UploadPartResult a(UploadPartRequest uploadPartRequest);
}
