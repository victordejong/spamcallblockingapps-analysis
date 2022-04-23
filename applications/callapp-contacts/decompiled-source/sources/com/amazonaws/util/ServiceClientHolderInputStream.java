package com.amazonaws.util;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/ServiceClientHolderInputStream.class */
public class ServiceClientHolderInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private AmazonWebServiceClient f6918a;

    public ServiceClientHolderInputStream(InputStream inputStream, AmazonWebServiceClient amazonWebServiceClient) {
        super(inputStream);
        this.f6918a = amazonWebServiceClient;
    }
}
