package p031c6;

import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.emoji2.text.RunnableC0375k;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import p081e6.C2583a;
import p104g6.C2905a;
import p134j4.C3260w0;
import p169m6.C3652e;
import p180n6.C3719a;
import p180n6.C3731f;
import p211q6.C4164g;
import p218r2.AbstractC4189g;
import p241t4.C4392c;
import p275w5.AbstractC4739b;
import p286x5.AbstractC4871e;
/* renamed from: c6.a */
/* loaded from: classes-dex2jar.jar:c6/a.class */
public class C0846a {

    /* renamed from: f */
    public static final C2905a f3124f = C2905a.m2869b();

    /* renamed from: a */
    public final Map<String, String> f3125a = new ConcurrentHashMap();

    /* renamed from: b */
    public Boolean f3126b;

    /* renamed from: c */
    public final AbstractC4739b<C4164g> f3127c;

    /* renamed from: d */
    public final AbstractC4871e f3128d;

    /* renamed from: e */
    public final AbstractC4739b<AbstractC4189g> f3129e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.content.Context, g6.a] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18, types: [android.content.Context, android.content.pm.PackageManager] */
    /* JADX WARN: Type inference failed for: r0v20, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.content.Context, g6.a] */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.content.Context, e6.t] */
    /* JADX WARN: Type inference failed for: r19v0, types: [com.google.firebase.perf.session.gauges.GaugeManager] */
    public C0846a(C4392c c4392c, AbstractC4739b<C4164g> abstractC4739b, AbstractC4871e abstractC4871e, AbstractC4739b<AbstractC4189g> abstractC4739b2, RemoteConfigManager remoteConfigManager, C2583a c2583a, GaugeManager gaugeManager) {
        Bundle bundle;
        this.f3126b = null;
        this.f3127c = abstractC4739b;
        this.f3128d = abstractC4871e;
        this.f3129e = abstractC4739b2;
        if (c4392c == null) {
            this.f3126b = Boolean.FALSE;
            new C3719a(new Bundle());
            return;
        }
        C3652e c3652e = C3652e.f11967s;
        c3652e.f11971d = c4392c;
        c4392c.m974a();
        c3652e.f11983p = c4392c.f13690c.f13717g;
        c3652e.f11973f = abstractC4871e;
        c3652e.f11974g = abstractC4739b2;
        ExecutorService executorService = c3652e.f11976i;
        executorService.execute(new RunnableC0375k(executorService, 2));
        c4392c.m974a();
        ?? r0 = c4392c.f13688a;
        try {
            ?? packageManager = r0.getPackageManager();
            r0 = packageManager.getApplicationInfo(packageManager.getPackageName(), 128).metaData;
            bundle = r0;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            e.getMessage();
            bundle = r0;
        }
        C3719a c3719a = bundle != null ? new C3719a(bundle) : new C3719a();
        remoteConfigManager.setFirebaseRemoteConfigProvider(abstractC4739b);
        c2583a.f9009b = c3719a;
        ?? r02 = C2583a.f9006d;
        r02.f9793b = C3731f.m1837a(r02);
        ?? r03 = c2583a.f9010c;
        r03.m3395b(r03);
        gaugeManager.setApplicationContext(r03);
        Boolean m3411f = c2583a.m3411f();
        this.f3126b = m3411f;
        if (!(m3411f != null ? m3411f.booleanValue() : C4392c.m973b().m969f())) {
            return;
        }
        ?? r04 = f3124f;
        c4392c.m974a();
        r04.m2870a(String.format("Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s", String.format("%s/trends?utm_source=%s&utm_medium=%s", C3260w0.m2479f(c4392c.f13690c.f13717g, r04.getPackageName()), "perf-android-sdk", "android-ide")));
    }
}
