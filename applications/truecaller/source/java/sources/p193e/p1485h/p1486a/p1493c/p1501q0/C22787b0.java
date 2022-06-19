package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Looper;
import android.util.LruCache;
import androidx.fragment.app.Fragment;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.clevertap.android.sdk.InAppNotificationActivity;
import com.clevertap.android.sdk.inapp.CTInAppNotification;
import com.clevertap.android.sdk.inapp.CTInAppNotificationMedia;
import com.tenor.android.core.constant.ContentFormat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.AbstractC22742k;
import p193e.p1485h.p1486a.p1493c.C22723d0;
import p193e.p1485h.p1486a.p1493c.C22727f;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22737h0;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.C22844v;
import p193e.p1485h.p1486a.p1493c.C22858w;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.HandlerC22886e;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
import p193e.p1485h.p1486a.p1493c.p1511z0.C22899c;
/* renamed from: e.h.a.c.q0.b0 */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0.class */
public class C22787b0 implements CTInAppNotification.AbstractC0881b, AbstractC22798c0 {

    /* renamed from: k */
    public static CTInAppNotification f63158k;

    /* renamed from: l */
    public static final List<CTInAppNotification> f63159l = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    public final C22727f f63160a;

    /* renamed from: b */
    public final AbstractC22742k f63161b;

    /* renamed from: c */
    public final CleverTapInstanceConfig f63162c;

    /* renamed from: d */
    public final Context f63163d;

    /* renamed from: e */
    public final C22844v f63164e;

    /* renamed from: f */
    public final C22858w f63165f;

    /* renamed from: i */
    public final C22735g0 f63168i;

    /* renamed from: j */
    public final HandlerC22886e f63169j;

    /* renamed from: h */
    public HashSet<String> f63167h = null;

    /* renamed from: g */
    public EnumC22795h f63166g = EnumC22795h.RESUMED;

    /* renamed from: e.h.a.c.q0.b0$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0$a.class */
    public class CallableC22788a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f63170a;

        /* renamed from: b */
        public final /* synthetic */ CTInAppNotification f63171b;

