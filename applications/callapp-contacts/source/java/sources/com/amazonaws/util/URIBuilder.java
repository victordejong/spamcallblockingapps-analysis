package com.amazonaws.util;

import com.amazonaws.Protocol;
import java.net.URI;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/URIBuilder.class */
public class URIBuilder {

    /* renamed from: h */
    private static final String f12519h = Protocol.HTTPS.toString();

    /* renamed from: a */
    public String f12520a;

    /* renamed from: b */
    public String f12521b;

    /* renamed from: c */
    public String f12522c;

    /* renamed from: d */
    public int f12523d;

    /* renamed from: e */
    public String f12524e;

    /* renamed from: f */
    public String f12525f;

    /* renamed from: g */
    public String f12526g;

    private URIBuilder() {
        this.f12520a = f12519h;
        this.f12523d = -1;
    }

    private URIBuilder(URI uri) {
        this.f12520a = uri.getScheme();
        this.f12521b = uri.getUserInfo();
        this.f12522c = uri.getHost();
        this.f12523d = uri.getPort();
        this.f12524e = uri.getPath();
        this.f12525f = uri.getQuery();
        this.f12526g = uri.getFragment();
    }

    /* renamed from: a */
    public static URIBuilder m38214a(URI uri) {
        return new URIBuilder(uri);
    }
}
