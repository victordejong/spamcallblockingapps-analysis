package p229s2;

import android.content.Context;
import android.database.Cursor;
import android.os.Process;
import android.provider.Settings;
import android.util.Base64;
import android.util.JsonReader;
import com.android.billingclient.api.Purchase;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.remoteconfig.internal.C1853a;
import com.mglab.scm.visual.FragmentStat;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2768a;
import p095f8.C2779g;
import p095f8.C2780h;
import p103g5.AbstractC2878v;
import p103g5.C2858m;
import p106g8.C2914d;
import p114h5.C3009a;
import p122i2.AbstractC3069e;
import p122i2.C3067c;
import p122i2.C3068d;
import p170m7.C3661g;
import p193o8.C3948e;
import p201p6.C4021f;
import p218r2.AbstractC4190h;
import p218r2.C4184b;
import p221r5.AbstractC4208a;
import p277w7.C4749e;
import p277w7.C4766p;
import p293y2.C4995l;
import p303z2.C5057r;
import p308z7.AbstractC5111a;
import p308z7.AbstractC5113c;
/* renamed from: s2.c */
/* loaded from: classes2-dex2jar.jar:s2/c.class */
public final /* synthetic */ class C4281c implements AbstractC4190h, C5057r.AbstractC5059b, C4021f.AbstractC4022a, C3009a.AbstractC3010a, SuccessContinuation, AbstractC3069e, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: b */
    public static final /* synthetic */ C4281c f13426b = new C4281c(1);

    /* renamed from: c */
    public static final /* synthetic */ C4281c f13427c = new C4281c(4);

    /* renamed from: d */
    public static final /* synthetic */ C4281c f13428d = new C4281c(5);

    /* renamed from: e */
    public static final /* synthetic */ C4281c f13429e = new C4281c(6);

    /* renamed from: f */
    public static final /* synthetic */ C4281c f13430f = new C4281c(7);

    /* renamed from: g */
    public static final /* synthetic */ C4281c f13431g = new C4281c(8);

    /* renamed from: h */
    public static final /* synthetic */ C4281c f13432h = new C4281c(9);

    /* renamed from: i */
    public static final /* synthetic */ C4281c f13433i = new C4281c(10);

    /* renamed from: a */
    public final /* synthetic */ int f13434a;

    public /* synthetic */ C4281c(int i) {
        this.f13434a = i;
    }

    @Override // p122i2.AbstractC3069e
    /* renamed from: a */
    public void mo106a(C3067c c3067c, String str) {
        Context context = C2768a.f9468a;
    }

    @Override // p303z2.C5057r.AbstractC5059b
    public Object apply(Object obj) {
        switch (this.f13434a) {
            case 2:
                C4184b c4184b = C5057r.f15360e;
                throw new SynchronizationException("Timed out while trying to open db.", (Throwable) obj);
            default:
                Cursor cursor = (Cursor) obj;
                C4184b c4184b2 = C5057r.f15360e;
                return !cursor.moveToNext() ? null : Long.valueOf(cursor.getLong(0));
        }
    }

    @Override // p114h5.C3009a.AbstractC3010a
    /* renamed from: b */
    public Object mo101b(JsonReader jsonReader) {
        AbstractC4208a abstractC4208a = C3009a.f10106a;
        jsonReader.beginObject();
        Long l = null;
        Long l2 = null;
        String str = null;
        String str2 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            Objects.requireNonNull(nextName);
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case 3373707:
                    if (nextName.equals(AppMeasurementSdk.ConditionalUserProperty.NAME)) {
                        z = false;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        z = true;
                        break;
                    }
                    break;
                case 3601339:
                    if (nextName.equals("uuid")) {
                        z = true;
                        break;
                    }
                    break;
                case 1153765347:
                    if (nextName.equals("baseAddress")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    str2 = jsonReader.nextString();
                    Objects.requireNonNull(str2, "Null name");
                    break;
                case true:
                    l2 = Long.valueOf(jsonReader.nextLong());
                    break;
                case true:
                    str = new String(Base64.decode(jsonReader.nextString(), 2), AbstractC2878v.f9789a);
                    break;
                case true:
                    l = Long.valueOf(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        String str3 = l == null ? " baseAddress" : "";
        String str4 = str3;
        if (l2 == null) {
            str4 = C1676a.m4789h(str3, " size");
        }
        String str5 = str4;
        if (str2 == null) {
            str5 = C1676a.m4789h(str4, " name");
        }
        if (str5.isEmpty()) {
            return new C2858m(l.longValue(), l2.longValue(), str2, str, null);
        }
        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str5));
    }

    @Override // p201p6.C4021f.AbstractC4022a
    /* renamed from: c */
    public String mo100c(Object obj) {
        Context context = (Context) obj;
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? FirebaseCommonRegistrar.m4475a(installerPackageName) : "";
    }

    @Override // p218r2.AbstractC4190h
    /* renamed from: d */
    public void mo154d(Exception exc) {
    }

    /* renamed from: e */
    public void m1116e(C3067c c3067c, List list) {
        Context context = C2768a.f9468a;
        if (c3067c.f10403a == 0 && C2768a.f9471d != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Purchase purchase = (Purchase) it2.next();
                String str = purchase.f3203a;
                if (!purchase.m7231d()) {
                    Context context2 = C2768a.f9468a;
                    C4995l c4995l = new C4995l(purchase, 6);
                    String m3131B = C2779g.m3131B(16);
                    String str2 = m3131B.substring(9) + m3131B.substring(0, 9);
                    String m3067V = C2780h.m3067V(context2);
                    Settings.Secure.getString(context2.getContentResolver(), "android_id");
                    C2914d.m2853c(str2, "hggjh", C2768a.m3144e(purchase).toString()).toString();
                    C2768a.m3144e(purchase).toString();
                    AbstractC5113c<AbstractC5111a> m498b = C4749e.m498b(context2);
                    String m4789h = C1676a.m4789h(m3067V, "purchase_auth.php");
                    C4766p c4766p = (C4766p) m498b;
                    c4766p.m492j(m4789h);
                    c4766p.mo11f("deviceid", Settings.Secure.getString(context2.getContentResolver(), "android_id"));
                    c4766p.mo11f("data", m3131B);
                    c4766p.mo11f("gzip", "1");
                    c4766p.mo15a(C2914d.m2854b(str2, C2768a.m3144e(purchase).toString()));
                    ((C3661g) c4766p.mo10d()).m1919k(c4995l);
                    if (!C2768a.f9474g.contains(purchase.m7232c().get(0))) {
                        continue;
                    } else {
                        String m7233b = purchase.m7233b();
                        if (m7233b == null) {
                            throw new IllegalArgumentException("Purchase token must be set");
                        }
                        C3068d c3068d = new C3068d();
                        c3068d.f10405a = m7233b;
                        C2768a.f9469b.mo7227a(c3068d, f13431g);
                    }
                }
            }
        }
        C2768a.m3140i();
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        switch (this.f13434a) {
            case 9:
                C3948e c3948e = FragmentStat.f7603g;
                return;
            default:
                C3948e c3948e2 = FragmentStat.f7603g;
                Process.killProcess(Process.myPid());
                System.exit(1);
                return;
        }
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        C1853a.C1854a c1854a = (C1853a.C1854a) obj;
        return Tasks.forResult(null);
    }
}
