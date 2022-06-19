package io.fabric.sdk.android.services.p068b;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
/* renamed from: io.fabric.sdk.android.services.b.p */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/p.class */
public class C1494p {

    /* renamed from: e */
    private static final Pattern f4091e = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: f */
    private static final String f4092f = Pattern.quote("/");

    /* renamed from: a */
    C1470c f4093a;

    /* renamed from: b */
    C1469b f4094b;

    /* renamed from: c */
    boolean f4095c;

    /* renamed from: d */
    C1493o f4096d;

    /* renamed from: g */
    private final ReentrantLock f4097g = new ReentrantLock();

    /* renamed from: h */
    private final C1496q f4098h;

    /* renamed from: i */
    private final boolean f4099i;

    /* renamed from: j */
    private final boolean f4100j;

    /* renamed from: k */
    private final Context f4101k;

    /* renamed from: l */
    private final String f4102l;

    /* renamed from: m */
    private final String f4103m;

    /* renamed from: n */
    private final Collection<AbstractC1459h> f4104n;

    /* renamed from: io.fabric.sdk.android.services.b.p$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/p$a.class */
    public enum EnumC1495a {
        WIFI_MAC_ADDRESS(1),
        BLUETOOTH_MAC_ADDRESS(2),
        FONT_TOKEN(53),
        ANDROID_ID(100),
        ANDROID_DEVICE_ID(101),
        ANDROID_SERIAL(102),
        ANDROID_ADVERTISING_ID(103);
        

        /* renamed from: h */
        public final int f4113h;

        EnumC1495a(int i) {
            this.f4113h = i;
        }
    }

    public C1494p(Context context, String str, String str2, Collection<AbstractC1459h> collection) {
        if (context != null) {
            if (str == null) {
                throw new IllegalArgumentException("appIdentifier must not be null");
            }
            if (collection == null) {
                throw new IllegalArgumentException("kits must not be null");
            }
            this.f4101k = context;
            this.f4102l = str;
            this.f4103m = str2;
            this.f4104n = collection;
            this.f4098h = new C1496q();
            this.f4093a = new C1470c(context);
            this.f4096d = new C1493o();
            this.f4099i = C1480i.m3500a(context, "com.crashlytics.CollectDeviceIdentifiers", true);
            if (!this.f4099i) {
                AbstractC1462k m3572g = C1449c.m3572g();
                m3572g.mo3552a("Fabric", "Device ID collection disabled for " + context.getPackageName());
            }
            this.f4100j = C1480i.m3500a(context, "com.crashlytics.CollectUserIdentifiers", true);
            if (this.f4100j) {
                return;
            }
            AbstractC1462k m3572g2 = C1449c.m3572g();
            m3572g2.mo3552a("Fabric", "User information collection disabled for " + context.getPackageName());
            return;
        }
        throw new IllegalArgumentException("appContext must not be null");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private String m3447a(SharedPreferences sharedPreferences) {
        this.f4097g.lock();
        try {
            String string = sharedPreferences.getString("crashlytics.installation.id", null);
            String str = string;
            if (string == null) {
                str = m3445a(UUID.randomUUID().toString());
                sharedPreferences.edit().putString("crashlytics.installation.id", str).commit();
            }
            this.f4097g.unlock();
            return str;
        } catch (Throwable th) {
            this.f4097g.unlock();
            throw th;
        }
    }

    /* renamed from: a */
    private String m3445a(String str) {
        return str == null ? null : f4091e.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    /* renamed from: a */
    private void m3446a(SharedPreferences sharedPreferences, String str) {
        this.f4097g.lock();
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String string = sharedPreferences.getString("crashlytics.advertising.id", null);
            if (TextUtils.isEmpty(string)) {
                sharedPreferences.edit().putString("crashlytics.advertising.id", str).commit();
            } else if (!string.equals(str)) {
                sharedPreferences.edit().remove("crashlytics.installation.id").putString("crashlytics.advertising.id", str).commit();
            }
        } finally {
            this.f4097g.unlock();
        }
    }

    /* renamed from: a */
    private void m3444a(Map<EnumC1495a, String> map, EnumC1495a enumC1495a, String str) {
        if (str != null) {
            map.put(enumC1495a, str);
        }
    }

    /* renamed from: b */
    private String m3441b(String str) {
        return str.replaceAll(f4092f, "");
    }

    /* renamed from: b */
    private void m3442b(SharedPreferences sharedPreferences) {
        C1469b m3431l = m3431l();
        if (m3431l != null) {
            m3446a(sharedPreferences, m3431l.f4048a);
        }
    }

    /* renamed from: m */
    private Boolean m3430m() {
        C1469b m3431l = m3431l();
        if (m3431l != null) {
            return Boolean.valueOf(m3431l.f4049b);
        }
        return null;
    }

    /* renamed from: a */
    public boolean m3448a() {
        return this.f4100j;
    }

    /* renamed from: b */
    public String m3443b() {
        String str = this.f4103m;
        String str2 = str;
        if (str == null) {
            SharedPreferences m3505a = C1480i.m3505a(this.f4101k);
            m3442b(m3505a);
            str2 = m3505a.getString("crashlytics.installation.id", null);
            if (str2 == null) {
                str2 = m3447a(m3505a);
            }
        }
        return str2;
    }

    /* renamed from: c */
    public String m3440c() {
        return this.f4102l;
    }

    /* renamed from: d */
    public String m3439d() {
        return m3438e() + "/" + m3437f();
    }

    /* renamed from: e */
    public String m3438e() {
        return m3441b(Build.VERSION.RELEASE);
    }

    /* renamed from: f */
    public String m3437f() {
        return m3441b(Build.VERSION.INCREMENTAL);
    }

    /* renamed from: g */
    public String m3436g() {
        return String.format(Locale.US, "%s/%s", m3441b(Build.MANUFACTURER), m3441b(Build.MODEL));
    }

    /* renamed from: h */
    public Map<EnumC1495a, String> m3435h() {
        HashMap hashMap = new HashMap();
        for (AbstractC1459h abstractC1459h : this.f4104n) {
            if (abstractC1459h instanceof AbstractC1488m) {
                for (Map.Entry<EnumC1495a, String> entry : ((AbstractC1488m) abstractC1459h).getDeviceIdentifiers().entrySet()) {
                    m3444a(hashMap, entry.getKey(), entry.getValue());
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: i */
    public String m3434i() {
        return this.f4098h.m3429a(this.f4101k);
    }

    /* renamed from: j */
    public Boolean m3433j() {
        return m3432k() ? m3430m() : null;
    }

    /* renamed from: k */
    protected boolean m3432k() {
        return this.f4099i && !this.f4096d.m3449b(this.f4101k);
    }

    /* renamed from: l */
    C1469b m3431l() {
        C1469b c1469b;
        synchronized (this) {
            if (!this.f4095c) {
                this.f4094b = this.f4093a.m3531a();
                this.f4095c = true;
            }
            c1469b = this.f4094b;
        }
        return c1469b;
    }
}
