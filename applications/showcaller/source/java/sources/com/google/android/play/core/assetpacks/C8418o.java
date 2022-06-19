package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.play.core.internal.AbstractC8472b1;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8483e0;
import com.google.android.play.core.internal.C8504n;
import com.google.android.play.core.splitcompat.C8552q;
import com.google.android.play.core.tasks.AbstractC8571c;
import com.google.android.play.core.tasks.C8573e;
import com.google.android.play.core.tasks.C8581m;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.assetpacks.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/o.class */
public final class C8418o implements AbstractC8433r2 {

    /* renamed from: a */
    private static final C8466a f37866a = new C8466a("AssetPackServiceImpl");

    /* renamed from: b */
    private static final Intent f37867b = new Intent("com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE").setPackage("com.android.vending");

    /* renamed from: c */
    private final String f37868c;

    /* renamed from: d */
    private final C8415n0 f37869d;

    /* renamed from: e */
    private C8504n<AbstractC8472b1> f37870e;

    /* renamed from: f */
    private C8504n<AbstractC8472b1> f37871f;

    /* renamed from: g */
    private final AtomicBoolean f37872g = new AtomicBoolean();

    public C8418o(Context context, C8415n0 c8415n0) {
        this.f37868c = context.getPackageName();
        this.f37869d = c8415n0;
        if (C8483e0.m3521a(context)) {
            Context m3355c = C8552q.m3355c(context);
            C8466a c8466a = f37866a;
            Intent intent = f37867b;
            this.f37870e = new C8504n<>(m3355c, c8466a, "AssetPackService", intent, C8437s2.f37925b);
            this.f37871f = new C8504n<>(C8552q.m3355c(context), c8466a, "AssetPackService-keepAlive", intent, C8437s2.f37924a);
        }
        f37866a.m3567a("AssetPackService initiated.", new Object[0]);
    }

    /* renamed from: h */
    public static Bundle m3712h(int i, String str) {
        Bundle m3711i = m3711i(i);
        m3711i.putString("module_name", str);
        return m3711i;
    }

    /* renamed from: i */
    public static Bundle m3711i(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", i);
        return bundle;
    }

    /* renamed from: j */
    public static Bundle m3710j() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11000);
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(0);
        arrayList.add(1);
        bundle.putIntegerArrayList("supported_compression_formats", arrayList);
        bundle.putIntegerArrayList("supported_patch_formats", new ArrayList<>());
        return bundle;
    }

    /* renamed from: k */
    public static /* synthetic */ ArrayList m3709k(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("module_name", str);
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: m */
    public static /* synthetic */ Bundle m3707m(Map map) {
        Bundle m3710j = m3710j();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (Map.Entry entry : map.entrySet()) {
            Bundle bundle = new Bundle();
            bundle.putString("installed_asset_module_name", (String) entry.getKey());
            bundle.putLong("installed_asset_module_version", ((Long) entry.getValue()).longValue());
            arrayList.add(bundle);
        }
        m3710j.putParcelableArrayList("installed_asset_module", arrayList);
        return m3710j;
    }

    /* renamed from: q */
    public static /* synthetic */ Bundle m3703q(int i, String str, String str2, int i2) {
        Bundle m3712h = m3712h(i, str);
        m3712h.putString("slice_id", str2);
        m3712h.putInt("chunk_number", i2);
        return m3712h;
    }

    /* renamed from: u */
    public static /* synthetic */ List m3699u(C8418o c8418o, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AssetPackState next = AbstractC8365b.m3785b((Bundle) it.next(), c8418o.f37869d).mo3782e().values().iterator().next();
            if (next == null) {
                f37866a.m3566b("onGetSessionStates: Bundle contained no pack.", new Object[0]);
            }
            if (C8392h1.m3739d(next.mo3603h())) {
                arrayList.add(next.mo3604g());
            }
        }
        return arrayList;
    }

    /* renamed from: x */
    public final void m3696x(int i, String str, int i2) {
        if (this.f37870e != null) {
            f37866a.m3564d("notifyModuleCompleted", new Object[0]);
            C8581m c8581m = new C8581m();
            this.f37870e.m3505a(new C8378e(this, c8581m, i, str, c8581m, i2));
            return;
        }
        throw new C8369bk("The Play Store app is not installed or is an unofficial version.", i);
    }

    /* renamed from: y */
    private static <T> AbstractC8571c<T> m3695y() {
        f37866a.m3566b("onError(%d)", -11);
        return C8573e.m3325c(new AssetPackException(-11));
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: a */
    public final void mo3685a() {
        synchronized (this) {
            if (this.f37871f == null) {
                f37866a.m3563e("Keep alive connection manager is not initialized.", new Object[0]);
                return;
            }
            C8466a c8466a = f37866a;
            c8466a.m3564d("keepAlive", new Object[0]);
            if (!this.f37872g.compareAndSet(false, true)) {
                c8466a.m3564d("Service is already kept alive.", new Object[0]);
                return;
            }
            C8581m c8581m = new C8581m();
            this.f37871f.m3505a(new C8394i(this, c8581m, c8581m));
        }
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: b */
    public final void mo3684b(int i) {
        if (this.f37870e != null) {
            f37866a.m3564d("notifySessionFailed", new Object[0]);
            C8581m c8581m = new C8581m();
            this.f37870e.m3505a(new C8382f(this, c8581m, i, c8581m));
            return;
        }
        throw new C8369bk("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: c */
    public final void mo3683c(int i, String str, String str2, int i2) {
        if (this.f37870e != null) {
            f37866a.m3564d("notifyChunkTransferred", new Object[0]);
            C8581m c8581m = new C8581m();
            this.f37870e.m3505a(new C8374d(this, c8581m, i, str, str2, i2, c8581m));
            return;
        }
        throw new C8369bk("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: d */
    public final void mo3682d(int i, String str) {
        m3696x(i, str, 10);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: e */
    public final AbstractC8571c<ParcelFileDescriptor> mo3681e(int i, String str, String str2, int i2) {
        if (this.f37870e == null) {
            return m3695y();
        }
        f37866a.m3564d("getChunkFileDescriptor(%s, %s, %d, session=%d)", str, str2, Integer.valueOf(i2), Integer.valueOf(i));
        C8581m c8581m = new C8581m();
        this.f37870e.m3505a(new C8386g(this, c8581m, i, str, str2, i2, c8581m));
        return c8581m.m3313c();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: f */
    public final AbstractC8571c<List<String>> mo3680f(Map<String, Long> map) {
        if (this.f37870e == null) {
            return m3695y();
        }
        f37866a.m3564d("syncPacks", new Object[0]);
        C8581m c8581m = new C8581m();
        this.f37870e.m3505a(new C8445u2(this, c8581m, map, c8581m));
        return c8581m.m3313c();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8433r2
    /* renamed from: g */
    public final void mo3679g(List<String> list) {
        if (this.f37870e == null) {
            return;
        }
        f37866a.m3564d("cancelDownloads(%s)", list);
        C8581m c8581m = new C8581m();
        this.f37870e.m3505a(new C8441t2(this, c8581m, list, c8581m));
    }
}