        public CallableC22788a(Context context, CTInAppNotification cTInAppNotification) {
            C22787b0.this = r4;
            this.f63170a = context;
            this.f63171b = cTInAppNotification;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            Context context = this.f63170a;
            C22787b0 c22787b0 = C22787b0.this;
            CleverTapInstanceConfig cleverTapInstanceConfig = c22787b0.f63162c;
            CTInAppNotification cTInAppNotification = this.f63171b;
            String str = cleverTapInstanceConfig.f2240a;
            CTInAppNotification cTInAppNotification2 = C22787b0.f63158k;
            if (cTInAppNotification2 != null && cTInAppNotification2.f2334g.equals(cTInAppNotification.f2334g)) {
                C22787b0.f63158k = null;
                C22787b0.m7761d(context, cleverTapInstanceConfig, c22787b0);
            }
            C22787b0.m7763b(C22787b0.this, this.f63170a);
            return null;
        }
    }

    /* renamed from: e.h.a.c.q0.b0$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0$b.class */
    public class RunnableC22789b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CTInAppNotification f63173a;

        public RunnableC22789b(CTInAppNotification cTInAppNotification) {
            C22787b0.this = r4;
            this.f63173a = cTInAppNotification;
        }

        @Override // java.lang.Runnable
        public void run() {
            C22787b0.this.mo7764a(this.f63173a);
        }
    }

    /* renamed from: e.h.a.c.q0.b0$c */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0$c.class */
    public class CallableC22790c implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f63175a;

        public CallableC22790c(Context context) {
            C22787b0.this = r4;
            this.f63175a = context;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22787b0.m7763b(C22787b0.this, this.f63175a);
            return null;
        }
    }

    /* renamed from: e.h.a.c.q0.b0$d */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0$d.class */
    public class RunnableC22791d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CTInAppNotification f63177a;

        public RunnableC22791d(CTInAppNotification cTInAppNotification) {
            C22787b0.this = r4;
            this.f63177a = cTInAppNotification;
        }

        @Override // java.lang.Runnable
        public void run() {
            C22787b0.this.m7760e(this.f63177a);
        }
    }

    /* renamed from: e.h.a.c.q0.b0$e */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0$e.class */
    public class CallableC22792e implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ JSONObject f63179a;

        public CallableC22792e(JSONObject jSONObject) {
            C22787b0.this = r4;
            this.f63179a = jSONObject;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22787b0 c22787b0 = C22787b0.this;
            new RunnableC22796i(c22787b0, this.f63179a).run();
            return null;
        }
    }

    /* renamed from: e.h.a.c.q0.b0$f */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0$f.class */
    public class CallableC22793f implements Callable<Void> {
        public CallableC22793f() {
            C22787b0.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22787b0 c22787b0 = C22787b0.this;
            C22787b0.m7763b(c22787b0, c22787b0.f63163d);
            return null;
        }
    }

    /* renamed from: e.h.a.c.q0.b0$g */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0$g.class */
    public class RunnableC22794g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f63182a;

        /* renamed from: b */
        public final /* synthetic */ CTInAppNotification f63183b;

        /* renamed from: c */
        public final /* synthetic */ CleverTapInstanceConfig f63184c;

        /* renamed from: d */
        public final /* synthetic */ C22787b0 f63185d;

        public RunnableC22794g(Context context, CTInAppNotification cTInAppNotification, CleverTapInstanceConfig cleverTapInstanceConfig, C22787b0 c22787b0) {
            this.f63182a = context;
            this.f63183b = cTInAppNotification;
            this.f63184c = cleverTapInstanceConfig;
            this.f63185d = c22787b0;
        }

        @Override // java.lang.Runnable
        public void run() {
            C22787b0.m7758g(this.f63182a, this.f63183b, this.f63184c);
        }
    }

    /* renamed from: e.h.a.c.q0.b0$h */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0$h.class */
    public enum EnumC22795h {
        DISCARDED(-1),
        SUSPENDED(0),
        RESUMED(1);

        EnumC22795h(int i) {
        }
    }

    /* renamed from: e.h.a.c.q0.b0$i */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b0$i.class */
    public final class RunnableC22796i implements Runnable {

        /* renamed from: a */
        public final WeakReference<C22787b0> f63190a;

        /* renamed from: b */
        public final JSONObject f63191b;

        /* renamed from: c */
        public final boolean f63192c = C22741j0.f62977a;

        public RunnableC22796i(C22787b0 c22787b0, JSONObject jSONObject) {
            C22787b0.this = r6;
            this.f63190a = new WeakReference<>(c22787b0);
            this.f63191b = jSONObject;
        }

        /* JADX WARN: Removed duplicated region for block: B:181:0x01e1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:182:0x023e A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:187:0x0333 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:196:0x00c0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:197:0x00c0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:200:0x00c0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00a9  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 905
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1501q0.C22787b0.RunnableC22796i.run():void");
        }
    }

    public C22787b0(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, HandlerC22886e handlerC22886e, C22844v c22844v, AbstractC22742k abstractC22742k, C22727f c22727f, C22858w c22858w) {
        this.f63163d = context;
        this.f63162c = cleverTapInstanceConfig;
        this.f63168i = cleverTapInstanceConfig.m42081b();
        this.f63169j = handlerC22886e;
        this.f63164e = c22844v;
        this.f63161b = abstractC22742k;
        this.f63160a = c22727f;
        this.f63165f = c22858w;
    }

    /* renamed from: b */
    public static void m7763b(C22787b0 c22787b0, Context context) {
        Objects.requireNonNull(c22787b0);
        SharedPreferences m2297u0 = C26232y.m2297u0(context);
        try {
            if (!c22787b0.m7762c()) {
                return;
            }
            if (c22787b0.f63166g == EnumC22795h.SUSPENDED) {
                c22787b0.f63168i.m7856a(c22787b0.f63162c.f2240a, "InApp Notifications are set to be suspended, not showing the InApp Notification");
                return;
            }
            m7761d(context, c22787b0.f63162c, c22787b0);
            JSONArray jSONArray = new JSONArray(C26232y.m2483B0(context, c22787b0.f63162c, "inApp", "[]"));
            if (jSONArray.length() < 1) {
                return;
            }
            if (c22787b0.f63166g != EnumC22795h.DISCARDED) {
                c22787b0.m7759f(jSONArray.getJSONObject(0));
            } else {
                c22787b0.f63168i.m7856a(c22787b0.f63162c.f2240a, "InApp Notifications are set to be discarded, dropping the InApp Notification");
            }
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    jSONArray2.put(jSONArray.get(i));
                }
            }
            try {
                m2297u0.edit().putString(C26232y.m2398W1(c22787b0.f63162c, "inApp"), jSONArray2.toString()).apply();
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            C22735g0 c22735g0 = c22787b0.f63168i;
            String str = c22787b0.f63162c.f2240a;
            Objects.requireNonNull(c22735g0);
        }
    }

    /* renamed from: d */
    public static void m7761d(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, C22787b0 c22787b0) {
        String str = cleverTapInstanceConfig.f2240a;
        List<CTInAppNotification> list = f63159l;
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            CTInAppNotification cTInAppNotification = list.get(0);
            list.remove(0);
            new HandlerC22886e().post(new RunnableC22794g(context, cTInAppNotification, cleverTapInstanceConfig, c22787b0));
        } catch (Throwable th) {
        }
    }

    /* renamed from: g */
    public static void m7758g(Context context, CTInAppNotification cTInAppNotification, CleverTapInstanceConfig cleverTapInstanceConfig) {
        Fragment fragment;
        String str = cleverTapInstanceConfig.f2240a;
        if (!C22858w.f63447t) {
            f63159l.add(cTInAppNotification);
        } else if (f63158k != null) {
            f63159l.add(cTInAppNotification);
        } else if (System.currentTimeMillis() / 1000 > cTInAppNotification.f2319E) {
        } else {
            f63158k = cTInAppNotification;
            EnumC22809z enumC22809z = cTInAppNotification.f2345r;
            switch (enumC22809z.ordinal()) {
                case 1:
                case 2:
                case 5:
                case 6:
                case 7:
                case 8:
                case 11:
                case 12:
                case 13:
                case 14:
                    Intent intent = new Intent(context, InAppNotificationActivity.class);
                    intent.putExtra("inApp", cTInAppNotification);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable(DTBMetricsConfiguration.CONFIG_DIR, cleverTapInstanceConfig);
                    intent.putExtra("configBundle", bundle);
                    try {
                        Activity m7674a = C22858w.m7674a();
                        if (m7674a == null) {
                            throw new IllegalStateException("Current activity reference not found");
                        }
                        cleverTapInstanceConfig.m42081b().m7855b(cleverTapInstanceConfig.f2240a, "calling InAppActivity for notification: " + cTInAppNotification.f2350w);
                        m7674a.startActivity(intent);
                        String str2 = "Displaying In-App: " + cTInAppNotification.f2350w;
                        fragment = null;
                        break;
                    } catch (Throwable th) {
                        fragment = null;
                        break;
                    }
                case 3:
                    fragment = new n();
                    break;
                case 4:
                    fragment = new l();
                    break;
                case 9:
                    fragment = new u();
                    break;
                case 10:
                    fragment = new r();
                    break;
                default:
                    String str3 = "Unknown InApp Type found: " + enumC22809z;
                    f63158k = null;
                    return;
            }
            if (fragment == null) {
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Displaying In-App: ");
            m8728C.append(cTInAppNotification.f2350w);
            m8728C.toString();
            try {
                C26907a c26907a = new C26907a(C22858w.m7674a().getSupportFragmentManager());
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("inApp", cTInAppNotification);
                bundle2.putParcelable(DTBMetricsConfiguration.CONFIG_DIR, cleverTapInstanceConfig);
                fragment.setArguments(bundle2);
                c26907a.m1119n(17498112, 17498113);
                c26907a.mo1122k(16908290, fragment, cTInAppNotification.f2324N, 1);
                c26907a.mo1127f();
            } catch (ClassCastException e) {
                e.getMessage();
            } catch (Throwable th2) {
            }
        }
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1501q0.AbstractC22798c0
    /* renamed from: P7 */
    public void mo7755P7(CTInAppNotification cTInAppNotification, Bundle bundle, HashMap<String, String> hashMap) {
        this.f63160a.m7881j(true, cTInAppNotification, bundle);
        if (hashMap == null || hashMap.isEmpty()) {
            return;
        }
        Objects.requireNonNull(this.f63161b);
    }

    @Override // com.clevertap.android.sdk.inapp.CTInAppNotification.AbstractC0881b
    /* renamed from: a */
    public void mo7764a(CTInAppNotification cTInAppNotification) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.f63169j.post(new RunnableC22789b(cTInAppNotification));
        } else if (cTInAppNotification.f2338k != null) {
            C22735g0 c22735g0 = this.f63168i;
            String str = this.f63162c.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Unable to process inapp notification ");
            m8728C.append(cTInAppNotification.f2338k);
            c22735g0.m7856a(str, m8728C.toString());
        } else {
            C22735g0 c22735g02 = this.f63168i;
            String str2 = this.f63162c.f2240a;
            StringBuilder m8728C2 = C22128a.m8728C("Notification ready: ");
            m8728C2.append(cTInAppNotification.f2350w);
            c22735g02.m7856a(str2, m8728C2.toString());
            m7760e(cTInAppNotification);
        }
    }

    /* renamed from: c */
    public final boolean m7762c() {
        if (this.f63167h == null) {
            this.f63167h = new HashSet<>();
            try {
                Objects.requireNonNull(C22737h0.m7853b(this.f63163d));
                String str = C22737h0.f62960i;
                if (str != null) {
                    for (String str2 : str.split(",")) {
                        this.f63167h.add(str2.trim());
                    }
                }
            } catch (Throwable th) {
            }
            C22735g0 c22735g0 = this.f63168i;
            String str3 = this.f63162c.f2240a;
            StringBuilder m8728C = C22128a.m8728C("In-app notifications will not be shown on ");
            m8728C.append(Arrays.toString(this.f63167h.toArray()));
            c22735g0.m7856a(str3, m8728C.toString());
        }
        Iterator<String> it = this.f63167h.iterator();
        while (it.hasNext()) {
            String next = it.next();
            Activity m7674a = C22858w.m7674a();
            String localClassName = m7674a != null ? m7674a.getLocalClassName() : null;
            if (localClassName != null && localClassName.contains(next)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
        if (r0.intValue() >= r11) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f5, code lost:
        if (r0.m7898c(r0)[1] >= r7.f2323M) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0160, code lost:
        if (r0.m7898c(r0)[0] >= r0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0171, code lost:
        if (r11 != false) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c6 A[Catch: all -> 0x02e0, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x02e0, blocks: (B:10:0x0033, B:13:0x003e, B:16:0x0048, B:18:0x0055, B:28:0x009a, B:35:0x00c6, B:37:0x00d3, B:40:0x00e2, B:47:0x0109, B:49:0x0116), top: B:88:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0109 A[Catch: all -> 0x02e0, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x02e0, blocks: (B:10:0x0033, B:13:0x003e, B:16:0x0048, B:18:0x0055, B:28:0x009a, B:35:0x00c6, B:37:0x00d3, B:40:0x00e2, B:47:0x0109, B:49:0x0116), top: B:88:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01af  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7760e(com.clevertap.android.sdk.inapp.CTInAppNotification r7) {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1493c.p1501q0.C22787b0.m7760e(com.clevertap.android.sdk.inapp.CTInAppNotification):void");
    }

    /* renamed from: f */
    public final void m7759f(JSONObject jSONObject) {
        C22735g0 c22735g0 = this.f63168i;
        String str = this.f63162c.f2240a;
        StringBuilder m8728C = C22128a.m8728C("Preparing In-App for display: ");
        m8728C.append(jSONObject.toString());
        c22735g0.m7856a(str, m8728C.toString());
        C22895k m7640d = C22882a.m7644a(this.f63162c).m7640d("TAG_FEATURE_IN_APPS");
        m7640d.f63554c.execute(new RunnableC22894j(m7640d, "InappController#prepareNotificationForDisplay", new CallableC22792e(jSONObject)));
    }

    /* renamed from: h */
    public final void m7757h() {
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63162c;
        if (!cleverTapInstanceConfig.f2244e) {
            C22895k m7640d = C22882a.m7644a(cleverTapInstanceConfig).m7640d("TAG_FEATURE_IN_APPS");
            m7640d.f63554c.execute(new RunnableC22894j(m7640d, "InAppController#showInAppNotificationIfAny", new CallableC22793f()));
        }
    }

    /* renamed from: i */
    public void m7756i(Context context) {
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63162c;
        if (!cleverTapInstanceConfig.f2244e) {
            C22895k m7640d = C22882a.m7644a(cleverTapInstanceConfig).m7640d("TAG_FEATURE_IN_APPS");
            m7640d.f63554c.execute(new RunnableC22894j(m7640d, "InappController#showNotificationIfAvailable", new CallableC22790c(context)));
        }
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1501q0.AbstractC22798c0
    /* renamed from: m8 */
    public void mo7754m8(Context context, CTInAppNotification cTInAppNotification, Bundle bundle) {
        Iterator<CTInAppNotificationMedia> it = cTInAppNotification.f2353z.iterator();
        while (it.hasNext()) {
            CTInAppNotificationMedia next = it.next();
            if (next.f2369d != null && next.f2367b != null) {
                boolean z = true;
                if (!next.f2368c.equals(ContentFormat.IMAGE_GIF)) {
                    String str = next.f2367b;
                    int i = C22899c.f63562a;
                    synchronized (C22899c.class) {
                        try {
                            LruCache<String, Bitmap> lruCache = C22899c.f63564c;
                            if (lruCache != null) {
                                lruCache.remove(str);
                                synchronized (C22899c.class) {
                                    synchronized (C22899c.class) {
                                        if (C22899c.f63564c.size() > 0) {
                                            z = false;
                                        }
                                        if (z) {
                                            C22899c.f63564c = null;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } else {
                    String str2 = next.f2367b;
                    int i2 = CTInAppNotification.C0882c.f2354a;
                    synchronized (CTInAppNotification.C0882c.class) {
                        try {
                            LruCache<String, byte[]> lruCache2 = CTInAppNotification.C0882c.f2356c;
                            if (lruCache2 != null) {
                                lruCache2.remove(str2);
                                synchronized (CTInAppNotification.C0882c.class) {
                                    synchronized (CTInAppNotification.C0882c.class) {
                                        boolean z2 = CTInAppNotification.C0882c.f2356c.size() <= 0;
                                        if (z2) {
                                            CTInAppNotification.C0882c.f2356c = null;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
        }
        C22723d0 c22723d0 = this.f63164e.f63406a;
        if (c22723d0 != null) {
            String str3 = cTInAppNotification.f2344q;
            if (str3 != null) {
                c22723d0.f62904e.add(str3.toString());
            }
            C22735g0 c22735g0 = this.f63168i;
            String str4 = this.f63162c.f2240a;
            StringBuilder m8728C = C22128a.m8728C("InApp Dismissed: ");
            m8728C.append(cTInAppNotification.f2334g);
            c22735g0.m7855b(str4, m8728C.toString());
        } else {
            C22735g0 c22735g02 = this.f63168i;
            String str5 = this.f63162c.f2240a;
            StringBuilder m8728C2 = C22128a.m8728C("Not calling InApp Dismissed: ");
            m8728C2.append(cTInAppNotification.f2334g);
            m8728C2.append(" because InAppFCManager is null");
            c22735g02.m7855b(str5, m8728C2.toString());
        }
        try {
            Objects.requireNonNull(this.f63161b);
        } catch (Throwable th3) {
            C22735g0 c22735g03 = this.f63168i;
            String str6 = this.f63162c.f2240a;
            Objects.requireNonNull(c22735g03);
        }
        C22895k m7640d = C22882a.m7644a(this.f63162c).m7640d("TAG_FEATURE_IN_APPS");
        m7640d.f63554c.execute(new RunnableC22894j(m7640d, "InappController#inAppNotificationDidDismiss", new CallableC22788a(context, cTInAppNotification)));
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1501q0.AbstractC22798c0
    /* renamed from: y9 */
    public void mo7753y9(CTInAppNotification cTInAppNotification, Bundle bundle) {
        this.f63160a.m7881j(false, cTInAppNotification, bundle);
    }
}
