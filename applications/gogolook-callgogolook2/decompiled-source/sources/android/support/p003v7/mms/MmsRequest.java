package android.support.p003v7.mms;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p065f.p066a.p068b.p069a.AbstractC4242b;
import p065f.p066a.p068b.p069a.AbstractC4246d;
import p065f.p066a.p068b.p069a.AbstractC4265p;
import p065f.p066a.p068b.p069a.C4241a;
import p065f.p066a.p068b.p069a.C4257j;
import p065f.p066a.p068b.p069a.C4259l;
import p065f.p066a.p068b.p069a.C4260m;
/* renamed from: android.support.v7.mms.MmsRequest */
/* loaded from: classes-dex2jar.jar:android/support/v7/mms/MmsRequest.class */
public abstract class MmsRequest implements Parcelable {

    /* renamed from: f */
    public static final Integer f4f = 2;

    /* renamed from: a */
    public final String f5a;

    /* renamed from: b */
    public final Uri f6b;

    /* renamed from: c */
    public final PendingIntent f7c;

    /* renamed from: d */
    public final ExecutorService f8d;

    /* renamed from: e */
    public boolean f9e;

    public MmsRequest(Parcel parcel) {
        this.f8d = Executors.newCachedThreadPool();
        ClassLoader classLoader = MmsRequest.class.getClassLoader();
        this.f9e = parcel.readByte() != 0;
        this.f5a = parcel.readString();
        this.f6b = (Uri) parcel.readParcelable(classLoader);
        this.f7c = (PendingIntent) parcel.readParcelable(classLoader);
    }

    public MmsRequest(String str, Uri uri, PendingIntent pendingIntent) {
        this.f8d = Executors.newCachedThreadPool();
        this.f5a = str;
        this.f6b = uri;
        this.f7c = pendingIntent;
        this.f9e = true;
    }

    /* renamed from: a */
    public static int m37553a(InetAddress inetAddress) throws IllegalArgumentException {
        byte[] address = inetAddress.getAddress();
        return (address[0] & 255) | ((address[3] & 255) << 24) | ((address[2] & 255) << 16) | ((address[1] & 255) << 8);
    }

    /* renamed from: a */
    public static void m37555a(ConnectivityManager connectivityManager, AbstractC4242b.AbstractC4243a aVar, String str) throws C4257j {
        InetAddress[] allByName;
        String d = aVar.mo8208d();
        String str2 = d;
        if (TextUtils.isEmpty(d)) {
            str2 = Uri.parse(str).getHost();
        }
        try {
            boolean z = false;
            for (InetAddress inetAddress : InetAddress.getAllByName(str2)) {
                if (m37554a(connectivityManager, inetAddress)) {
                    String str3 = "Requested route to " + inetAddress;
                    z = true;
                } else {
                    String str4 = "Could not requested route to " + inetAddress;
                }
            }
            if (!z) {
                throw new C4257j(0, "No route requested");
            }
        } catch (UnknownHostException e) {
            String str5 = "Unknown host " + str2;
            throw new C4257j(0, "Unknown host");
        }
    }

