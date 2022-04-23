package com.amazonaws.util;

import com.amazonaws.Protocol;
import java.net.URI;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/URIBuilder.class */
public class URIBuilder {
    private static final String h = Protocol.HTTPS.toString();

    /* renamed from: a  reason: collision with root package name */
    public String f6926a;

    /* renamed from: b  reason: collision with root package name */
    public String f6927b;

    /* renamed from: c  reason: collision with root package name */
    public String f6928c;

    /* renamed from: d  reason: collision with root package name */
    public int f6929d;
    public String e;
    public String f;
    public String g;

    private URIBuilder() {
        this.f6926a = h;
        this.f6929d = -1;
    }

    private URIBuilder(URI uri) {
        this.f6926a = uri.getScheme();
        this.f6927b = uri.getUserInfo();
        this.f6928c = uri.getHost();
        this.f6929d = uri.getPort();
        this.e = uri.getPath();
        this.f = uri.getQuery();
        this.g = uri.getFragment();
    }

    public static URIBuilder a(URI uri) {
        return new URIBuilder(uri);
    }
}
