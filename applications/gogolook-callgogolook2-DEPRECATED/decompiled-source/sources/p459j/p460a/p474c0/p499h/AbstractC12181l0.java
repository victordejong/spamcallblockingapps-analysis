package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.provider.Settings;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import gogolook.callgogolook2.R$string;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14108o4;
/* renamed from: j.a.c0.h.l0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/l0.class */
public abstract class AbstractC12181l0 {

    /* renamed from: d */
    public static final List<SubscriptionInfo> f27334d = new ArrayList();

    /* renamed from: a */
    public final Context f27335a = AbstractC11516a.m9413n().mo9412a();

    /* renamed from: b */
    public final TelephonyManager f27336b = (TelephonyManager) this.f27335a.getSystemService("phone");

    /* renamed from: c */
    public final int f27337c;

    /* renamed from: j.a.c0.h.l0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/l0$a.class */
    public interface AbstractC12182a {
        /* renamed from: a */
        SubscriptionInfo mo6885a();

        /* renamed from: a */
        void mo6884a(SubscriptionManager.OnSubscriptionsChangedListener onSubscriptionsChangedListener);

        /* renamed from: b */
        List<SubscriptionInfo> mo6883b();
    }

    /* renamed from: j.a.c0.h.l0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/l0$b.class */
    public static class C12183b extends AbstractC12181l0 implements AbstractC12182a {

        /* renamed from: e */
        public final SubscriptionManager f27338e = SubscriptionManager.from(AbstractC11516a.m9413n().mo9412a());

