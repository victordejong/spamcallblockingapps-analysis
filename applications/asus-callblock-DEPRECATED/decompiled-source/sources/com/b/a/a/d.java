package com.b.a.a;

import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes-dex2jar.jar:com/b/a/a/d.class */
public interface d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f3290a = new d() { // from class: com.b.a.a.d.1
        @Override // com.b.a.a.d
        public final InetAddress[] a(String str) {
            if (str != null) {
                return InetAddress.getAllByName(str);
            }
            throw new UnknownHostException("host == null");
        }
    };

    InetAddress[] a(String str);
}
