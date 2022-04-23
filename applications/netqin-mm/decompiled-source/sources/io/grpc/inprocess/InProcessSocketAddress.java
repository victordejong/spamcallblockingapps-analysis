package io.grpc.inprocess;

import java.net.SocketAddress;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:io/grpc/inprocess/InProcessSocketAddress.class */
public final class InProcessSocketAddress extends SocketAddress {
    public static final long serialVersionUID = -2803441206326023474L;
    public final String name;

    public InProcessSocketAddress(String str) {
        C4933n.m24794a(str, "name");
        this.name = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InProcessSocketAddress)) {
            return false;
        }
        return this.name.equals(((InProcessSocketAddress) obj).name);
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        return this.name;
    }
}
