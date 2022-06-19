package com.amazonaws;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonWebServiceResponse.class */
public class AmazonWebServiceResponse<T> {

    /* renamed from: a */
    public T f11951a;

    /* renamed from: b */
    public ResponseMetadata f11952b;

    /* renamed from: a */
    public final String m38721a() {
        ResponseMetadata responseMetadata = this.f11952b;
        if (responseMetadata == null) {
            return null;
        }
        return responseMetadata.m38696a();
    }
}
