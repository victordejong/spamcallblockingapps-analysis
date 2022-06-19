package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
/* renamed from: okhttp3.o */
/* loaded from: classes-dex2jar.jar:okhttp3/o.class */
public interface AbstractC2080o {

    /* renamed from: a */
    public static final AbstractC2080o f5339a = new AbstractC2080o() { // from class: okhttp3.o.1
        @Override // okhttp3.AbstractC2080o
        /* renamed from: a */
        public List<InetAddress> mo1996a(String str) {
            if (str != null) {
                try {
                    return Arrays.asList(InetAddress.getAllByName(str));
                } catch (NullPointerException e) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + str);
                    unknownHostException.initCause(e);
                    throw unknownHostException;
                }
            }
            throw new UnknownHostException("hostname == null");
        }
    };

    /* renamed from: a */
    List<InetAddress> mo1996a(String str);
}
