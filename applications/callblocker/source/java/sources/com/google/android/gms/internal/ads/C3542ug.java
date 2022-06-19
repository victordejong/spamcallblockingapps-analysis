package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.C2716m;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.ug */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ug.class */
public final class C3542ug {

    /* renamed from: b */
    private dto f17412b;

    /* renamed from: f */
    private Context f17416f;

    /* renamed from: g */
    private C3647yd f17417g;

    /* renamed from: m */
    private crt<ArrayList<String>> f17423m;

    /* renamed from: a */
    private final Object f17411a = new Object();

    /* renamed from: c */
    private final C3561uz f17413c = new C3561uz();

    /* renamed from: d */
    private final C3553ur f17414d = new C3553ur(dyx.m8157f(), this.f17413c);

    /* renamed from: e */
    private boolean f17415e = false;

    /* renamed from: h */
    private C3102e f17418h = null;

    /* renamed from: i */
    private Boolean f17419i = null;

    /* renamed from: j */
    private final AtomicInteger f17420j = new AtomicInteger(0);

    /* renamed from: k */
    private final C3547ul f17421k = new C3547ul(null);

    /* renamed from: l */
    private final Object f17422l = new Object();

    @TargetApi(16)
    /* renamed from: a */
    private static ArrayList<String> m7099a(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo m14194b = C2586c.m14193a(context).m14194b(context.getApplicationInfo().packageName, 4096);
            if (m14194b.requestedPermissions != null && m14194b.requestedPermissionsFlags != null) {
                for (int i = 0; i < m14194b.requestedPermissions.length; i++) {
                    if ((m14194b.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(m14194b.requestedPermissions[i]);
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return arrayList;
    }

    /* renamed from: a */
    public final C3102e m7100a() {
        C3102e c3102e;
        synchronized (this.f17411a) {
            c3102e = this.f17418h;
        }
        return c3102e;
    }

    @TargetApi(23)
    /* renamed from: a */
    public final void m7098a(Context context, C3647yd c3647yd) {
        C3102e c3102e;
        synchronized (this.f17411a) {
            if (!this.f17415e) {
                this.f17416f = context.getApplicationContext();
                this.f17417g = c3647yd;
                C2341q.m14741f().m8565a(this.f17414d);
                this.f17413c.m7048a(this.f17416f, (String) null, true);
                C3398oy.m7352a(this.f17416f, this.f17417g);
                this.f17412b = new dto(context.getApplicationContext(), this.f17417g);
                C2341q.m14735l();
                if (!C2772aj.f9781c.mo13599a().booleanValue()) {
                    C3556uu.m7052a("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    c3102e = null;
                } else {
                    c3102e = new C3102e();
                }
                this.f17418h = c3102e;
                if (this.f17418h != null) {
                    C3654yk.m6736a(new C3544ui(this).m7063b(), "AppState.registerCsiReporter");
                }
                this.f17415e = true;
                m7082j();
            }
        }
        C2341q.m14744c().m6975b(context, c3647yd.f17636a);
    }

    /* renamed from: a */
    public final void m7096a(Boolean bool) {
        synchronized (this.f17411a) {
            this.f17419i = bool;
        }
    }

    /* renamed from: a */
    public final void m7095a(Throwable th, String str) {
        C3398oy.m7352a(this.f17416f, this.f17417g).mo7345a(th, str);
    }

    /* renamed from: b */
    public final Boolean m7094b() {
        Boolean bool;
        synchronized (this.f17411a) {
            bool = this.f17419i;
        }
        return bool;
    }

    /* renamed from: b */
    public final void m7092b(Throwable th, String str) {
        C3398oy.m7352a(this.f17416f, this.f17417g).mo7344a(th, str, C2819aw.f10449g.mo13599a().floatValue());
    }

    /* renamed from: c */
    public final void m7091c() {
        this.f17421k.m7073a();
    }

    /* renamed from: d */
    public final Resources m7089d() {
        Resources resources = null;
        if (this.f17417g.f17639d) {
            resources = this.f17416f.getResources();
        } else {
            try {
                C3644ya.m6756a(this.f17416f).getResources();
            } catch (zzazx e) {
                C3556uu.m6746d("Cannot load resource from dynamite apk or local jar", e);
            }
        }
        return resources;
    }

    /* renamed from: e */
    public final void m7087e() {
        this.f17420j.incrementAndGet();
    }

    /* renamed from: f */
    public final void m7086f() {
        this.f17420j.decrementAndGet();
    }

    /* renamed from: g */
    public final int m7085g() {
        return this.f17420j.get();
    }

    /* renamed from: h */
    public final AbstractC3558uw m7084h() {
        C3561uz c3561uz;
        synchronized (this.f17411a) {
            c3561uz = this.f17413c;
        }
        return c3561uz;
    }

    /* renamed from: i */
    public final Context m7083i() {
        return this.f17416f;
    }

    /* renamed from: j */
    public final crt<ArrayList<String>> m7082j() {
        crt<ArrayList<String>> crtVar;
        if (C2716m.m13840c() && this.f17416f != null) {
            if (!((Boolean) dyx.m8158e().m7876a(edi.f16423bc)).booleanValue()) {
                synchronized (this.f17422l) {
                    if (this.f17423m != null) {
                        crtVar = this.f17423m;
                    } else {
                        crtVar = C3650yg.f17642a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.uj

                            /* renamed from: a */
                            private final C3542ug f17433a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f17433a = this;
                            }

                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return this.f17433a.m7080l();
                            }
                        });
                        this.f17423m = crtVar;
                    }
                }
                return crtVar;
            }
        }
        crtVar = crg.m10778a(new ArrayList());
        return crtVar;
    }

    /* renamed from: k */
    public final C3553ur m7081k() {
        return this.f17414d;
    }

    /* renamed from: l */
    public final /* synthetic */ ArrayList m7080l() {
        return m7099a(C3446qs.m7295b(this.f17416f));
    }
}
