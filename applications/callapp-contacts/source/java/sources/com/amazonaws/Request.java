package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/Request.class */
public interface Request<T> {
    /* renamed from: a */
    AmazonWebServiceRequest mo38720a();

    /* renamed from: a */
    void mo38719a(int i);

    /* renamed from: a */
    void mo38718a(HttpMethodName httpMethodName);

    /* renamed from: a */
    void mo38717a(AWSRequestMetrics aWSRequestMetrics);

    /* renamed from: a */
    void mo38716a(InputStream inputStream);

    /* renamed from: a */
    void mo38715a(String str);

    /* renamed from: a */
    void mo38714a(String str, String str2);

    /* renamed from: a */
    void mo38713a(URI uri);

    /* renamed from: a */
    void mo38712a(Map<String, String> map);

    /* renamed from: b */
    Map<String, String> mo38711b();

    /* renamed from: b */
    void mo38710b(String str, String str2);

    /* renamed from: b */
    void mo38709b(Map<String, String> map);

    /* renamed from: c */
    String mo38708c();

    /* renamed from: d */
    Map<String, String> mo38707d();

    /* renamed from: e */
    HttpMethodName mo38706e();

    /* renamed from: f */
    URI mo38705f();

    /* renamed from: g */
    String mo38704g();

    /* renamed from: h */
    InputStream mo38703h();

    /* renamed from: i */
    String mo38702i();

    /* renamed from: j */
    int mo38701j();

    /* renamed from: k */
    AWSRequestMetrics mo38700k();

    /* renamed from: l */
    boolean mo38699l();

    /* renamed from: m */
    void mo38698m();
}
