package p000;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* JADX WARN: Init of enum F can be incorrect */
/* JADX WARN: Init of enum G can be incorrect */
/* JADX WARN: Init of enum H can be incorrect */
/* JADX WARN: Init of enum I can be incorrect */
/* JADX WARN: Init of enum J can be incorrect */
/* JADX WARN: Init of enum K can be incorrect */
/* JADX WARN: Init of enum L can be incorrect */
@TargetApi(23)
/* renamed from: ta1 */
/* loaded from: classes3-dex2jar.jar:ta1.class */
public enum ta1 {
    READ_SMS("android.permission.READ_SMS"),
    SEND_SMS("android.permission.SEND_SMS"),
    BLUETOOTH("android.permission.BLUETOOTH"),
    BLUETOOTH_ADMIN("android.permission.BLUETOOTH_ADMIN"),
    ACCESS_COARSE_LOCATION("android.permission.ACCESS_COARSE_LOCATION"),
    ACCESS_FINE_LOCATION("android.permission.ACCESS_FINE_LOCATION"),
    CHANGE_WIFI_STATE("android.permission.CHANGE_WIFI_STATE"),
    ACCESS_WIFI_STATE("android.permission.ACCESS_WIFI_STATE"),
    WIFI_MULTICAST("android.permission.CHANGE_WIFI_MULTICAST_STATE"),
    RECEIVE_MMS("android.permission.RECEIVE_MMS"),
    RECEIVE_SMS("android.permission.RECEIVE_SMS"),
    CALL_PHONE("android.permission.CALL_PHONE"),
    ANSWER_PHONE_CALLS(Build.VERSION.SDK_INT < 26 ? "" : "android.permission.ANSWER_PHONE_CALLS", new va1() { // from class: ta1.a
        @Override // p000.va1
        /* renamed from: a */
        public boolean mo341a(ta1 ta1Var) {
            return Build.VERSION.SDK_INT < 26 || super.mo341a(ta1Var);
        }

        @Override // p000.va1
        /* renamed from: b */
        public void mo340b(ta1[] ta1VarArr, Activity activity, int i) {
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            super.mo340b(ta1VarArr, activity, i);
        }
    }),
    READ_PHONE_STATE("android.permission.READ_PHONE_STATE"),
    WRITE_CALL_LOG("android.permission.WRITE_CALL_LOG"),
    PROCESS_OUTGOING_CALLS("android.permission.PROCESS_OUTGOING_CALLS"),
    READ_CALL_LOG("android.permission.READ_CALL_LOG"),
    READ_CONTACTS("android.permission.READ_CONTACTS"),
    WRITE_CONTACTS("android.permission.WRITE_CONTACTS"),
    READ_EXTERNAL_STORAGE("android.permission.READ_EXTERNAL_STORAGE"),
    WRITE_EXTERNAL_STORAGE("android.permission.WRITE_EXTERNAL_STORAGE"),
    CHANGE_NETWORK_STATE("android.permission.CHANGE_NETWORK_STATE"),
    WRITE_SETTINGS("android.permission.WRITE_SETTINGS", new va1() { // from class: ta1.b
        @Override // p000.va1
        /* renamed from: a */
        public boolean mo341a(ta1 ta1Var) {
            return Settings.System.canWrite(lm1.m1292a());
        }

        @Override // p000.va1
        /* renamed from: b */
        public void mo340b(ta1[] ta1VarArr, Activity activity, int i) {
            m339c("android.settings.action.MANAGE_WRITE_SETTINGS", i, activity);
        }
    }),
    SYSTEM_ALERT_WINDOW("android.permission.SYSTEM_ALERT_WINDOW", new va1() { // from class: ta1.c
        @Override // p000.va1
        /* renamed from: a */
        public boolean mo341a(ta1 ta1Var) {
            return Settings.canDrawOverlays(lm1.m1292a());
        }

        @Override // p000.va1
        /* renamed from: b */
        public void mo340b(ta1[] ta1VarArr, Activity activity, int i) {
            m339c("android.settings.action.MANAGE_OVERLAY_PERMISSION", i, activity);
        }
    }),
    GROUP_WIFI(r0, r0, r0, r0, r0),
    GROUP_SMS(r0, r0, r0, r0),
    GROUP_PHONE(r0, r0, r0, r0, r0),
    GROUP_STORAGE(r0, r0),
    GROUP_CONTACTS(r0, r0),
    GROUP_BLUETOOTH(r0, r0, r0),
    GROUP_CRITICAL(r0, r0);
    

