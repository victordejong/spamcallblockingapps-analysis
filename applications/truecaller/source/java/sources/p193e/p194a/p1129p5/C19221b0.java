package p193e.p194a.p1129p5;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26458x;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.p5.b0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/b0.class */
public final class C19221b0 implements AbstractC19219a0 {

    /* renamed from: a */
    public final Context f53589a;

    @Inject
    public C19221b0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53589a = context;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: a */
    public boolean mo13832a() {
        return mo13825h("android.permission.READ_CONTACTS");
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: b */
    public boolean mo13831b() {
        Object obj;
        Set<String> m1813e = C26458x.m1813e(this.f53589a);
        l.d(m1813e, "NotificationManagerCompa…ListenerPackages(context)");
        Iterator<T> it = m1813e.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (l.a((String) obj, this.f53589a.getPackageName())) {
                break;
            }
        }
        return ((String) obj) != null;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: c */
    public boolean mo13830c() {
        return mo13825h("android.permission.WRITE_EXTERNAL_STORAGE");
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: d */
    public boolean mo13829d() {
        return mo13825h("android.permission.READ_PHONE_STATE");
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: e */
    public boolean mo13828e() {
        return new C26458x(this.f53589a).m1817a();
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: f */
    public boolean mo13827f() {
        if (Build.VERSION.SDK_INT < 31) {
            return true;
        }
        Object systemService = this.f53589a.getSystemService("alarm");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        return ((AlarmManager) systemService).canScheduleExactAlarms();
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: g */
    public boolean mo13826g(String[] strArr, int[] iArr, String... strArr2) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        l.e(strArr2, "desiredPermissions");
        List m3827v3 = C25225a.m3827v3(strArr, i.f(iArr));
        ArrayList<k> arrayList = new ArrayList();
        for (Object obj : m3827v3) {
            if (((Number) ((k) obj).b).intValue() == 0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        for (k kVar : arrayList) {
            arrayList2.add((String) kVar.a);
        }
        return arrayList2.containsAll(i.g(strArr2));
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: h */
    public boolean mo13825h(String... strArr) {
        String str;
        l.e(strArr, "permissions");
        boolean z = false;
        try {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    str = null;
                    break;
                }
                String str2 = strArr[i];
                if (C26467a.m1801a(this.f53589a, str2) != 0) {
                    str = str2;
                    break;
                }
                i++;
            }
            if (str == null) {
                z = true;
            }
        } catch (RuntimeException e) {
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: i */
    public boolean mo13824i() {
        if (Build.VERSION.SDK_INT < 24) {
            return true;
        }
        Object systemService = this.f53589a.getSystemService(RemoteMessageConst.NOTIFICATION);
        Object obj = systemService;
        if (!(systemService instanceof NotificationManager)) {
            obj = null;
        }
        NotificationManager notificationManager = (NotificationManager) obj;
        return notificationManager != null ? notificationManager.isNotificationPolicyAccessGranted() : false;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: j */
    public boolean mo13823j() {
        return mo13825h("android.permission.READ_EXTERNAL_STORAGE");
    }

    @Override // p193e.p194a.p1129p5.AbstractC19219a0
    /* renamed from: k */
    public boolean mo13822k() {
        return Settings.canDrawOverlays(this.f53589a);
    }
}
