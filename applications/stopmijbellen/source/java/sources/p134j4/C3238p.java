package p134j4;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.play.core.assetpacks.AssetPackException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import p189o4.C3873j;
import p189o4.C3875l;
import p201p6.C4018c;
import p220r4.C4203l;
import p220r4.C4206o;
/* renamed from: j4.p */
/* loaded from: classes-dex2jar.jar:j4/p.class */
public final class C3238p implements AbstractC3228l2 {

    /* renamed from: g */
    public static final C4018c f10908g = new C4018c("AssetPackServiceImpl");

    /* renamed from: h */
    public static final Intent f10909h = new Intent("com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE").setPackage("com.android.vending");

    /* renamed from: a */
    public final String f10910a;

    /* renamed from: b */
    public final C3245r0 f10911b;

    /* renamed from: c */
    public final C3246r1 f10912c;

    /* renamed from: d */
    public C3873j f10913d;

    /* renamed from: e */
    public C3873j f10914e;

    /* renamed from: f */
    public final AtomicBoolean f10915f = new AtomicBoolean();

    public C3238p(Context context, C3245r0 c3245r0, C3246r1 c3246r1) {
        this.f10910a = context.getPackageName();
        this.f10911b = c3245r0;
        this.f10912c = c3246r1;
        if (C3875l.m1743b(context)) {
            Context applicationContext = context.getApplicationContext();
            applicationContext = applicationContext == null ? context : applicationContext;
            C4018c c4018c = f10908g;
            Intent intent = f10909h;
            C3260w0 c3260w0 = C3260w0.f11019M;
            this.f10913d = new C3873j(applicationContext, c4018c, "AssetPackService", intent, c3260w0, null);
            Context applicationContext2 = context.getApplicationContext();
            this.f10914e = new C3873j(applicationContext2 != null ? applicationContext2 : context, c4018c, "AssetPackService-keepAlive", intent, c3260w0, null);
        }
        f10908g.m1510b("AssetPackService initiated.", new Object[0]);
    }

    /* renamed from: f */
    public static Bundle m2520f() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11003);
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(0);
        arrayList.add(1);
        bundle.putIntegerArrayList("supported_compression_formats", arrayList);
        ArrayList<Integer> arrayList2 = new ArrayList<>();
        arrayList2.add(1);
        arrayList2.add(2);
        bundle.putIntegerArrayList("supported_patch_formats", arrayList2);
        return bundle;
    }

    /* renamed from: g */
    public static C4206o m2519g() {
        f10908g.m1509c("onError(%d)", -11);
        AssetPackException assetPackException = new AssetPackException(-11);
        C4206o c4206o = new C4206o();
        c4206o.m1289d(assetPackException);
        return c4206o;
    }

    /* renamed from: i */
    public static Bundle m2517i(int i, String str, String str2, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", i);
        bundle.putString("module_name", str);
        bundle.putString("slice_id", str2);
        bundle.putInt("chunk_number", i2);
        return bundle;
    }

    /* renamed from: j */
    public static /* bridge */ /* synthetic */ Bundle m2516j(Map map) {
        Bundle m2520f = m2520f();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (Map.Entry entry : map.entrySet()) {
            Bundle bundle = new Bundle();
            bundle.putString("installed_asset_module_name", (String) entry.getKey());
            bundle.putLong("installed_asset_module_version", ((Long) entry.getValue()).longValue());
            arrayList.add(bundle);
        }
        m2520f.putParcelableArrayList("installed_asset_module", arrayList);
        return m2520f;
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: a */
    public final void mo2525a(int i, String str, String str2, int i2) {
        if (this.f10913d != null) {
            f10908g.m1507e("notifyChunkTransferred", new Object[0]);
            C4203l c4203l = new C4203l();
            this.f10913d.m1748b(new C3193d(this, c4203l, i, str, str2, i2, c4203l), c4203l);
            return;
        }
        throw new C3233n0("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: b */
    public final void mo2524b(int i, String str) {
        m2518h(i, str, 10);
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: c */
    public final C4206o mo2523c(Map map) {
        if (this.f10913d == null) {
            return m2519g();
        }
        f10908g.m1507e("syncPacks", new Object[0]);
        C4203l c4203l = new C4203l();
        this.f10913d.m1748b(new C3189c(this, c4203l, map, c4203l), c4203l);
        return c4203l.f13196a;
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: d */
    public final C4206o mo2522d(int i, String str, String str2, int i2) {
        if (this.f10913d == null) {
            return m2519g();
        }
        f10908g.m1507e("getChunkFileDescriptor(%s, %s, %d, session=%d)", str, str2, Integer.valueOf(i2), Integer.valueOf(i));
        C4203l c4203l = new C4203l();
        this.f10913d.m1748b(new C3205g(this, c4203l, i, str, str2, i2, c4203l), c4203l);
        return c4203l.f13196a;
    }

    @Override // p134j4.AbstractC3228l2
    /* renamed from: e */
    public final void mo2521e(List list) {
        if (this.f10913d == null) {
            return;
        }
        f10908g.m1507e("cancelDownloads(%s)", list);
        C4203l c4203l = new C4203l();
        this.f10913d.m1748b(new C3185b(this, c4203l, list, c4203l), c4203l);
    }

    /* renamed from: h */
    public final void m2518h(int i, String str, int i2) {
        if (this.f10913d != null) {
            f10908g.m1507e("notifyModuleCompleted", new Object[0]);
            C4203l c4203l = new C4203l();
            this.f10913d.m1748b(new C3197e(this, c4203l, i, str, c4203l, i2), c4203l);
            return;
        }
        throw new C3233n0("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // p134j4.AbstractC3228l2
    public final void zzf() {
        synchronized (this) {
            if (this.f10914e == null) {
                f10908g.m1506f("Keep alive connection manager is not initialized.", new Object[0]);
                return;
            }
            C4018c c4018c = f10908g;
            c4018c.m1507e("keepAlive", new Object[0]);
            if (!this.f10915f.compareAndSet(false, true)) {
                c4018c.m1507e("Service is already kept alive.", new Object[0]);
                return;
            }
            C4203l c4203l = new C4203l();
            this.f10914e.m1748b(new C3209h(this, c4203l, c4203l), c4203l);
        }
    }

    @Override // p134j4.AbstractC3228l2
    public final void zzi(int i) {
        if (this.f10913d != null) {
            f10908g.m1507e("notifySessionFailed", new Object[0]);
            C4203l c4203l = new C4203l();
            this.f10913d.m1748b(new C3201f(this, c4203l, i, c4203l), c4203l);
            return;
        }
        throw new C3233n0("The Play Store app is not installed or is an unofficial version.", i);
    }
}
