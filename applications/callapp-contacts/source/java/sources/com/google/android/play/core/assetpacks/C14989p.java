package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.play.core.internal.AbstractC15060bx;
import com.google.android.play.core.internal.C15024ao;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.splitcompat.C15121q;
import com.google.android.play.core.tasks.AbstractC15180d;
import com.google.android.play.core.tasks.C15182f;
import com.google.android.play.core.tasks.C15192p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.assetpacks.p */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/p.class */
public final class C14989p implements AbstractC14972cs {

    /* renamed from: a */
    private static final C15072h f54688a = new C15072h("AssetPackServiceImpl");

    /* renamed from: b */
    private static final Intent f54689b = new Intent("com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE").setPackage("com.android.vending");

    /* renamed from: c */
    private final String f54690c;

    /* renamed from: d */
    private final C14915ap f54691d;

    /* renamed from: e */
    private C15082r<AbstractC15060bx> f54692e;

    /* renamed from: f */
    private C15082r<AbstractC15060bx> f54693f;

    /* renamed from: g */
    private final AtomicBoolean f54694g = new AtomicBoolean();

    public C14989p(Context context, C14915ap c14915ap) {
        this.f54690c = context.getPackageName();
        this.f54691d = c14915ap;
        if (C15024ao.m9585a(context)) {
            Context m9423a = C15121q.m9423a(context);
            C15072h c15072h = f54688a;
            Intent intent = f54689b;
            this.f54692e = new C15082r<>(m9423a, c15072h, "AssetPackService", intent, C14973ct.f54646b);
            this.f54693f = new C15082r<>(C15121q.m9423a(context), c15072h, "AssetPackService-keepAlive", intent, C14973ct.f54645a);
        }
        f54688a.m9511a("AssetPackService initiated.", new Object[0]);
    }

    /* renamed from: a */
    public static /* synthetic */ ArrayList m9688a(Collection collection) {
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

    /* renamed from: a */
    public static /* synthetic */ List m9689a(C14989p c14989p, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            AbstractC14926b next = AbstractC14953c.m9716a((Bundle) it2.next(), c14989p.f54691d, new ArrayList(), C14995v.f54710a).mo9715b().values().iterator().next();
            if (next == null) {
                f54688a.m9509b("onGetSessionStates: Bundle contained no pack.", new Object[0]);
            }
            if (C14936bj.m9749a(next.mo9771b())) {
                arrayList.add(next.mo9774a());
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m9693a(int i, String str, int i2) {
        if (this.f54692e != null) {
            f54688a.m9508c("notifyModuleCompleted", new Object[0]);
            C15192p c15192p = new C15192p();
            this.f54692e.m9504a(new C14978f(this, c15192p, i, str, c15192p, i2));
            return;
        }
        throw new C14911al("The Play Store app is not installed or is an unofficial version.", i);
    }

    /* renamed from: b */
    public static /* synthetic */ Bundle m9680b(Map map) {
        Bundle m9672e = m9672e();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (Map.Entry entry : map.entrySet()) {
            Bundle bundle = new Bundle();
            bundle.putString("installed_asset_module_name", (String) entry.getKey());
            bundle.putLong("installed_asset_module_version", ((Long) entry.getValue()).longValue());
            arrayList.add(bundle);
        }
        m9672e.putParcelableArrayList("installed_asset_module", arrayList);
        return m9672e;
    }

    /* renamed from: c */
    public static Bundle m9678c(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", i);
        return bundle;
    }

    /* renamed from: c */
    public static Bundle m9677c(int i, String str) {
        Bundle m9678c = m9678c(i);
        m9678c.putString("module_name", str);
        return m9678c;
    }

    /* renamed from: c */
    public static /* synthetic */ Bundle m9676c(int i, String str, String str2, int i2) {
        Bundle m9677c = m9677c(i, str);
        m9677c.putString("slice_id", str2);
        m9677c.putInt("chunk_number", i2);
        return m9677c;
    }

    /* renamed from: d */
    private static <T> AbstractC15180d<T> m9674d() {
        f54688a.m9509b("onError(%d)", -11);
        return C15182f.m9329a((Exception) new AssetPackException(-11));
    }

    /* renamed from: e */
    public static Bundle m9672e() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11000);
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(0);
        arrayList.add(1);
        bundle.putIntegerArrayList("supported_compression_formats", arrayList);
        bundle.putIntegerArrayList("supported_patch_formats", new ArrayList<>());
        return bundle;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final AbstractC15180d<List<String>> mo9686a(Map<String, Long> map) {
        if (this.f54692e == null) {
            return m9674d();
        }
        f54688a.m9508c("syncPacks", new Object[0]);
        C15192p c15192p = new C15192p();
        this.f54692e.m9504a(new C14975cv(this, c15192p, map, c15192p));
        return c15192p.f55025a;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9696a() {
        synchronized (this) {
            if (this.f54693f == null) {
                f54688a.m9507d("Keep alive connection manager is not initialized.", new Object[0]);
                return;
            }
            C15072h c15072h = f54688a;
            c15072h.m9508c("keepAlive", new Object[0]);
            if (!this.f54694g.compareAndSet(false, true)) {
                c15072h.m9508c("Service is already kept alive.", new Object[0]);
                return;
            }
            C15192p c15192p = new C15192p();
            this.f54693f.m9504a(new C14982j(this, c15192p, c15192p));
        }
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9695a(int i) {
        if (this.f54692e != null) {
            f54688a.m9508c("notifySessionFailed", new Object[0]);
            C15192p c15192p = new C15192p();
            this.f54692e.m9504a(new C14979g(this, c15192p, i, c15192p));
            return;
        }
        throw new C14911al("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9694a(int i, String str) {
        m9693a(i, str, 10);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9692a(int i, String str, String str2, int i2) {
        if (this.f54692e != null) {
            f54688a.m9508c("notifyChunkTransferred", new Object[0]);
            C15192p c15192p = new C15192p();
            this.f54692e.m9504a(new C14977e(this, c15192p, i, str, str2, i2, c15192p));
            return;
        }
        throw new C14911al("The Play Store app is not installed or is an unofficial version.", i);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: a */
    public final void mo9687a(List<String> list) {
        if (this.f54692e == null) {
            return;
        }
        f54688a.m9508c("cancelDownloads(%s)", list);
        C15192p c15192p = new C15192p();
        this.f54692e.m9504a(new C14974cu(this, c15192p, list, c15192p));
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14972cs
    /* renamed from: b */
    public final AbstractC15180d<ParcelFileDescriptor> mo9682b(int i, String str, String str2, int i2) {
        if (this.f54692e == null) {
            return m9674d();
        }
        f54688a.m9508c("getChunkFileDescriptor(%s, %s, %d, session=%d)", str, str2, Integer.valueOf(i2), Integer.valueOf(i));
        C15192p c15192p = new C15192p();
        this.f54692e.m9504a(new C14981i(this, c15192p, i, str, str2, i2, c15192p));
        return c15192p.f55025a;
    }
}
