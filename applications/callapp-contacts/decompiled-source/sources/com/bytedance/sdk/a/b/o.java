package com.bytedance.sdk.a.b;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/o.class */
public interface o {

    /* renamed from: a  reason: collision with root package name */
    public static final o f8124a = new o() { // from class: com.bytedance.sdk.a.b.o.1
        @Override // com.bytedance.sdk.a.b.o
        public final List<InetAddress> a(String str) throws UnknownHostException {
            if (str != null) {
                try {
                    return Arrays.asList(InetAddress.getAllByName(str));
                } catch (NullPointerException e) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(String.valueOf(str)));
                    unknownHostException.initCause(e);
                    throw unknownHostException;
                }
            } else {
                throw new UnknownHostException("hostname == null");
            }
        }
    };

    List<InetAddress> a(String str) throws UnknownHostException;
}
