package p000;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.app.TaskStackBuilder;
import android.app.role.RoleManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.CallLog;
import android.provider.Settings;
import android.provider.Telephony;
import android.telecom.TelecomManager;
import android.telephony.PhoneNumberUtils;
import android.telephony.PhoneStateListener;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.PhoneConstants;
import com.kedlin.cca.core.call.Call;
import java.lang.reflect.Method;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import p000.n91;
import p000.q71;
import p000.r71;
import z7;
/* renamed from: fa1 */
/* loaded from: classes3-dex2jar.jar:fa1.class */
public final class fa1 {

    /* renamed from: a */
    public static final String f6580a = fa1.class.getCanonicalName() + ".EXTRA_TEXT_NOTIFICATION";

    /* renamed from: b */
    public static final String f6581b = fa1.class.getSimpleName();

    /* renamed from: c */
    public static Boolean f6582c;

    /* renamed from: d */
    public static String f6583d;

    /* renamed from: e */
    public static Integer f6584e;

    /* renamed from: fa1$a */
    /* loaded from: classes3-dex2jar.jar:fa1$a.class */
    public static /* synthetic */ class C1416a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6585a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[q71.EnumC1618e.values().length];
            f6585a = iArr;
            try {
                iArr[q71.EnumC1618e.CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6585a[q71.EnumC1618e.SMS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6585a[q71.EnumC1618e.MMS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: fa1$b */
    /* loaded from: classes3-dex2jar.jar:fa1$b.class */
    public interface AbstractC1417b {
        /* renamed from: a */
        void mo1823a(boolean z);

        /* renamed from: c */
        void mo1822c(String str);

        /* renamed from: e */
        void mo1821e(q71.EnumC1618e enumC1618e, i91 i91Var, String str, n91.C1485b c1485b);
    }

    /* renamed from: fa1$c */
    /* loaded from: classes3-dex2jar.jar:fa1$c.class */
    public interface AbstractC1418c {
        /* renamed from: b */
        Class mo1820b();

        /* renamed from: d */
        int mo1819d();

        /* renamed from: f */
        String mo1818f();
    }

    /* renamed from: fa1$d */
    /* loaded from: classes3-dex2jar.jar:fa1$d.class */
    public static final class C1419d {

        /* renamed from: a */
        public static final Uri f6586a = Uri.parse("content://mms/");

        /* renamed from: b */
        public static final Uri f6587b = Uri.parse("content://mms/part");

        /* renamed from: a */
        public static i91 m1817a(long j, int i) {
            Cursor query = fa1.m1840j().getContentResolver().query(Uri.parse(MessageFormat.format("content://mms/{0}/addr", Long.valueOf(j))), null, null, null, null);
            int i2 = i == 1 ? 137 : 151;
            String str = null;
            String str2 = null;
            if (query != null) {
                str2 = null;
                if (query.moveToFirst()) {
                    while (true) {
                        int columnIndex = query.getColumnIndex("type");
                        str2 = str;
                        if (columnIndex != -1) {
                            if (query.getInt(columnIndex) == i2) {
                                String string = query.getString(query.getColumnIndex("address"));
                                str2 = string;
                                if (!TextUtils.isEmpty(string)) {
                                    str2 = string;
                                    break;
                                }
                            } else {
                                str2 = str;
                            }
                        }
                        str = str2;
                        if (!query.moveToNext()) {
                            break;
                        }
                    }
                }
            }
            if (query != null) {
                query.close();
            }
            return C1420e.m1800o(str2);
        }

        /* renamed from: b */
        public static boolean m1816b(l81 l81Var) {
            Cursor query = fa1.m1840j().getContentResolver().query(f6587b, null, "mid=" + l81Var.f6923f, null, null);
            boolean z = false;
            if (query != null) {
                z = false;
                if (query.getCount() > 0) {
                    z = true;
                }
            }
            if (query != null) {
                query.close();
            }
            return z;
        }

        /* renamed from: c */
        public static void m1815c(long j) {
            fa1.m1840j().getContentResolver().delete(Uri.withAppendedPath(f6586a, String.valueOf(j)), null, null);
        }
    }

    /* renamed from: fa1$e */
    /* loaded from: classes3-dex2jar.jar:fa1$e.class */
    public static final class C1420e {

        /* renamed from: a */
        public static final String f6588a = "fa1$e";

        /* renamed from: b */
        public static PhoneStateListener f6589b;

        /* renamed from: d */
        public static int f6591d;

        /* renamed from: e */
        public static Class<?> f6592e;

        /* renamed from: c */
        public static ArrayList<Call> f6590c = new ArrayList<>();

        /* renamed from: f */
        public static final String f6593f = C1420e.class.getSimpleName() + ".EXTRA_LISTENER_INTNENT";

        /* renamed from: fa1$e$a */
        /* loaded from: classes3-dex2jar.jar:fa1$e$a.class */
        public static final class C1421a extends PhoneStateListener {
            @Override // android.telephony.PhoneStateListener
            public void onCallStateChanged(int i, String str) {
                String str2;
                super.onCallStateChanged(i, str);
                String str3 = str;
                if (TextUtils.isEmpty(str)) {
                    str3 = "";
                }
                boolean z = i != C1420e.f6591d;
                int unused = C1420e.f6591d = i;
                Call call = null;
                if (i == 0) {
                    C1420e.f6590c.clear();
                    str2 = TelephonyManager.EXTRA_STATE_IDLE;
                } else if (i == 1) {
                    if (!z) {
                        call = C1420e.m1807h(str3);
                    }
                    int m5722l = b91.m5722l(1);
                    if (z || call == null || call.m4383c() != m5722l) {
                        C1420e.f6590c.add(new Call(str3, b91.m5722l(1)));
                    }
                    str2 = TelephonyManager.EXTRA_STATE_RINGING;
                } else if (i == 2) {
                    String str4 = TelephonyManager.EXTRA_STATE_OFFHOOK;
                    Iterator it = C1420e.f6590c.iterator();
                    while (true) {
                        str2 = str4;
                        if (!it.hasNext()) {
                            break;
                        }
                        ((Call) it.next()).m4382d();
                    }
                } else {
                    str2 = null;
                }
                String str5 = "Current active callers: " + C1420e.f6590c;
                if (C1420e.f6592e == null || !z) {
                    return;
                }
                Intent intent = new Intent(fa1.m1839k(), C1420e.f6592e);
                intent.setAction("android.intent.action.PHONE_STATE");
                intent.putExtra(PhoneConstants.STATE_KEY, str2);
                intent.putExtra("incoming_number", str3);
                intent.putExtra(C1420e.f6593f, true);
                fa1.m1850P(intent);
            }
        }

        /* renamed from: e */
        public static void m1810e() {
            try {
                m1806i().cancelMissedCallsNotification();
            } catch (Throwable th) {
            }
        }

        /* renamed from: f */
        public static int m1809f() {
            return f6590c.size();
        }

        /* renamed from: g */
        public static Call m1808g(Intent intent) {
            if (intent != null) {
                String stringExtra = intent.getStringExtra("incoming_number");
                if (!TextUtils.isEmpty(stringExtra)) {
                    Call m1807h = m1807h(stringExtra);
                    if (m1807h != null) {
                        return m1807h;
                    }
                    String str = f6588a;
                    j91.m1517G(str, stringExtra + " came in intent, but not found in active calls");
                }
            }
            int size = f6590c.size() - 1;
            if (size >= 0) {
                return f6590c.get(size);
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x0010  */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.kedlin.cca.core.call.Call m1807h(java.lang.String r3) {
            /*
                java.util.ArrayList<com.kedlin.cca.core.call.Call> r0 = p000.fa1.C1420e.f6590c
                java.util.Iterator r0 = r0.iterator()
                r4 = r0
            L7:
                r0 = r4
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L38
                r0 = r4
                java.lang.Object r0 = r0.next()
                com.kedlin.cca.core.call.Call r0 = (com.kedlin.cca.core.call.Call) r0
                r5 = r0
                r0 = r5
                i91 r0 = r0.m4384b()
                java.lang.String r0 = r0.m1605i()
                r1 = r3
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L36
                r0 = r3
                r1 = r5
                i91 r1 = r1.m4384b()
                java.lang.String r1 = r1.toString()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L7
            L36:
                r0 = r5
                return r0
            L38:
                java.lang.String r0 = p000.fa1.C1420e.f6588a
                r4 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r5 = r0
                r0 = r5
                java.lang.String r1 = "Unable to find matching call object for "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r3
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r5
                java.lang.String r1 = r1.toString()
                p000.j91.m1517G(r0, r1)
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.fa1.C1420e.m1807h(java.lang.String):com.kedlin.cca.core.call.Call");
        }

        /* renamed from: i */
        public static ITelephony m1806i() {
            Context m1839k;
            TelephonyManager telephonyManager;
            ITelephony iTelephony = null;
            try {
                m1839k = fa1.m1839k();
            } catch (Throwable th) {
                if (Build.VERSION.SDK_INT > 28) {
                    j91.m1517G(f6588a, "unable to bind to ITelephony");
                } else {
                    j91.m1494v(th, f6588a + " :Unable to bind to ITelephony");
                }
            }
            if (m1839k == null || (telephonyManager = (TelephonyManager) m1839k.getSystemService("phone")) == null) {
                return null;
            }
            Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getITelephony", new Class[0]);
            declaredMethod.setAccessible(true);
            iTelephony = (ITelephony) declaredMethod.invoke(telephonyManager, new Object[0]);
            return iTelephony;
        }

        /* renamed from: j */
        public static int m1805j() {
            return f6591d;
        }

        /* renamed from: k */
        public static int m1804k(Intent intent) {
            if (intent != null && intent.hasExtra(PhoneConstants.STATE_KEY)) {
                String stringExtra = intent.getStringExtra(PhoneConstants.STATE_KEY);
                if (TelephonyManager.EXTRA_STATE_RINGING.equals(stringExtra)) {
                    return 1;
                }
                if (TelephonyManager.EXTRA_STATE_IDLE.equals(stringExtra)) {
                    return 0;
                }
                if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(stringExtra)) {
                    return 2;
                }
            }
            return f6591d;
        }

        /* renamed from: l */
        public static TelecomManager m1803l() {
            TelecomManager telecomManager = (TelecomManager) fa1.m1839k().getSystemService("telecom");
            Objects.requireNonNull(telecomManager, "No TelecomManager");
            return telecomManager;
        }

        /* renamed from: m */
        public static i91 m1802m(String str) {
            if (str.contains("?") || str.contains(PhoneConstants.APN_TYPE_ALL)) {
                return new i91(str.replaceAll("[\\?\\*]", "5"), 0, str);
            }
            return null;
        }

        /* renamed from: n */
        public static i91 m1801n(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            int m5724j = b91.m5724j();
            for (int i = 0; i < m5724j; i++) {
                i91 m1613a = i91.m1613a(str, b91.m5723k(i));
                if (m1613a != null) {
                    return m1613a;
                }
                if (!b91.m5715s()) {
                    return null;
                }
            }
            return null;
        }

        /* renamed from: o */
        public static i91 m1800o(String str) {
            if (b91.m5715s() && !TextUtils.isEmpty(str)) {
                int m5724j = b91.m5724j();
                for (int i = 0; i < m5724j; i++) {
                    i91 i91Var = new i91(str, i);
                    if (i91Var.m1594t()) {
                        return i91Var;
                    }
                }
            }
            return new i91(str, 0);
        }

        /* renamed from: p */
        public static String m1799p(String str) {
            if (str == null) {
                return "";
            }
            String replace = PhoneNumberUtils.stripSeparators(str).replace("+", "").replace(PhoneConstants.APN_TYPE_ALL, "");
            if (!TextUtils.isEmpty(replace)) {
                str = replace;
            }
            return str;
        }

        /* renamed from: q */
        public static void m1798q(Service service) {
            if (service == null || f6589b != null) {
                return;
            }
            b91.m5714t(service);
            f6592e = service.getClass();
            f6589b = new C1421a();
            TelephonyManager telephonyManager = (TelephonyManager) service.getSystemService("phone");
            f6591d = telephonyManager.getCallState();
            telephonyManager.listen(f6589b, 32);
        }

        /* renamed from: r */
        public static void m1797r(Service service) {
            if (service == null || f6589b == null) {
                return;
            }
            ((TelephonyManager) service.getSystemService("phone")).listen(f6589b, 0);
            f6589b = null;
            f6592e = null;
            f6590c.clear();
        }

        /* renamed from: s */
        public static void m1796s(String str) {
            if (m1807h(str) == null) {
                f6590c.add(new Call(str, 0));
            }
        }

        /* renamed from: t */
        public static void m1795t(long j) {
            ContentResolver contentResolver = fa1.m1840j().getContentResolver();
            Uri uri = CallLog.Calls.CONTENT_URI;
            contentResolver.delete(uri, "_ID=" + j, null);
        }

        /* renamed from: u */
        public static boolean m1794u(Intent intent) {
            if (intent == null || intent.getAction() == null) {
                return false;
            }
            if (!"android.intent.action.PHONE_STATE".equals(intent.getAction())) {
                return true;
            }
            if (!intent.hasExtra("incoming_number")) {
                return false;
            }
            int m1804k = m1804k(intent);
            if (m1804k == f6591d) {
                if (f6589b != null && !intent.hasExtra(f6593f)) {
                    f6589b.onCallStateChanged(m1804k, intent.getStringExtra("incoming_number"));
                }
                return intent.hasExtra(f6593f);
            }
            f6591d = m1804k;
            PhoneStateListener phoneStateListener = f6589b;
            if (phoneStateListener == null) {
                return true;
            }
            phoneStateListener.onCallStateChanged(m1804k, intent.getStringExtra("incoming_number"));
            return true;
        }
    }

    /* renamed from: fa1$f */
    /* loaded from: classes3-dex2jar.jar:fa1$f.class */
    public static final class C1422f {

        /* renamed from: a */
        public static final String f6594a = "fa1$f";

        /* renamed from: b */
        public static final String f6595b = fa1.class.getName() + ".SMS.ACTION_MESSAGE_DELIVERED";

        /* renamed from: c */
        public static final String f6596c = fa1.class.getName() + ".SMS.ACTION_MESSAGE_SENT";

        /* renamed from: d */
        public static final String f6597d = C1422f.class.getName() + ".EXTRA_MESSAGE_ID";

        /* renamed from: e */
        public static final Uri f6598e = Uri.parse("content://sms/");

        /* renamed from: f */
        public static final Uri f6599f = Uri.parse("content://sms/sent");

        /* renamed from: a */
        public static SmsMessage[] m1793a(Intent intent) {
            SmsMessage[] smsMessageArr;
            Bundle extras = intent.getExtras();
            SmsMessage[] smsMessageArr2 = null;
            try {
                Object[] objArr = (Object[]) extras.get("pdus");
                SmsMessage[] smsMessageArr3 = new SmsMessage[objArr.length];
                int i = 0;
                while (true) {
                    smsMessageArr2 = smsMessageArr3;
                    smsMessageArr = smsMessageArr3;
                    if (i >= objArr.length) {
                        break;
                    }
                    smsMessageArr3[i] = SmsMessage.createFromPdu((byte[]) objArr[i]);
                    i++;
                }
            } catch (Throwable th) {
                j91.m1494v(th, f6594a + " :fail");
                smsMessageArr = smsMessageArr2;
            }
            return smsMessageArr;
        }

        /* renamed from: b */
        public static i91 m1792b(Intent intent) {
            SmsMessage smsMessage;
            SmsMessage[] m1793a = m1793a(intent);
            String str = null;
            if (m1793a.length == 0 || (smsMessage = m1793a[0]) == null) {
                return null;
            }
            try {
                str = smsMessage.getOriginatingAddress();
            } catch (Throwable th) {
            }
            String str2 = str;
            if (str == null) {
                try {
                    str2 = smsMessage.getDisplayOriginatingAddress();
                } catch (Throwable th2) {
                    str2 = str;
                }
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = "";
            }
            return C1420e.m1800o(str3);
        }

        /* renamed from: c */
        public static void m1791c(Intent intent, n91.C1485b c1485b) {
            if (!fa1.m1829u()) {
                return;
            }
            SmsMessage[] m1793a = m1793a(intent);
            if (m1793a.length == 0) {
                j91.m1517G(f6594a, "No messages found");
                return;
            }
            l81 l81Var = new l81();
            l81Var.f6928l = "";
            String originatingAddress = m1793a[0].getOriginatingAddress();
            String str = originatingAddress;
            if (originatingAddress == null) {
                str = m1793a[0].getDisplayOriginatingAddress();
            }
            l81Var.f6929m = C1420e.m1800o(str);
            l81Var.f6935s = 0L;
            l81Var.f6931o = EnumSet.of(q71.EnumC1618e.SMS);
            l81Var.f6930n = 1;
            l81Var.f6923f = 0L;
            l81Var.f6932p = c1485b.f7082a;
            l81Var.f6926j = c1485b.f7083b;
            l81Var.f6927k = c1485b.f7085d;
            l81Var.f6925h = c1485b.f7086f;
            l81Var.m1365E();
            l81Var.m1363F();
            l81Var.m1364E0();
            for (SmsMessage smsMessage : m1793a) {
                l81Var.f6928l += smsMessage.getDisplayMessageBody() + " ";
            }
            if (!l81Var.f6926j) {
                ia1.m1588b(fa1.m1840j(), l81Var);
            }
            l81Var.mo148z();
        }

        /* renamed from: d */
        public static void m1790d(long j) {
            fa1.m1840j().getContentResolver().delete(Uri.withAppendedPath(f6598e, String.valueOf(j)), null, null);
        }

        /* renamed from: e */
        public static long m1789e(i91 i91Var, String str, long j, long j2) {
            if (!TextUtils.isEmpty(str.trim()) && !i91Var.m1600n()) {
                l81 l81Var = new l81();
                l81Var.f6928l = str;
                l81Var.f6929m = i91Var;
                l81Var.f6925h = i91Var.toString();
                l81Var.f6931o = EnumSet.of(q71.EnumC1618e.SMS);
                l81Var.f6930n = 6;
                l81Var.f6923f = 0L;
                l81Var.m1363F();
                l81Var.m1364E0();
                l81Var.f6939w = j;
                l81Var.f6940x = j2;
                l81Var.m1311z0();
                Application m1840j = fa1.m1840j();
                ia1.m1588b(m1840j, l81Var);
                l81Var.mo148z();
                String valueOf = String.valueOf(l81Var.f6922d);
                Intent intent = new Intent(f6595b);
                Bundle bundle = new Bundle();
                String str2 = f6597d;
                bundle.putString(str2, valueOf);
                intent.putExtras(bundle);
                Intent intent2 = new Intent(f6596c);
                Bundle bundle2 = new Bundle();
                bundle2.putString(str2, valueOf);
                intent2.putExtras(bundle2);
                PendingIntent broadcast = PendingIntent.getBroadcast(m1840j, 0, intent2, 134217728);
                PendingIntent broadcast2 = PendingIntent.getBroadcast(m1840j, 0, intent, 134217728);
                SmsManager smsManager = SmsManager.getDefault();
                ArrayList<String> divideMessage = smsManager.divideMessage(str);
                if (divideMessage.size() > 1) {
                    ArrayList<PendingIntent> arrayList = new ArrayList<>();
                    arrayList.add(broadcast);
                    ArrayList<PendingIntent> arrayList2 = new ArrayList<>();
                    arrayList2.add(broadcast2);
                    smsManager.sendMultipartTextMessage(i91Var.toString(), null, divideMessage, arrayList, arrayList2);
                } else {
                    smsManager.sendTextMessage(i91Var.toString(), null, str, broadcast, broadcast2);
                }
                return l81Var.f6937u;
            }
            return -1L;
        }
    }

    /* renamed from: fa1$g */
    /* loaded from: classes3-dex2jar.jar:fa1$g.class */
    public static final class C1423g {

        /* renamed from: a */
        public static final Uri f6600a = Uri.parse("content://mms-sms/");
    }

    @TargetApi(23)
    /* renamed from: A */
    public static boolean m1865A(Activity activity) {
        RoleManager roleManager;
        if (Build.VERSION.SDK_INT < 29 || (roleManager = (RoleManager) activity.getSystemService("role")) == null || !roleManager.isRoleAvailable("android.app.role.DIALER") || roleManager.isRoleHeld("android.app.role.DIALER")) {
            return m1864B(activity);
        }
        activity.startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.DIALER"), 4342);
        return true;
    }

    @TargetApi(23)
    /* renamed from: B */
    public static boolean m1864B(Activity activity) {
        TelecomManager telecomManager;
        if (!m1847c() || m1830t()) {
            return true;
        }
        Context m1839k = m1839k();
        if (m1839k == null || (telecomManager = (TelecomManager) m1839k.getSystemService("telecom")) == null) {
            return false;
        }
        r71.EnumC1638a.f7968m0.m681o(telecomManager.getDefaultDialerPackage());
        try {
            Intent m1836n = m1836n(m1839k, m1839k.getPackageName());
            if (activity != null) {
                activity.startActivityForResult(m1836n, 4342);
            } else {
                m1836n.setFlags(268435456);
                m1839k.startActivity(m1836n);
            }
            return true;
        } catch (Exception e) {
            j91.m1505k(f6581b, "Strange phone, looks like changed OS by manufacturer");
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: C */
    public static void m1863C(Activity activity) {
        if (!m1829u()) {
            Application m1840j = m1840j();
            if (!(m1840j instanceof AbstractC1418c)) {
                return;
            }
            r71.EnumC1638a.f7965l0.m681o(Telephony.Sms.getDefaultSmsPackage(m1840j()));
            Intent m1835o = m1835o(m1840j.getApplicationContext(), ((AbstractC1418c) m1840j).mo1818f());
            if (activity != null) {
                activity.startActivityForResult(m1835o, 4242);
                return;
            }
            m1835o.setFlags(268435456);
            m1840j.startActivity(m1835o);
        }
    }

    /* renamed from: D */
    public static void m1862D(q71.EnumC1618e enumC1618e, i91 i91Var, n91.C1485b c1485b) {
        String str;
        String str2 = TextUtils.isEmpty(c1485b.f7086f) ? null : c1485b.f7086f;
        String str3 = str2;
        if (str2 == null) {
            q81 q81Var = new q81();
            Cursor m875W = q81Var.m875W(i91Var);
            String str4 = str2;
            if (m875W != null) {
                str4 = str2;
                if (m875W.moveToFirst()) {
                    q81Var.m881Q(m875W);
                    str4 = q81Var.f7779f;
                }
            }
            str3 = str4;
            if (m875W != null) {
                m875W.close();
                str3 = str4;
            }
        }
        String str5 = str3;
        if (TextUtils.isEmpty(str3)) {
            x81 x81Var = new x81();
            Cursor m162K = x81Var.m162K(i91Var);
            String str6 = str3;
            if (m162K != null) {
                str6 = str3;
                if (m162K.moveToFirst()) {
                    while (true) {
                        x81Var.m164I(m162K);
                        if (TextUtils.isEmpty(x81Var.f8636f)) {
                            if (!m162K.moveToNext()) {
                                str6 = str3;
                                break;
                            }
                        } else {
                            str6 = x81Var.f8636f;
                            break;
                        }
                    }
                }
            }
            str5 = str6;
            if (m162K != null) {
                m162K.close();
                str5 = str6;
            }
        }
        String str7 = str5;
        if (str5 == null) {
            u81 u81Var = new u81();
            u81Var.m413F(i91Var, null);
            str7 = u81Var.f8288d;
        }
        String str8 = str7;
        if (TextUtils.isEmpty(str7)) {
            str8 = i91Var.m1601m();
        }
        c1485b.f7086f = str8;
        if (!r71.EnumC1638a.f7942d.m695a()) {
            c1485b.f7083b = false;
            c1485b.f7082a = n91.EnumC1484a.NONE;
        }
        int i = C1416a.f6585a[enumC1618e.ordinal()];
        if (i != 1) {
            str = i != 2 ? i != 3 ? "" : m1840j().getString(i61.app_msg_blocked_mms, new Object[]{str8}) : m1840j().getString(i61.app_msg_blocked_sms, new Object[]{str8});
        } else {
            str = m1840j().getString(c1485b.f7083b ? i61.app_msg_blocked_call : i61.app_msg_missed_call, new Object[]{str8});
        }
        m1861E(enumC1618e, i91Var, str, c1485b);
    }

    /* renamed from: E */
    public static void m1861E(q71.EnumC1618e enumC1618e, i91 i91Var, String str, n91.C1485b c1485b) {
        Application m1840j = m1840j();
        if (!(m1840j instanceof AbstractC1417b)) {
            return;
        }
        r71.m729G(enumC1618e, c1485b.f7083b);
        ((AbstractC1417b) m1840j).mo1821e(enumC1618e, i91Var, str, c1485b);
    }

    @TargetApi(19)
    /* renamed from: F */
    public static void m1860F() {
        l81 l81Var;
        Cursor m1339X;
        if (m1829u() && (m1339X = (l81Var = new l81()).m1339X(true)) != null) {
            if (!m1339X.moveToFirst()) {
                m1339X.close();
                return;
            }
            Application m1840j = m1840j();
            if (!(m1840j instanceof AbstractC1418c)) {
                return;
            }
            NotificationManager notificationManager = (NotificationManager) m1840j.getSystemService("notification");
            l81Var.m1344S(m1339X);
            z7.e eVar = new z7.e(m1840j, "cca_message");
            eVar.r(l81Var.f6925h);
            EnumSet<q71.EnumC1618e> enumSet = l81Var.f6931o;
            q71.EnumC1618e enumC1618e = q71.EnumC1618e.MMS;
            eVar.q(enumSet.contains(enumC1618e) ? m1840j.getString(i61.msg_multimedia_message) : l81Var.f6928l);
            eVar.I(l81Var.f6931o.contains(enumC1618e) ? m1840j.getString(i61.msg_multimedia_message) : l81Var.f6928l);
            eVar.G(Settings.System.DEFAULT_NOTIFICATION_URI);
            AbstractC1418c abstractC1418c = (AbstractC1418c) m1840j;
            eVar.F(abstractC1418c.mo1819d());
            if (m1339X.getCount() > 1) {
                eVar.z(m1339X.getCount());
                z7.f fVar = new z7.f();
                do {
                    l81Var.m1344S(m1339X);
                    StringBuilder sb = new StringBuilder();
                    sb.append(l81Var.f6925h);
                    sb.append(": ");
                    sb.append(l81Var.f6931o.contains(q71.EnumC1618e.MMS) ? m1840j.getString(i61.msg_multimedia_message) : l81Var.f6928l);
                    fVar.l(sb.toString());
                } while (m1339X.moveToNext());
                eVar.H(fVar);
            }
            m1339X.close();
            Class<?> mo1820b = abstractC1418c.mo1820b();
            Intent intent = new Intent(m1840j, mo1820b);
            intent.setAction("android.intent.action.VIEW");
            intent.putExtra(f6580a, true);
            TaskStackBuilder create = TaskStackBuilder.create(m1840j);
            create.addParentStack(mo1820b);
            create.addNextIntent(intent);
            eVar.p(create.getPendingIntent(0, 134217728));
            notificationManager.notify(1000, eVar.c());
            r71.m729G(q71.EnumC1618e.SMS, false);
        }
    }

    /* renamed from: G */
    public static void m1859G() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(Uri.parse("https://play.google.com/store/apps/details?id=com.callcontrolhome"));
        Application m1292a = lm1.m1292a();
        if (m1292a == null) {
            return;
        }
        m1292a.startActivity(intent);
    }

    /* renamed from: H */
    public static void m1858H(long j, q71.EnumC1618e enumC1618e) {
        int i = C1416a.f6585a[enumC1618e.ordinal()];
        if (i == 1) {
            C1420e.m1795t(j);
        } else if (i == 2) {
            C1422f.m1790d(j);
        } else if (i != 3) {
        } else {
            C1419d.m1815c(j);
        }
    }

    /* renamed from: I */
    public static boolean m1857I(Intent intent, boolean z) {
        if (!z || intent == null || !"android.intent.action.PHONE_STATE".equals(intent.getAction()) || C1420e.m1805j() != 0) {
            return false;
        }
        try {
            Application m1840j = m1840j();
            Intent launchIntentForPackage = m1840j.getBaseContext().getPackageManager().getLaunchIntentForPackage(m1840j.getBaseContext().getPackageName());
            launchIntentForPackage.addFlags(67108864);
            m1840j.startActivity(launchIntentForPackage);
            return true;
        } catch (Throwable th) {
            return true;
        }
    }

    @TargetApi(23)
    /* renamed from: J */
    public static void m1856J() {
        m1855K(null);
    }

    @TargetApi(23)
    /* renamed from: K */
    public static void m1855K(Activity activity) {
        Context m1839k = m1839k();
        if (m1839k == null) {
            return;
        }
        String m687i = r71.EnumC1638a.f7968m0.m687i();
        if (!m1830t()) {
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 29 || TextUtils.isEmpty(m687i) || m687i.equals(m1839k.getPackageName())) {
            if (i < 24) {
                return;
            }
            Intent intent = new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS");
            intent.setFlags(268435456);
            if (intent.resolveActivity(m1839k.getPackageManager()) == null) {
                return;
            }
            m1839k.startActivity(intent);
        } else if (((TelecomManager) m1839k.getSystemService("telecom")) == null) {
        } else {
            Intent m1836n = m1836n(m1839k, m687i);
            m1836n.setFlags(268435456);
            if (activity != null) {
                activity.startActivityForResult(m1836n, 4343);
            } else {
                m1839k.startActivity(m1836n);
            }
        }
    }

    @Deprecated
    /* renamed from: L */
    public static void m1854L(Application application) {
        lm1.m1291b(application);
    }

    @TargetApi(29)
    /* renamed from: M */
    public static boolean m1853M(Activity activity) {
        RoleManager roleManager = (RoleManager) activity.getSystemService("role");
        if (roleManager == null || !roleManager.isRoleAvailable("android.app.role.CALL_SCREENING") || roleManager.isRoleHeld("android.app.role.CALL_SCREENING")) {
            return false;
        }
        activity.startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.CALL_SCREENING"), 4342);
        return true;
    }

    /* renamed from: N */
    public static boolean m1852N() {
        m1832r().booleanValue();
        return true;
    }

    /* renamed from: O */
    public static void m1851O(Context context, Intent intent) {
        if (r71.m709m().length == 0 || !r71.EnumC1638a.f7907L0.m695a()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            g8.o(context, intent);
        } else {
            context.startService(intent);
        }
    }

    /* renamed from: P */
    public static void m1850P(Intent intent) {
        m1851O(m1839k(), intent);
    }

    /* renamed from: a */
    public static boolean m1849a() {
        Application m1292a = lm1.m1292a();
        if (m1292a == null) {
            return false;
        }
        return m1292a.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le");
    }

    /* renamed from: b */
    public static void m1848b(String str, Activity activity) {
        if (TextUtils.isEmpty(str) || activity == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:" + Uri.encode(str)));
        intent.putExtra("finishActivityOnSaveCompleted", true);
        intent.addFlags(268435456);
        activity.startActivity(intent);
    }

    /* renamed from: c */
    public static boolean m1847c() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @TargetApi(29)
    /* renamed from: d */
    public static boolean m1846d() {
        Context m1839k;
        if (m1845e() && (m1839k = m1839k()) != null) {
            RoleManager roleManager = (RoleManager) m1839k.getSystemService("role");
            boolean z = false;
            if (roleManager != null) {
                z = false;
                if (roleManager.isRoleAvailable("android.app.role.CALL_SCREENING")) {
                    z = true;
                }
            }
            return z;
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m1845e() {
        return Build.VERSION.SDK_INT >= 29;
    }

    /* renamed from: f */
    public static void m1844f() {
        ((NotificationManager) m1840j().getSystemService("notification")).cancel(1000);
    }

    /* renamed from: g */
    public static Intent m1843g(Intent intent) {
        if (Build.VERSION.SDK_INT <= 19) {
            return intent;
        }
        List<ResolveInfo> queryIntentServices = m1839k().getPackageManager().queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.size() != 1) {
            return null;
        }
        ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
        ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
        Intent intent2 = new Intent(intent);
        intent2.setComponent(componentName);
        return intent2;
    }

    @TargetApi(26)
    /* renamed from: h */
    public static void m1842h(String str, String str2, boolean z) {
        NotificationManager notificationManager;
        Context m1839k = m1839k();
        if (m1839k == null || (notificationManager = (NotificationManager) m1839k.getSystemService("notification")) == null || notificationManager.getNotificationChannel(str) != null) {
            return;
        }
        NotificationChannel notificationChannel = new NotificationChannel(str, str2, 3);
        notificationChannel.setLightColor(-16776961);
        notificationChannel.setLockscreenVisibility(0);
        notificationChannel.setShowBadge(false);
        if (!z) {
            notificationChannel.setSound(null, null);
        }
        NotificationManager notificationManager2 = (NotificationManager) m1839k.getSystemService("notification");
        if (notificationManager2 == null) {
            return;
        }
        notificationManager2.createNotificationChannel(notificationChannel);
    }

    @TargetApi(26)
    /* renamed from: i */
    public static void m1841i(String str) {
        NotificationManager notificationManager;
        Context m1839k = m1839k();
        if (m1839k == null || (notificationManager = (NotificationManager) m1839k.getSystemService("notification")) == null || notificationManager.getNotificationChannel(str) == null) {
            return;
        }
        notificationManager.deleteNotificationChannel(str);
    }

    @Deprecated
    /* renamed from: j */
    public static Application m1840j() {
        return lm1.m1292a();
    }

    /* renamed from: k */
    public static Context m1839k() {
        Application m1292a = lm1.m1292a();
        if (m1292a == null) {
            return null;
        }
        return m1292a.getApplicationContext();
    }

    /* renamed from: l */
    public static String m1838l() {
        String str = f6583d;
        if (str != null) {
            return str;
        }
        f6583d = "";
        Application m1840j = m1840j();
        if (m1840j == null) {
            return f6583d;
        }
        try {
            f6583d = m1840j.getPackageManager().getPackageInfo(m1840j.getPackageName(), 0).versionName;
        } catch (Throwable th) {
            j91.m1516H(f6581b, "Unable to get application name", th);
            j91.m1495u(th);
        }
        return f6583d;
    }

    /* renamed from: m */
    public static Integer m1837m() {
        Integer num = f6584e;
        if (num != null) {
            return num;
        }
        f6584e = -1;
        Application m1840j = m1840j();
        if (m1840j == null) {
            return f6584e;
        }
        try {
            f6584e = Integer.valueOf(m1840j.getPackageManager().getPackageInfo(m1840j.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            j91.m1516H(f6581b, "Unable to get application name", th);
            j91.m1495u(th);
        }
        return f6584e;
    }

    @TargetApi(23)
    /* renamed from: n */
    public static Intent m1836n(Context context, String str) {
        Intent intent = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
        intent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", str);
        return intent;
    }

    @TargetApi(23)
    /* renamed from: o */
    public static Intent m1835o(Context context, String str) {
        Intent intent = new Intent("android.provider.Telephony.ACTION_CHANGE_DEFAULT");
        intent.putExtra("package", str);
        return intent;
    }

    /* renamed from: p */
    public static String m1834p() {
        return ka1.m1410n(b91.m5727g() + UUID.randomUUID().toString());
    }

    /* renamed from: q */
    public static boolean m1833q() {
        return ((r71.EnumC1638a.f7913O0.m695a() && r71.EnumC1638a.f7975o1.m695a()) || !r71.EnumC1638a.f7909M0.m695a()) && r71.EnumC1638a.f7915P0.m695a();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0054 -> B:22:0x0050). Please submit an issue!!! */
    /* renamed from: r */
    public static Boolean m1832r() {
        Boolean bool = f6582c;
        if (bool != null) {
            return bool;
        }
        f6582c = Boolean.FALSE;
        PackageManager packageManager = m1840j().getPackageManager();
        if (packageManager != null) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(m1840j().getPackageName(), 0);
                boolean z = false;
                if (packageInfo != null) {
                    ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                    z = false;
                    if (applicationInfo != null) {
                        z = false;
                        if ((applicationInfo.flags & 2) != 0) {
                            z = true;
                        }
                    }
                }
                f6582c = Boolean.valueOf(z);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return f6582c;
    }

    /* renamed from: s */
    public static boolean m1831s(int i, int i2, Intent intent) {
        return i == 4242 && i2 == -1;
    }

    /* renamed from: t */
    public static boolean m1830t() {
        Context m1839k;
        TelecomManager telecomManager;
        if (!m1847c() || (m1839k = m1839k()) == null || (telecomManager = (TelecomManager) m1839k.getSystemService("telecom")) == null) {
            return false;
        }
        return m1839k.getPackageName().equals(telecomManager.getDefaultDialerPackage());
    }

    @SuppressLint({"NewApi"})
    /* renamed from: u */
    public static boolean m1829u() {
        Application m1840j = m1840j();
        boolean z = false;
        if (m1840j instanceof AbstractC1418c) {
            String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(m1840j());
            z = false;
            if (defaultSmsPackage != null) {
                z = false;
                if (defaultSmsPackage.equals(((AbstractC1418c) m1840j).mo1818f())) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: v */
    public static boolean m1828v(Intent intent) {
        return intent.getBooleanExtra(f6580a, false);
    }

    /* renamed from: w */
    public static boolean m1827w() {
        return ((ConnectivityManager) m1840j().getSystemService("connectivity")).getActiveNetworkInfo() != null;
    }

    /* renamed from: x */
    public static boolean m1826x() {
        return m1827w() && r71.EnumC1638a.f7905K0.m695a() && r71.EnumC1638a.f7953h.m695a() && r71.EnumC1638a.f7950g.m695a() && r71.EnumC1638a.f7942d.m695a();
    }

    /* renamed from: y */
    public static boolean m1825y(int i, int i2, Intent intent) {
        return i == 4243 && i2 == -1;
    }

    @TargetApi(29)
    /* renamed from: z */
    public static boolean m1824z() {
        Context m1839k = m1839k();
        if (m1839k == null) {
            return false;
        }
        RoleManager roleManager = (RoleManager) m1839k.getSystemService("role");
        boolean z = false;
        if (roleManager != null) {
            z = false;
            if (roleManager.isRoleAvailable("android.app.role.CALL_SCREENING")) {
                z = false;
                if (roleManager.isRoleHeld("android.app.role.CALL_SCREENING")) {
                    z = true;
                }
            }
        }
        return z;
    }
}
