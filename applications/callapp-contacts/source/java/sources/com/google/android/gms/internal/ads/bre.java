package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bre.class */
public final class bre {

    /* renamed from: h */
    private static final SparseArray<eht.C12508t.EnumC12511b> f44539h;

    /* renamed from: a */
    private final Context f44540a;

    /* renamed from: b */
    private final aqs f44541b;

    /* renamed from: c */
    private final TelephonyManager f44542c;

    /* renamed from: d */
    private final brb f44543d;

    /* renamed from: e */
    private final bqv f44544e;

    /* renamed from: f */
    private final zzf f44545f;

    /* renamed from: g */
    private eid f44546g;

    static {
        SparseArray<eht.C12508t.EnumC12511b> sparseArray = new SparseArray<>();
        f44539h = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), eht.C12508t.EnumC12511b.CONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.AUTHENTICATING.ordinal(), eht.C12508t.EnumC12511b.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), eht.C12508t.EnumC12511b.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), eht.C12508t.EnumC12511b.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), eht.C12508t.EnumC12511b.DISCONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.BLOCKED.ordinal(), eht.C12508t.EnumC12511b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), eht.C12508t.EnumC12511b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), eht.C12508t.EnumC12511b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), eht.C12508t.EnumC12511b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), eht.C12508t.EnumC12511b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), eht.C12508t.EnumC12511b.SUSPENDED);
        if (Build.VERSION.SDK_INT >= 17) {
            sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), eht.C12508t.EnumC12511b.CONNECTING);
        }
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), eht.C12508t.EnumC12511b.CONNECTING);
    }

    public bre(Context context, aqs aqsVar, brb brbVar, bqv bqvVar, zzf zzfVar) {
        this.f44540a = context;
        this.f44541b = aqsVar;
        this.f44543d = brbVar;
        this.f44544e = bqvVar;
        this.f44542c = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
        this.f44545f = zzfVar;
    }

    /* renamed from: a */
    public static /* synthetic */ eht.C12502r m17647a(bre breVar, Bundle bundle) {
        eht.C12502r.EnumC12504b enumC12504b;
        eht.C12502r.C12503a m14951c = eht.C12502r.m14951c();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            breVar.f44546g = eid.ENUM_TRUE;
        } else {
            breVar.f44546g = eid.ENUM_FALSE;
            if (i == 0) {
                m14951c.m14947a(eht.C12502r.EnumC12505c.CELL);
            } else if (i != 1) {
                m14951c.m14947a(eht.C12502r.EnumC12505c.NETWORKTYPE_UNSPECIFIED);
            } else {
                m14951c.m14947a(eht.C12502r.EnumC12505c.WIFI);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    enumC12504b = eht.C12502r.EnumC12504b.TWO_G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    enumC12504b = eht.C12502r.EnumC12504b.THREE_G;
                    break;
                case 13:
                    enumC12504b = eht.C12502r.EnumC12504b.LTE;
                    break;
                default:
                    enumC12504b = eht.C12502r.EnumC12504b.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            m14951c.m14948a(enumC12504b);
        }
        return m14951c.mo16259f();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.util.ArrayList m17649a(android.os.Bundle r4) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bre.m17649a(android.os.Bundle):java.util.ArrayList");
    }

    /* renamed from: b */
    private static eid m17642b(boolean z) {
        return z ? eid.ENUM_TRUE : eid.ENUM_FALSE;
    }

    /* renamed from: a */
    public final void m17645a(boolean z) {
        dbh.m16901a(this.f44541b.m18460a(), new brh(this, z), C13091zd.f50123f);
    }
}
