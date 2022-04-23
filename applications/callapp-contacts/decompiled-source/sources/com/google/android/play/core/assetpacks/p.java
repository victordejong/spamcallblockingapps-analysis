package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.play.core.internal.ao;
import com.google.android.play.core.internal.bx;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.r;
import com.google.android.play.core.splitcompat.q;
import com.google.android.play.core.tasks.d;
import com.google.android.play.core.tasks.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/p.class */
public final class p implements cs {

    /* renamed from: a  reason: collision with root package name */
    private static final h f31296a = new h("AssetPackServiceImpl");

    /* renamed from: b  reason: collision with root package name */
    private static final Intent f31297b = new Intent("com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE").setPackage("com.android.vending");

    /* renamed from: c  reason: collision with root package name */
    private final String f31298c;

    /* renamed from: d  reason: collision with root package name */
    private final ap f31299d;
    private r<bx> e;
    private r<bx> f;
    private final AtomicBoolean g = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Context context, ap apVar) {
        this.f31298c = context.getPackageName();
        this.f31299d = apVar;
        if (ao.a(context)) {
            Context a2 = q.a(context);
            h hVar = f31296a;
            Intent intent = f31297b;
            this.e = new r<>(a2, hVar, "AssetPackService", intent, ct.f31261b);
            this.f = new r<>(q.a(context), hVar, "AssetPackService-keepAlive", intent, ct.f31260a);
        }
        f31296a.a("AssetPackService initiated.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ ArrayList a(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            Bundle bundle = new Bundle();
            bundle.putString("module_name", str);
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List a(p pVar, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            b next = c.a((Bundle) it2.next(), pVar.f31299d, new ArrayList(), v.f31310a).b().values().iterator().next();
            if (next == null) {
                f31296a.b("onGetSessionStates: Bundle contained no pack.", new Object[0]);
            }
            if (bj.a(next.b())) {
                arrayList.add(next.a());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i, String str, int i2) {
        if (this.e != null) {
            f31296a.c("notifyModuleCompleted", new Object[0]);
            com.google.android.play.core.tasks.p pVar = new com.google.android.play.core.tasks.p();
            this.e.a(new f(this, pVar, i, str, pVar, i2));
            return;
        }
        throw new al("The Play Store app is not installed or is an unofficial version.", i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Bundle b(Map map) {
        Bundle e = e();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (Map.Entry entry : map.entrySet()) {
            Bundle bundle = new Bundle();
            bundle.putString("installed_asset_module_name", (String) entry.getKey());
            bundle.putLong("installed_asset_module_version", ((Long) entry.getValue()).longValue());
            arrayList.add(bundle);
        }
        e.putParcelableArrayList("installed_asset_module", arrayList);
        return e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle c(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", i);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle c(int i, String str) {
        Bundle c2 = c(i);
        c2.putString("module_name", str);
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Bundle c(int i, String str, String str2, int i2) {
        Bundle c2 = c(i, str);
        c2.putString("slice_id", str2);
        c2.putInt("chunk_number", i2);
        return c2;
    }

    private static <T> d<T> d() {
        f31296a.b("onError(%d)", -11);
        return f.a((Exception) new AssetPackException(-11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11000);
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(0);
        arrayList.add(1);
        bundle.putIntegerArrayList("supported_compression_formats", arrayList);
        bundle.putIntegerArrayList("supported_patch_formats", new ArrayList<>());
        return bundle;
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final d<List<String>> a(Map<String, Long> map) {
        if (this.e == null) {
            return d();
        }
        f31296a.c("syncPacks", new Object[0]);
        com.google.android.play.core.tasks.p pVar = new com.google.android.play.core.tasks.p();
        this.e.a(new cv(this, pVar, map, pVar));
        return pVar.f31578a;
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a() {
        synchronized (this) {
            if (this.f == null) {
                f31296a.d("Keep alive connection manager is not initialized.", new Object[0]);
                return;
            }
            h hVar = f31296a;
            hVar.c("keepAlive", new Object[0]);
            if (!this.g.compareAndSet(false, true)) {
                hVar.c("Service is already kept alive.", new Object[0]);
                return;
            }
            com.google.android.play.core.tasks.p pVar = new com.google.android.play.core.tasks.p();
            this.f.a(new j(this, pVar, pVar));
        }
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a(int i) {
        if (this.e != null) {
            f31296a.c("notifySessionFailed", new Object[0]);
            com.google.android.play.core.tasks.p pVar = new com.google.android.play.core.tasks.p();
            this.e.a(new g(this, pVar, i, pVar));
            return;
        }
        throw new al("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a(int i, String str) {
        a(i, str, 10);
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a(int i, String str, String str2, int i2) {
        if (this.e != null) {
            f31296a.c("notifyChunkTransferred", new Object[0]);
            com.google.android.play.core.tasks.p pVar = new com.google.android.play.core.tasks.p();
            this.e.a(new e(this, pVar, i, str, str2, i2, pVar));
            return;
        }
        throw new al("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final void a(List<String> list) {
        if (this.e != null) {
            f31296a.c("cancelDownloads(%s)", list);
            com.google.android.play.core.tasks.p pVar = new com.google.android.play.core.tasks.p();
            this.e.a(new cu(this, pVar, list, pVar));
        }
    }

    @Override // com.google.android.play.core.assetpacks.cs
    public final d<ParcelFileDescriptor> b(int i, String str, String str2, int i2) {
        if (this.e == null) {
            return d();
        }
        f31296a.c("getChunkFileDescriptor(%s, %s, %d, session=%d)", str, str2, Integer.valueOf(i2), Integer.valueOf(i));
        com.google.android.play.core.tasks.p pVar = new com.google.android.play.core.tasks.p();
        this.e.a(new i(this, pVar, i, str, str2, i2, pVar));
        return pVar.f31578a;
    }
}