        public C12183b(int i) {
            super(i);
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: a */
        public int mo6881a(int i) {
            int i2 = i;
            if (i == -1) {
                i2 = mo6875f();
            }
            return i2;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: a */
        public int mo6880a(Intent intent, String str) {
            return m6882c(intent.getIntExtra(str, -1));
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: a */
        public int mo6879a(Cursor cursor, int i) {
            return m6882c(cursor.getInt(i));
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0.AbstractC12182a
        /* renamed from: a */
        public SubscriptionInfo mo6885a() {
            if (!C13878a3.m3200r()) {
                return null;
            }
            try {
                SubscriptionInfo activeSubscriptionInfo = this.f27338e.getActiveSubscriptionInfo(this.f27337c);
                if (activeSubscriptionInfo == null && C12153d0.m6992a("MessagingApp", 3)) {
                    C12153d0.m6991a("MessagingApp", "PhoneUtils.getActiveSubscriptionInfo(): empty sub info for " + this.f27337c);
                }
                return activeSubscriptionInfo;
            } catch (Exception e) {
                C12153d0.m6986b("MessagingApp", "PhoneUtils.getActiveSubscriptionInfo: system exception for " + this.f27337c, e);
                return null;
            }
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0.AbstractC12182a
        /* renamed from: a */
        public void mo6884a(SubscriptionManager.OnSubscriptionsChangedListener onSubscriptionsChangedListener) {
            this.f27338e.addOnSubscriptionsChangedListener(onSubscriptionsChangedListener);
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: b */
        public String mo6878b(boolean z) {
            if (z) {
                String b = AbstractC12181l0.m6894b(this.f27335a, this.f27337c);
                if (!TextUtils.isEmpty(b)) {
                    return b;
                }
            }
            SubscriptionInfo a = mo6885a();
            if (a != null) {
                String number = a.getNumber();
                if (TextUtils.isEmpty(number) && C12153d0.m6992a("MessagingApp", 3)) {
                    C12153d0.m6991a("MessagingApp", "SubscriptionInfo phone number for self is empty!");
                }
                return number;
            }
            C12153d0.m6981e("MessagingApp", "PhoneUtils.getSelfRawNumber: subInfo is null for " + this.f27337c);
            throw new IllegalStateException("No active subscription");
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0.AbstractC12182a
        /* renamed from: b */
        public List<SubscriptionInfo> mo6883b() {
            if (C13878a3.m3200r()) {
                try {
                    List<SubscriptionInfo> activeSubscriptionInfoList = this.f27338e.getActiveSubscriptionInfoList();
                    if (activeSubscriptionInfoList != null) {
                        return activeSubscriptionInfoList;
                    }
                } catch (SecurityException e) {
                    C13973d4.m2952a(e);
                }
            }
            return AbstractC12181l0.f27334d;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: c */
        public int mo6877c() {
            return C13878a3.m3200r() ? this.f27338e.getActiveSubscriptionInfoCount() : 0;
        }

        /* renamed from: c */
        public final int m6882c(int i) {
            int i2 = i;
            if (i < 0) {
                if (C13878a3.m3200r() && this.f27338e.getActiveSubscriptionInfoCount() <= 1) {
                    return mo6875f();
                }
                i2 = -1;
            }
            return i2;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: d */
        public String mo6876d() {
            SubscriptionInfo a = mo6885a();
            if (a == null) {
                return null;
            }
            CharSequence displayName = a.getDisplayName();
            if (!TextUtils.isEmpty(displayName)) {
                return displayName.toString();
            }
            CharSequence carrierName = a.getCarrierName();
            if (carrierName != null) {
                return carrierName.toString();
            }
            return null;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: f */
        public int mo6875f() {
            int defaultSmsSubscriptionId = SmsManager.getDefaultSmsSubscriptionId();
            int i = defaultSmsSubscriptionId;
            if (defaultSmsSubscriptionId < 0) {
                i = -1;
            }
            return i;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: g */
        public boolean mo6874g() {
            return mo6875f() != -1;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: h */
        public int[] mo6873h() {
            int i;
            int i2;
            SubscriptionInfo a = mo6885a();
            if (a != null) {
                i2 = a.getMcc();
                i = a.getMnc();
            } else {
                i = 0;
                i2 = 0;
            }
            return new int[]{i2, i};
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: i */
        public HashSet<String> mo6872i() {
            HashSet<String> hashSet = new HashSet<>();
            for (SubscriptionInfo subscriptionInfo : mo6883b()) {
                hashSet.add(AbstractC12181l0.m6895b(subscriptionInfo.getSubscriptionId()).m6897a(true));
            }
            return hashSet;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: j */
        public SmsManager mo6871j() {
            return SmsManager.getSmsManagerForSubscriptionId(this.f27337c);
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: l */
        public boolean mo6870l() {
            SubscriptionInfo a = mo6885a();
            boolean z = false;
            if (a == null) {
                C12153d0.m6987b("MessagingApp", "PhoneUtils.isDataRoamingEnabled: system return empty sub info for " + this.f27337c);
                return false;
            }
            if (a.getDataRoaming() != 0) {
                z = true;
            }
            return z;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: n */
        public boolean mo6869n() {
            boolean z = false;
            try {
                Method declaredMethod = this.f27336b.getClass().getDeclaredMethod("getDataEnabled", Integer.TYPE);
                declaredMethod.setAccessible(true);
                z = ((Boolean) declaredMethod.invoke(this.f27336b, Integer.valueOf(this.f27337c))).booleanValue();
            } catch (Exception e) {
                C12153d0.m6986b("MessagingApp", "PhoneUtil.isMobileDataEnabled: system api not found", e);
            }
            return z;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: o */
        public boolean mo6868o() {
            return this.f27338e.isNetworkRoaming(this.f27337c);
        }
    }

    /* renamed from: j.a.c0.h.l0$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/l0$c.class */
    public static class C12184c extends AbstractC12181l0 {

        /* renamed from: e */
        public final ConnectivityManager f27339e = (ConnectivityManager) this.f27335a.getSystemService("connectivity");

        public C12184c() {
            super(-1);
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: a */
        public int mo6881a(int i) {
            C12151d.m7012a(-1, i);
            return -1;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: a */
        public int mo6880a(Intent intent, String str) {
            return -1;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: a */
        public int mo6879a(Cursor cursor, int i) {
            return -1;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: b */
        public String mo6878b(boolean z) {
            if (z) {
                String b = AbstractC12181l0.m6894b(this.f27335a, -1);
                if (!TextUtils.isEmpty(b)) {
                    return b;
                }
            }
            return this.f27336b.getLine1Number();
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: c */
        public int mo6877c() {
            return m6867u() ? 1 : 0;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: d */
        public String mo6876d() {
            return this.f27336b.getNetworkOperatorName();
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: f */
        public int mo6875f() {
            C12151d.m7005a("PhoneUtils.getDefaultSmsSubscriptionId(): not supported before L MR1");
            return -1;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: g */
        public boolean mo6874g() {
            return true;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: h */
        public int[] mo6873h() {
            int i;
            int i2;
            Exception e;
            String simOperator = this.f27336b.getSimOperator();
            try {
                i2 = Integer.parseInt(simOperator.substring(0, 3));
                try {
                    i = Integer.parseInt(simOperator.substring(3));
                } catch (Exception e2) {
                    e = e2;
                    C12153d0.m6982d("MessagingApp", "PhoneUtils.getMccMnc: invalid string " + simOperator, e);
                    i = 0;
                    return new int[]{i2, i};
                }
            } catch (Exception e3) {
                e = e3;
                i2 = 0;
            }
            return new int[]{i2, i};
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: i */
        public HashSet<String> mo6872i() {
            HashSet<String> hashSet = new HashSet<>();
            hashSet.add(m6897a(true));
            return hashSet;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: j */
        public SmsManager mo6871j() {
            return SmsManager.getDefault();
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: l */
        public boolean mo6870l() {
            boolean z = false;
            if (Settings.Global.getInt(this.f27335a.getContentResolver(), "data_roaming", 0) != 0) {
                z = true;
            }
            return z;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: n */
        public boolean mo6869n() {
            boolean z = false;
            try {
                Method declaredMethod = this.f27339e.getClass().getDeclaredMethod("getMobileDataEnabled", new Class[0]);
                declaredMethod.setAccessible(true);
                z = ((Boolean) declaredMethod.invoke(this.f27339e, new Object[0])).booleanValue();
            } catch (Exception e) {
                C12153d0.m6986b("MessagingApp", "PhoneUtil.isMobileDataEnabled: system api not found", e);
            }
            return z;
        }

        @Override // p459j.p460a.p474c0.p499h.AbstractC12181l0
        /* renamed from: o */
        public boolean mo6868o() {
            return this.f27336b.isNetworkRoaming();
        }

        /* renamed from: u */
        public boolean m6867u() {
            boolean z = true;
            if (this.f27336b.getSimState() == 1) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: j.a.c0.h.l0$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/l0$d.class */
    public interface AbstractC12185d {
        /* renamed from: a */
        void mo6866a(int i);
    }

    static {
        new ArrayMap();
    }

    public AbstractC12181l0(int i) {
        this.f27337c = i;
    }

    /* renamed from: a */
    public static String m6898a(String str, String str2) {
        try {
            return String.format("%03d%03d", Integer.valueOf(Integer.parseInt(str)), Integer.valueOf(Integer.parseInt(str2)));
        } catch (NumberFormatException e) {
            C12153d0.m6981e("MessagingApp", "canonicalizeMccMnc: invalid mccmnc:" + str + " ," + str2);
            return str + str2;
        }
    }

    /* renamed from: a */
    public static String m6896a(int[] iArr) {
        return (iArr == null || iArr.length != 2) ? "000000" : String.format("%03d%03d", Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
    }

    /* renamed from: a */
    public static void m6900a(AbstractC12185d dVar) {
        if (C14017g4.m2804t()) {
            for (SubscriptionInfo subscriptionInfo : m6886t().m6888r().mo6883b()) {
                dVar.mo6866a(subscriptionInfo.getSubscriptionId());
            }
            return;
        }
        dVar.mo6866a(-1);
    }

    /* renamed from: a */
    public static boolean m6899a(String str) {
        return PhoneNumberUtils.isWellFormedSmsAddress(str) || C11832i.m8158b(str);
    }

    /* renamed from: b */
    public static AbstractC12181l0 m6895b(int i) {
        return AbstractC11516a.m9413n().mo9411a(i);
    }

    /* renamed from: b */
    public static String m6894b(Context context, int i) {
        String a = AbstractC12178k.m6913a(i).mo6907a(context.getString(R$string.mms_phone_number_pref_key), (String) null);
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        return null;
    }

    /* renamed from: t */
    public static AbstractC12181l0 m6886t() {
        return AbstractC11516a.m9413n().mo9411a(-1);
    }

    /* renamed from: a */
    public abstract int mo6881a(int i);

    /* renamed from: a */
    public abstract int mo6880a(Intent intent, String str);

    /* renamed from: a */
    public abstract int mo6879a(Cursor cursor, int i);

    /* renamed from: a */
    public String m6897a(boolean z) {
        String str;
        try {
            str = mo6878b(z);
        } catch (IllegalStateException e) {
            str = null;
        }
        return str == null ? "" : C14108o4.m2474l(str);
    }

    /* renamed from: b */
    public abstract String mo6878b(boolean z);

    /* renamed from: c */
    public abstract int mo6877c();

    /* renamed from: d */
    public abstract String mo6876d();

    /* renamed from: e */
    public String m6893e() {
        return Telephony.Sms.getDefaultSmsPackage(this.f27335a);
    }

    /* renamed from: f */
    public abstract int mo6875f();

    /* renamed from: g */
    public abstract boolean mo6874g();

    /* renamed from: h */
    public abstract int[] mo6873h();

    /* renamed from: i */
    public abstract HashSet<String> mo6872i();

    /* renamed from: j */
    public abstract SmsManager mo6871j();

    /* renamed from: k */
    public boolean m6892k() {
        boolean z = false;
        if (Settings.Global.getInt(this.f27335a.getContentResolver(), "airplane_mode_on", 0) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: l */
    public abstract boolean mo6870l();

    @Deprecated
    /* renamed from: m */
    public boolean m6891m() {
        return C12810o.m5236i();
    }

    /* renamed from: n */
    public abstract boolean mo6869n();

    /* renamed from: o */
    public abstract boolean mo6868o();

    /* renamed from: p */
    public boolean m6890p() {
        return this.f27336b.isSmsCapable();
    }

    /* renamed from: q */
    public boolean m6889q() {
        return this.f27336b.isVoiceCapable();
    }

    /* renamed from: r */
    public AbstractC12182a m6888r() {
        if (C14017g4.m2804t()) {
            return (AbstractC12182a) this;
        }
        C12151d.m7005a("PhoneUtils.toLMr1(): invalid OS version");
        return null;
    }
}
