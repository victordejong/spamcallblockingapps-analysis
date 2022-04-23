package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.ba;
import com.google.android.play.core.internal.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bb.class */
public final class bb {

    /* renamed from: a  reason: collision with root package name */
    static final h f31154a = new h("ExtractorSessionStoreView");

    /* renamed from: b  reason: collision with root package name */
    final w f31155b;

    /* renamed from: c  reason: collision with root package name */
    final ba<cs> f31156c;

    /* renamed from: d  reason: collision with root package name */
    final ap f31157d;
    final Map<Integer, ay> e = new HashMap();
    final ReentrantLock f = new ReentrantLock();
    private final ba<Executor> g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(w wVar, ba<cs> baVar, ap apVar, ba<Executor> baVar2) {
        this.f31155b = wVar;
        this.f31156c = baVar;
        this.f31157d = apVar;
        this.g = baVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        if (stringArrayList != null && !stringArrayList.isEmpty()) {
            return stringArrayList.get(0);
        }
        throw new al("Session without pack received.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<T> b(List<T> list) {
        List<T> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> T a(ba<T> baVar) {
        try {
            this.f.lock();
            return baVar.a();
        } finally {
            this.f.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, ay> a(List<String> list) {
        return (Map) a(new au(this, list, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        a(new at(this, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ay b(int i) {
        Map<Integer, ay> map = this.e;
        Integer valueOf = Integer.valueOf(i);
        ay ayVar = map.get(valueOf);
        if (ayVar != null) {
            return ayVar;
        }
        throw new al(String.format("Could not find session %d while trying to get it", valueOf), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map c(List list) {
        int i;
        Map<String, ay> a2 = a(list);
        HashMap hashMap = new HashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            final ay ayVar = a2.get(str);
            if (ayVar == null) {
                i = 8;
            } else {
                if (bj.a(ayVar.f31149c.f31145c)) {
                    try {
                        ayVar.f31149c.f31145c = 6;
                        this.g.a().execute(new Runnable(this, ayVar) { // from class: com.google.android.play.core.assetpacks.av

                            /* renamed from: a  reason: collision with root package name */
                            private final bb f31140a;

                            /* renamed from: b  reason: collision with root package name */
                            private final ay f31141b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f31140a = this;
                                this.f31141b = ayVar;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f31140a.a(this.f31141b.f31147a);
                            }
                        });
                        this.f31157d.a(str);
                    } catch (al e) {
                        f31154a.c("Session %d with pack %s does not exist, no need to cancel.", Integer.valueOf(ayVar.f31147a), str);
                    }
                }
                i = ayVar.f31149c.f31145c;
            }
            hashMap.put(str, Integer.valueOf(i));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(int i) {
        a(new at(this, i, null));
    }
}
