package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
/* renamed from: okhttp3.o */
/* loaded from: classes-dex2jar.jar:okhttp3/o.class */
public interface AbstractC5530o {

    /* renamed from: a */
    public static final AbstractC5530o f23113a = new AbstractC5530o() { // from class: okhttp3.o.1
        @Override // okhttp3.AbstractC5530o
        /* renamed from: a */
        public List<InetAddress> mo314a(String str) {
            if (str == null) {
                throw new UnknownHostException("hostname == null");
            }
            try {
                return Arrays.asList(InetAddress.getAllByName(str));
            } catch (NullPointerException e) {
                UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + str);
                unknownHostException.initCause(e);
                throw unknownHostException;
            }
        }
    };

    /* renamed from: a */
    List<InetAddress> mo314a(String str);
}
