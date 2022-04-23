package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.play.core.internal.ak;
import com.google.android.play.core.internal.ao;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.r;
import com.google.android.play.core.splitcompat.q;
import com.google.android.play.core.tasks.d;
import com.google.android.play.core.tasks.f;
import com.google.android.play.core.tasks.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/n.class */
public final class n {

    /* renamed from: b  reason: collision with root package name */
    private static final h f31537b = new h("SplitInstallService");

    /* renamed from: c  reason: collision with root package name */
    private static final Intent f31538c = new Intent("com.google.android.play.core.splitinstall.BIND_SPLIT_INSTALL_SERVICE").setPackage("com.android.vending");

    /* renamed from: a  reason: collision with root package name */
    r<ak> f31539a;

    /* renamed from: d  reason: collision with root package name */
    private final String f31540d;

    public n(Context context) {
        this.f31540d = context.getPackageName();
        if (ao.a(context)) {
            this.f31539a = new r<>(q.a(context), f31537b, "SplitInstallService", f31538c, h.f31525a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11000);
        return bundle;
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
    public static /* synthetic */ ArrayList b(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            Bundle bundle = new Bundle();
            bundle.putString("language", str);
            arrayList.add(bundle);
        }
        return arrayList;
    }

    private static <T> d<T> c() {
        f31537b.b("onError(%d)", -14);
        return f.a((Exception) new SplitInstallException(-14));
    }

    public final d<c> a(int i) {
        if (this.f31539a == null) {
            return c();
        }
        f31537b.c("getSessionState(%d)", Integer.valueOf(i));
        p pVar = new p();
        this.f31539a.a(new j(this, pVar, i, pVar));
        return pVar.f31578a;
    }

    public final d<Integer> a(Collection<String> collection, Collection<String> collection2) {
        if (this.f31539a == null) {
            return c();
        }
        f31537b.c("startInstall(%s,%s)", collection, collection2);
        p pVar = new p();
        this.f31539a.a(new i(this, pVar, collection, collection2, pVar));
        return pVar.f31578a;
    }
}
