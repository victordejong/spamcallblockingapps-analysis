package com.bytedance.sdk.p127a.p129b;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.bytedance.sdk.a.b.o */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/o.class */
public interface AbstractC4125o {

    /* renamed from: a */
    public static final AbstractC4125o f15105a = new AbstractC4125o() { // from class: com.bytedance.sdk.a.b.o.1
        @Override // com.bytedance.sdk.p127a.p129b.AbstractC4125o
        /* renamed from: a */
        public final List<InetAddress> mo36497a(String str) throws UnknownHostException {
            if (str != null) {
                try {
                    return Arrays.asList(InetAddress.getAllByName(str));
                } catch (NullPointerException e) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(String.valueOf(str)));
                    unknownHostException.initCause(e);
                    throw unknownHostException;
                }
            }
            throw new UnknownHostException("hostname == null");
        }
    };

    /* renamed from: a */
    List<InetAddress> mo36497a(String str) throws UnknownHostException;
}
