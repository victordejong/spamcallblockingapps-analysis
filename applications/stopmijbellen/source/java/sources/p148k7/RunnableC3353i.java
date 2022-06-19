package p148k7;

import com.koushikdutta.async.HostnameResolutionException;
import java.net.InetAddress;
import java.util.Arrays;
import p170m7.C3661g;
/* renamed from: k7.i */
/* loaded from: classes2-dex2jar.jar:k7/i.class */
public class RunnableC3353i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f11360a;

    /* renamed from: b */
    public final /* synthetic */ C3661g f11361b;

    /* renamed from: c */
    public final /* synthetic */ C3343h f11362c;

    /* renamed from: k7.i$a */
    /* loaded from: classes2-dex2jar.jar:k7/i$a.class */
    public class RunnableC3354a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ InetAddress[] f11363a;

        public RunnableC3354a(InetAddress[] inetAddressArr) {
            RunnableC3353i.this = r4;
            this.f11363a = inetAddressArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            RunnableC3353i.this.f11361b.m1915o(null, this.f11363a);
        }
    }

    /* renamed from: k7.i$b */
    /* loaded from: classes2-dex2jar.jar:k7/i$b.class */
    public class RunnableC3355b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Exception f11365a;

        public RunnableC3355b(Exception exc) {
            RunnableC3353i.this = r4;
            this.f11365a = exc;
        }

        @Override // java.lang.Runnable
        public void run() {
            RunnableC3353i.this.f11361b.m1915o(this.f11365a, null);
        }
    }

    public RunnableC3353i(C3343h c3343h, String str, C3661g c3661g) {
        this.f11362c = c3343h;
        this.f11360a = str;
        this.f11361b = c3661g;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            InetAddress[] allByName = InetAddress.getAllByName(this.f11360a);
            Arrays.sort(allByName, C3343h.f11331g);
            if (allByName == null || allByName.length == 0) {
                throw new HostnameResolutionException("no addresses for host");
            }
            this.f11362c.m2357i(new RunnableC3354a(allByName), 0L);
        } catch (Exception e) {
            this.f11362c.m2357i(new RunnableC3355b(e), 0L);
        }
    }
}
