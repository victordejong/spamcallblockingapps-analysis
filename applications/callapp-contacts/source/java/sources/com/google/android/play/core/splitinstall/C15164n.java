package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.play.core.internal.AbstractC15020ak;
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
/* renamed from: com.google.android.play.core.splitinstall.n */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/n.class */
public final class C15164n {

    /* renamed from: b */
    private static final C15072h f54978b = new C15072h("SplitInstallService");

    /* renamed from: c */
    private static final Intent f54979c = new Intent("com.google.android.play.core.splitinstall.BIND_SPLIT_INSTALL_SERVICE").setPackage("com.android.vending");

    /* renamed from: a */
    C15082r<AbstractC15020ak> f54980a;

    /* renamed from: d */
    private final String f54981d;

    public C15164n(Context context) {
        this.f54981d = context.getPackageName();
        if (C15024ao.m9585a(context)) {
            this.f54980a = new C15082r<>(C15121q.m9423a(context), f54978b, "SplitInstallService", f54979c, C15157h.f54966a);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Bundle m9357a() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11000);
        return bundle;
    }

    /* renamed from: a */
    public static /* synthetic */ ArrayList m9354a(Collection collection) {
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

    /* renamed from: b */
    public static /* synthetic */ ArrayList m9351b(Collection collection) {
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

    /* renamed from: c */
    private static <T> AbstractC15180d<T> m9350c() {
        f54978b.m9509b("onError(%d)", -14);
        return C15182f.m9329a((Exception) new SplitInstallException(-14));
    }

    /* renamed from: a */
    public final AbstractC15180d<AbstractC15152c> m9356a(int i) {
        if (this.f54980a == null) {
            return m9350c();
        }
        f54978b.m9508c("getSessionState(%d)", Integer.valueOf(i));
        C15192p c15192p = new C15192p();
        this.f54980a.m9504a(new C15159j(this, c15192p, i, c15192p));
        return c15192p.f55025a;
    }

    /* renamed from: a */
    public final AbstractC15180d<Integer> m9353a(Collection<String> collection, Collection<String> collection2) {
        if (this.f54980a == null) {
            return m9350c();
        }
        f54978b.m9508c("startInstall(%s,%s)", collection, collection2);
        C15192p c15192p = new C15192p();
        this.f54980a.m9504a(new C15158i(this, c15192p, collection, collection2, c15192p));
        return c15192p.f55025a;
    }
}
