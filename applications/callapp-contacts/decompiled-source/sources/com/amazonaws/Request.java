package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/Request.class */
public interface Request<T> {
    AmazonWebServiceRequest a();

    void a(int i);

    void a(HttpMethodName httpMethodName);

    void a(AWSRequestMetrics aWSRequestMetrics);

    void a(InputStream inputStream);

    void a(String str);

    void a(String str, String str2);

    void a(URI uri);

    void a(Map<String, String> map);

    Map<String, String> b();

    void b(String str, String str2);

    void b(Map<String, String> map);

    String c();

    Map<String, String> d();

    HttpMethodName e();

    URI f();

    String g();

    InputStream h();

    String i();

    int j();

    AWSRequestMetrics k();

    boolean l();

    void m();
}