    /* renamed from: a */
    public String f8199a;

    /* renamed from: b */
    public ta1[] f8200b;

    /* renamed from: c */
    public va1 f8201c;

    /* renamed from: d */
    public WeakReference<Object> f8202d;

    /* renamed from: f */
    public HashSet<WeakReference<AbstractC1663e>> f8203f;

    /* renamed from: ta1$d */
    /* loaded from: classes3-dex2jar.jar:ta1$d.class */
    public class C1662d extends va1 {
        public C1662d(ta1 ta1Var) {
        }
    }

    /* renamed from: ta1$e */
    /* loaded from: classes3-dex2jar.jar:ta1$e.class */
    public interface AbstractC1663e {
        /* renamed from: a */
        void mo523a(ta1 ta1Var);
    }

    static {
        new ta1("android.permission.READ_SMS");
        new ta1("android.permission.SEND_SMS");
        new ta1("android.permission.BLUETOOTH");
        new ta1("android.permission.BLUETOOTH_ADMIN");
        new ta1("android.permission.ACCESS_COARSE_LOCATION");
        new ta1("android.permission.ACCESS_FINE_LOCATION");
        new ta1("android.permission.CHANGE_WIFI_STATE");
        new ta1("android.permission.ACCESS_WIFI_STATE");
        new ta1("android.permission.CHANGE_WIFI_MULTICAST_STATE");
        new ta1("android.permission.RECEIVE_MMS");
        new ta1("android.permission.RECEIVE_SMS");
        new ta1("android.permission.CALL_PHONE");
        ta1 ta1Var = ANSWER_PHONE_CALLS;
        ta1 ta1Var2 = READ_PHONE_STATE;
        ta1 ta1Var3 = WRITE_CALL_LOG;
        ta1 ta1Var4 = READ_CALL_LOG;
        ta1 ta1Var5 = READ_CONTACTS;
        ta1 ta1Var6 = WRITE_CONTACTS;
        ta1 ta1Var7 = READ_EXTERNAL_STORAGE;
        ta1 ta1Var8 = WRITE_EXTERNAL_STORAGE;
        ta1 ta1Var9 = GROUP_PHONE;
        ta1 ta1Var10 = GROUP_CONTACTS;
    }

    ta1(String str) {
        this.f8199a = null;
        this.f8200b = null;
        this.f8201c = new C1662d(this);
        this.f8202d = null;
        this.f8203f = null;
        this.f8199a = str;
    }

    ta1(String str, va1 va1Var) {
        this(str);
        this.f8201c = va1Var;
    }

    ta1(ta1... ta1VarArr) {
        this.f8199a = null;
        this.f8200b = null;
        this.f8201c = new C1662d(this);
        this.f8202d = null;
        this.f8203f = null;
        this.f8200b = ta1VarArr;
    }

    /* renamed from: b */
    public static void m533b(int i, int i2, Intent intent) {
        m532c(i, new String[0], new int[0]);
    }

