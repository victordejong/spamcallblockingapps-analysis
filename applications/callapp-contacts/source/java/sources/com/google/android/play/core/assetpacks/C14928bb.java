package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.C15072h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.google.android.play.core.assetpacks.bb */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bb.class */
public final class C14928bb {

    /* renamed from: a */
    static final C15072h f54494a = new C15072h("ExtractorSessionStoreView");

    /* renamed from: b */
    final C14996w f54495b;

    /* renamed from: c */
    final AbstractC15037ba<AbstractC14972cs> f54496c;

    /* renamed from: d */
    final C14915ap f54497d;

    /* renamed from: e */
    final Map<Integer, C14924ay> f54498e = new HashMap();

    /* renamed from: f */
    final ReentrantLock f54499f = new ReentrantLock();

    /* renamed from: g */
    private final AbstractC15037ba<Executor> f54500g;

    public C14928bb(C14996w c14996w, AbstractC15037ba<AbstractC14972cs> abstractC15037ba, C14915ap c14915ap, AbstractC15037ba<Executor> abstractC15037ba2) {
        this.f54495b = c14996w;
        this.f54496c = abstractC15037ba;
        this.f54497d = c14915ap;
        this.f54500g = abstractC15037ba2;
    }

    /* renamed from: a */
    public static String m9762a(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            throw new C14911al("Session without pack received.");
        }
        return stringArrayList.get(0);
    }

    /* renamed from: b */
    public static <T> List<T> m9758b(List<T> list) {
        List<T> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: a */
    public final <T> T m9761a(AbstractC14927ba<T> abstractC14927ba) {
        try {
            this.f54499f.lock();
            return abstractC14927ba.mo9764a();
        } finally {
            this.f54499f.unlock();
        }
    }

    /* renamed from: a */
    public final Map<String, C14924ay> m9760a(List<String> list) {
        return (Map) m9761a(new C14920au(this, list, null));
    }

    /* renamed from: a */
    public final void m9763a(int i) {
        m9761a(new C14919at(this, i));
    }

    /* renamed from: b */
    public final C14924ay m9759b(int i) {
        Map<Integer, C14924ay> map = this.f54498e;
        Integer valueOf = Integer.valueOf(i);
        C14924ay c14924ay = map.get(valueOf);
        if (c14924ay != null) {
            return c14924ay;
        }
        throw new C14911al(String.format("Could not find session %d while trying to get it", valueOf), i);
    }

    /* renamed from: c */
    public final /* synthetic */ Map m9756c(List list) {
        int i;
        Map<String, C14924ay> m9760a = m9760a(list);
        HashMap hashMap = new HashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            C14924ay c14924ay = m9760a.get(str);
            if (c14924ay == null) {
                i = 8;
            } else {
                if (C14936bj.m9749a(c14924ay.f54487c.f54482c)) {
                    try {
                        c14924ay.f54487c.f54482c = 6;
                        this.f54500g.mo9335a().execute(new Runnable(this, c14924ay) { // from class: com.google.android.play.core.assetpacks.av

                            /* renamed from: a */
                            private final C14928bb f54477a;

                            /* renamed from: b */
                            private final C14924ay f54478b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f54477a = this;
                                this.f54478b = c14924ay;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f54477a.m9763a(this.f54478b.f54485a);
                            }
                        });
                        this.f54497d.m9778a(str);
                    } catch (C14911al e) {
                        f54494a.m9508c("Session %d with pack %s does not exist, no need to cancel.", Integer.valueOf(c14924ay.f54485a), str);
                    }
                }
                i = c14924ay.f54487c.f54482c;
            }
            hashMap.put(str, Integer.valueOf(i));
        }
        return hashMap;
    }

    /* renamed from: c */
    public final void m9757c(int i) {
        m9761a(new C14919at(this, i, null));
    }
}
