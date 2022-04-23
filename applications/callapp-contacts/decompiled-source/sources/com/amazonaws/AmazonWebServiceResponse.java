package com.amazonaws;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonWebServiceResponse.class */
public class AmazonWebServiceResponse<T> {

    /* renamed from: a  reason: collision with root package name */
    public T f6536a;

    /* renamed from: b  reason: collision with root package name */
    public ResponseMetadata f6537b;

    public final String a() {
        ResponseMetadata responseMetadata = this.f6537b;
        if (responseMetadata == null) {
            return null;
        }
        return responseMetadata.a();
    }
}
