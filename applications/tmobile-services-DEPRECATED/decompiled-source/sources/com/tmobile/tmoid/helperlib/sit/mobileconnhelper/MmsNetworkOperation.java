package com.tmobile.tmoid.helperlib.sit.mobileconnhelper;

import android.net.Uri;
import com.tmobile.tmoid.helperlib.sit.mobileconnhelper.MmsRouter;
import com.tmobile.tmoid.helperlib.util.Log;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Formatter;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/MmsNetworkOperation.class */
abstract class MmsNetworkOperation {

    /* renamed from: d */
    private static final String f14925d = "TMO-Agent." + MmsNetworkOperation.class.getSimpleName();

    /* renamed from: a */
    private final Uri f14926a;

    /* renamed from: b */
    private final MmsRouter f14927b;

    /* renamed from: c */
    private final boolean f14928c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MmsNetworkOperation(Uri uri, MmsRouter mmsRouter) {
        this.f14926a = uri;
        this.f14927b = mmsRouter;
        this.f14928c = mmsRouter.m4675e();
    }

    /* renamed from: a */
    private boolean m4690a(MmsRouter mmsRouter, InetAddress inetAddress) {
        String str = f14925d;
        Log.m4650i(str, "adding route for " + inetAddress + "...");
        if (!this.f14928c) {
            Log.m4650i(f14925d, "using public API");
            return mmsRouter.m4673g(m4685f(inetAddress));
        }
        Log.m4650i(f14925d, "using private API");
        return mmsRouter.m4672h(inetAddress);
    }

    /* renamed from: b */
    private boolean m4689b(MmsRouter mmsRouter, InetAddress[] inetAddressArr) {
        boolean z = false;
        for (InetAddress inetAddress : inetAddressArr) {
            boolean g = m4684g(inetAddress);
            String str = f14925d;
            StringBuilder sb = new StringBuilder();
            sb.append(inetAddress);
            sb.append(" is ");
            String str2 = "";
            sb.append(g ? "" : "not ");
            sb.append("IPv4 address and InetAddress routing is ");
            if (!this.f14928c) {
                str2 = "not ";
            }
            sb.append(str2);
            sb.append("supported");
            Log.m4650i(str, sb.toString());
            Log.m4650i(f14925d, "hex representation: " + m4686e(inetAddress));
            if (g || this.f14928c) {
                z |= m4690a(mmsRouter, inetAddress);
            } else {
                Log.m4646w(f14925d, "It is not IPv4 address and InetAddress routing is not supported");
            }
        }
        return z;
    }

    /* renamed from: c */
    private boolean m4688c(MmsRouter mmsRouter) throws MmsRouter.RoutingTimeoutException, MmsRouter.MmsRoutingException {
        String str = "";
        long currentTimeMillis = System.currentTimeMillis();
        InetAddress[] h = m4683h(this.f14926a.getHost());
        String str2 = f14925d;
        Log.m4650i(str2, "adding route for: " + Arrays.toString(h));
        try {
            mmsRouter.m4676d();
            String str3 = f14925d;
            StringBuilder sb = new StringBuilder();
            sb.append("MMS network feature was ");
            if (!mmsRouter.m4674f()) {
                str = "not ";
            }
            sb.append(str);
            sb.append("enabled for ");
            sb.append(this);
            Log.m4650i(str3, sb.toString());
            boolean z = false;
            try {
                Log.m4650i(f14925d, "Updating route with addresses resolved earlier...");
                boolean b = m4689b(mmsRouter, h);
                Log.m4650i(f14925d, "Updating route with addresses resolved with routing in effect...");
                z = b;
                z = m4689b(mmsRouter, InetAddress.getAllByName(this.f14926a.getHost())) | b;
            } catch (UnknownHostException e) {
                String str4 = f14925d;
                Log.m4654d(str4, "Can't find host for uri " + this.f14926a);
            }
            String str5 = f14925d;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("route modification ");
            sb2.append(z ? "succeeded" : "failed");
            sb2.append(", took ");
            sb2.append(System.currentTimeMillis() - currentTimeMillis);
            sb2.append("ms");
            Log.m4650i(str5, sb2.toString());
            return z;
        } catch (Throwable th) {
            String str6 = f14925d;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("MMS network feature was ");
            if (!mmsRouter.m4674f()) {
                str = "not ";
            }
            sb3.append(str);
            sb3.append("enabled for ");
            sb3.append(this);
            Log.m4650i(str6, sb3.toString());
            throw th;
        }
    }

    /* renamed from: e */
    private static String m4686e(InetAddress inetAddress) {
        Formatter formatter = new Formatter();
        byte[] address = inetAddress.getAddress();
        int length = address.length;
        for (int i = 0; i < length; i++) {
            formatter.format("0x%02X:", Integer.valueOf(address[i] & 255));
        }
        int length2 = address.length;
        for (int i2 = 0; i2 < length2; i2++) {
            formatter.format("%03d.", Integer.valueOf(address[i2] & 255));
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }

    /* renamed from: f */
    private static int m4685f(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        if (address.length == 4) {
            return (address[0] & 255) | ((address[3] & 255) << 24) | ((address[2] & 255) << 16) | ((address[1] & 255) << 8);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: g */
    private static boolean m4684g(InetAddress inetAddress) {
        return inetAddress.getAddress().length == 4;
    }

    /* renamed from: h */
    private static InetAddress[] m4683h(String str) {
        InetAddress[] inetAddressArr = new InetAddress[0];
        try {
            inetAddressArr = InetAddress.getAllByName(str);
        } catch (UnknownHostException e) {
            Log.m4653d(f14925d, "Error", e);
        }
        return inetAddressArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m4687d() {
        Log.m4650i(f14925d, "execute()");
        try {
            try {
                boolean c = m4688c(this.f14927b);
                if (c) {
                    mo4682i();
                } else {
                    mo4681j();
                }
                if (!c) {
                    return;
                }
            } catch (MmsRouter.MmsRoutingException e) {
                mo4681j();
                if (0 == 0) {
                    return;
                }
            } catch (MmsRouter.RoutingTimeoutException e2) {
                mo4680k();
                if (0 == 0) {
                    return;
                }
            }
            this.f14927b.m4677c();
        } catch (Throwable th) {
            if (0 != 0) {
                this.f14927b.m4677c();
            }
            throw th;
        }
    }

    /* renamed from: i */
    protected abstract void mo4682i();

    /* renamed from: j */
    protected abstract void mo4681j();

    /* renamed from: k */
    protected abstract void mo4680k();
}