    /* renamed from: c */
    public static void m532c(int i, String[] strArr, int[] iArr) {
        ta1[] values = values();
        int i2 = i - 100;
        if (i2 < 0 || i2 >= values.length) {
            return;
        }
        ta1 ta1Var = values[i2];
        ta1Var.m530e();
        WeakReference<Object> weakReference = ta1Var.f8202d;
        if (weakReference == null) {
            return;
        }
        Object obj = weakReference.get();
        ta1Var.f8202d = null;
        if (obj == null || !(obj instanceof ua1)) {
            return;
        }
        if (ta1Var.m531d() ? ((ua1) obj).mo401f(ta1Var) : ((ua1) obj).mo400h(ta1Var)) {
            return;
        }
        FragmentActivity fragmentActivity = obj;
        if (obj instanceof Fragment) {
            fragmentActivity = ((Fragment) obj).getActivity();
        }
        FragmentActivity fragmentActivity2 = fragmentActivity;
        if (fragmentActivity instanceof yd) {
            fragmentActivity2 = ((yd) fragmentActivity).getActivity();
        }
        if (!(fragmentActivity2 instanceof Activity) || !(fragmentActivity2 instanceof ua1)) {
            return;
        }
        boolean m531d = ta1Var.m531d();
        ua1 ua1Var = (ua1) fragmentActivity2;
        if (m531d) {
            ua1Var.mo401f(ta1Var);
        } else {
            ua1Var.mo400h(ta1Var);
        }
    }

    /* renamed from: a */
    public void m534a(AbstractC1663e abstractC1663e) {
        if (this.f8203f == null) {
            this.f8203f = new HashSet<>();
        }
        this.f8203f.add(new WeakReference<>(abstractC1663e));
    }

    /* renamed from: d */
    public boolean m531d() {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        if (this.f8199a != null) {
            return this.f8201c.mo341a(this);
        }
        for (ta1 ta1Var : this.f8200b) {
            z &= ta1Var.m531d();
        }
        return z;
    }

    /* renamed from: e */
    public final void m530e() {
        if (this.f8203f == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator<WeakReference<AbstractC1663e>> it = this.f8203f.iterator();
        while (it.hasNext()) {
            WeakReference<AbstractC1663e> next = it.next();
            if (next.get() == null) {
                hashSet.add(next);
            } else {
                next.get().mo523a(this);
            }
        }
        this.f8203f.removeAll(hashSet);
    }

    /* renamed from: f */
    public void m529f(Activity activity) {
        ta1[] ta1VarArr;
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        if (this.f8199a != null) {
            this.f8201c.mo340b(new ta1[]{this}, activity, ordinal() + 100);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (ta1 ta1Var : this.f8200b) {
            if (!ta1Var.m531d()) {
                arrayList.addAll(ta1Var.m524k());
            }
        }
        if (arrayList.size() <= 0) {
            return;
        }
        this.f8201c.mo340b((ta1[]) arrayList.toArray(new ta1[arrayList.size()]), activity, ordinal() + 100);
    }

    /* renamed from: g */
    public void m528g(Activity activity) {
        synchronized (this) {
            this.f8202d = new WeakReference<>(activity);
            m529f(activity);
        }
    }

    /* renamed from: h */
    public void m527h(Fragment fragment) {
        synchronized (this) {
            this.f8202d = new WeakReference<>(fragment);
            m529f(fragment.getActivity());
        }
    }

    /* renamed from: i */
    public boolean m526i(Activity activity) {
        boolean m531d;
        synchronized (this) {
            m531d = m531d();
            if (!m531d) {
                m528g(activity);
            }
        }
        return !m531d;
    }

    /* renamed from: j */
    public boolean m525j(Fragment fragment) {
        boolean m531d;
        synchronized (this) {
            m531d = m531d();
            if (!m531d) {
                m527h(fragment);
            }
        }
        return !m531d;
    }

    /* renamed from: k */
    public List<ta1> m524k() {
        if (this.f8199a != null) {
            return Arrays.asList(this);
        }
        ArrayList arrayList = new ArrayList();
        for (ta1 ta1Var : this.f8200b) {
            arrayList.addAll(ta1Var.m524k());
        }
        return arrayList;
    }
}
