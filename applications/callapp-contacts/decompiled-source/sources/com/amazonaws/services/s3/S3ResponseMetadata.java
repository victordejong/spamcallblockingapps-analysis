package com.amazonaws.services.s3;

import com.amazonaws.ResponseMetadata;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/S3ResponseMetadata.class */
public class S3ResponseMetadata extends ResponseMetadata {
    public S3ResponseMetadata(ResponseMetadata responseMetadata) {
        super(responseMetadata);
    }

    public S3ResponseMetadata(Map<String, String> map) {
        super(map);
    }
}