    /* renamed from: a */
    public static boolean m37554a(ConnectivityManager connectivityManager, InetAddress inetAddress) {
        try {
            Method method = connectivityManager.getClass().getMethod("requestRouteToHostAddress", Integer.TYPE, InetAddress.class);
            if (method != null) {
                return ((Boolean) method.invoke(connectivityManager, f4f, inetAddress)).booleanValue();
            }
        } catch (Exception e) {
            String str = "ConnectivityManager.requestRouteToHostAddress failed " + e;
        }
        if (!(inetAddress instanceof Inet4Address)) {
            return false;
        }
        try {
            Method method2 = connectivityManager.getClass().getMethod("requestRouteToHost", Integer.TYPE, Integer.TYPE);
            if (method2 != null) {
                return ((Boolean) method2.invoke(connectivityManager, f4f, Integer.valueOf(m37553a(inetAddress)))).booleanValue();
            }
            return false;
        } catch (Exception e2) {
            String str2 = "ConnectivityManager.requestRouteToHost failed " + e2;
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004e, code lost:
        if (r0 == 132) goto L_0x0051;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m37551a(byte[] r6, android.os.Bundle r7) {
        /*
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0053
            r0 = r8
            r9 = r0
            r0 = r6
            int r0 = r0.length
            if (r0 <= 0) goto L_0x0053
            f.a.b.a.r.o r0 = new f.a.b.a.r.o     // Catch: RuntimeException -> 0x0055
            r10 = r0
            r0 = r10
            r1 = r6
            r2 = r7
            java.lang.String r3 = "supportMmsContentDisposition"
            r4 = 1
            boolean r2 = r2.getBoolean(r3, r4)     // Catch: RuntimeException -> 0x0055
            r0.<init>(r1, r2)     // Catch: RuntimeException -> 0x0055
            r0 = r10
            f.a.b.a.r.f r0 = r0.m29131a()     // Catch: RuntimeException -> 0x0055
            r6 = r0
            r0 = r8
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0053
            r0 = r8
            r9 = r0
            r0 = r6
            boolean r0 = r0 instanceof p065f.p066a.p068b.p069a.p070r.C4287u     // Catch: RuntimeException -> 0x0055
            if (r0 == 0) goto L_0x0053
            r0 = r6
            f.a.b.a.r.u r0 = (p065f.p066a.p068b.p069a.p070r.C4287u) r0     // Catch: RuntimeException -> 0x0055
            int r0 = r0.m29093b()     // Catch: RuntimeException -> 0x0055
            r11 = r0
            r0 = r11
            r1 = 227(0xe3, float:3.18E-43)
            if (r0 == r1) goto L_0x0051
            r0 = r8
            r9 = r0
            r0 = r11
            r1 = 132(0x84, float:1.85E-43)
            if (r0 != r1) goto L_0x0053
        L_0x0051:
            r0 = 1
            r9 = r0
        L_0x0053:
            r0 = r9
            return r0
        L_0x0055:
            r6 = move-exception
            r0 = r8
            r9 = r0
            goto L_0x0053
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p003v7.mms.MmsRequest.m37551a(byte[], android.os.Bundle):boolean");
    }

    /* renamed from: a */
    public abstract String mo37521a(AbstractC4242b.AbstractC4243a aVar);

    /* renamed from: a */
    public void m37557a(Context context, int i, byte[] bArr, int i2) {
        if (this.f7c != null) {
            Intent intent = new Intent();
            int i3 = i;
            if (bArr != null) {
                i3 = i;
                if (!mo37525a(context, intent, bArr)) {
                    i3 = 5;
                }
            }
            if (i3 == 4 && i2 != 0) {
                intent.putExtra("android.telephony.extra.MMS_HTTP_STATUS", i2);
            }
            try {
                this.f7c.send(context, i3, intent);
            } catch (PendingIntent.CanceledException e) {
                Log.e("MmsLib", "Sending pending intent canceled", e);
            }
        }
    }

    /* renamed from: a */
    public void m37556a(Context context, C4260m mVar, AbstractC4242b bVar, AbstractC4246d dVar, AbstractC4265p pVar) {
        C4241a e;
        C4259l e2;
        C4257j e3;
        Exception e4;
        String str = "Execute " + getClass().getSimpleName();
        int i = -1;
        Bundle bundle = dVar.get(-1);
        r11 = null;
        r11 = null;
        byte[] bArr = null;
        bArr = null;
        int i2 = 0;
        i = 1;
        if (bundle == null) {
            Log.e("MmsLib", "Failed to load carrier configuration values");
            i = 7;
            bArr = null;
            i2 = 0;
        } else if (!mo37523a(context, bundle)) {
            Log.e("MmsLib", "Failed to load PDU");
            i = 5;
            bArr = null;
            i2 = 0;
        } else {
            try {
                try {
                    try {
                        mVar.m29198a();
                        List<AbstractC4242b.AbstractC4243a> list = bVar.get(mVar.m29188d());
                        if (list.size() >= 1) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Trying ");
                            sb.append(list.size());
                            sb.append(" APNs");
                            sb.toString();
                            String a = pVar.mo8198a();
                            String b = pVar.mo8197b();
                            Iterator<AbstractC4242b.AbstractC4243a> it = list.iterator();
                            C4257j e5 = null;
                            bArr = null;
                            while (true) {
                                try {
                                    try {
                                        if (!it.hasNext()) {
                                            i = 1;
                                            break;
                                        }
                                        AbstractC4242b.AbstractC4243a next = it.next();
                                        String str2 = "Using APN [MMSC=" + next.mo8213a() + ", PROXY=" + next.mo8208d() + ", PORT=" + next.mo8209c() + "]";
                                        try {
                                            m37555a(mVar.m29187e(), next, mo37521a(next));
                                            byte[] a2 = mo37522a(context, mVar, next, bundle, a, b);
                                            try {
                                                if (!m37551a(a2, bundle)) {
                                                    next.mo8210b();
                                                    bArr = a2;
                                                } else {
                                                    throw new C4257j(0, "Invalid sending address");
                                                }
                                            } catch (C4257j e6) {
                                                e5 = e6;
                                                bArr = a2;
                                            }
                                        } catch (C4257j e7) {
                                            e5 = e7;
                                        }
                                    } catch (C4257j e8) {
                                        e3 = e8;
                                        Log.e("MmsLib", "MmsRequest: HTTP or network I/O failure", e3);
                                        i = 4;
                                        i2 = e3.m29209a();
                                        m37557a(context, i, bArr, i2);
                                    }
                                } catch (C4241a e9) {
                                    e = e9;
                                    Log.e("MmsLib", "MmsRequest: APN failure", e);
                                    i = 2;
                                    m37557a(context, i, bArr, i2);
                                } catch (C4259l e10) {
                                    e2 = e10;
                                    Log.e("MmsLib", "MmsRequest: MMS network acquiring failure", e2);
                                    i = 3;
                                    m37557a(context, i, bArr, i2);
                                } catch (Exception e11) {
                                    e4 = e11;
                                    Log.e("MmsLib", "MmsRequest: unexpected failure", e4);
                                    m37557a(context, i, bArr, i2);
                                }
                            }
                            if (e5 == null) {
                                mVar.m29183i();
                                i2 = 0;
                            } else {
                                throw e5;
                            }
                        } else {
                            throw new C4241a("No valid APN");
                        }
                    } finally {
                        mVar.m29183i();
                    }
                } catch (C4257j e12) {
                    e3 = e12;
                }
            } catch (C4241a e13) {
                e = e13;
            } catch (C4259l e14) {
                e2 = e14;
            } catch (Exception e15) {
                e4 = e15;
            }
        }
        m37557a(context, i, bArr, i2);
    }

    /* renamed from: a */
    public void m37552a(boolean z) {
        this.f9e = z;
    }

    /* renamed from: a */
    public boolean m37558a() {
        return this.f9e;
    }

    /* renamed from: a */
    public abstract boolean mo37525a(Context context, Intent intent, byte[] bArr);

    /* renamed from: a */
    public abstract boolean mo37523a(Context context, Bundle bundle);

    /* renamed from: a */
    public abstract byte[] mo37522a(Context context, C4260m mVar, AbstractC4242b.AbstractC4243a aVar, Bundle bundle, String str, String str2) throws C4257j;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f9e ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f5a);
        parcel.writeParcelable(this.f6b, 0);
        parcel.writeParcelable(this.f7c, 0);
    }
}
