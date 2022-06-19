package com.amazonaws.util;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/ServiceClientHolderInputStream.class */
public class ServiceClientHolderInputStream extends SdkFilterInputStream {

    /* renamed from: a */
    private AmazonWebServiceClient f12511a;

    public ServiceClientHolderInputStream(InputStream inputStream, AmazonWebServiceClient amazonWebServiceClient) {
        super(inputStream);
        this.f12511a = amazonWebServiceClient;
    }
}
