package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aup.class */
public final class aup extends ate<dtr> implements dtr {
    @GuardedBy("this")

    /* renamed from: a */
    private Map<View, dtn> f10391a = new WeakHashMap(1);

    /* renamed from: b */
    private final Context f10392b;

    /* renamed from: c */
    private final cgr f10393c;

    public aup(Context context, Set<auq<dtr>> set, cgr cgrVar) {
        super(set);
        this.f10392b = context;
        this.f10393c = cgrVar;
    }

    /* renamed from: a */
    public final void m12420a(View view) {
        dtn dtnVar;
        synchronized (this) {
            dtn dtnVar2 = this.f10391a.get(view);
            if (dtnVar2 == null) {
                dtn dtnVar3 = new dtn(this.f10392b, view);
                dtnVar3.m8615a(this);
                this.f10391a.put(view, dtnVar3);
                dtnVar = dtnVar3;
            } else {
                dtnVar = dtnVar2;
            }
            if (this.f10393c != null && this.f10393c.f12968N) {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16346aE)).booleanValue()) {
                    dtnVar.m8620a(((Long) dyx.m8158e().m7876a(edi.f16345aD)).longValue());
                }
            }
            dtnVar.m8622a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dtr
    /* renamed from: a */
    public final void mo7170a(dtt dttVar) {
        synchronized (this) {
            m12775a(new atg(dttVar) { // from class: com.google.android.gms.internal.ads.aus

                /* renamed from: a */
                private final dtt f10399a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10399a = dttVar;
                }

                @Override // com.google.android.gms.internal.ads.atg
                /* renamed from: a */
                public final void mo11119a(Object obj) {
                    ((dtr) obj).mo7170a(this.f10399a);
                }
            });
        }
    }

    /* renamed from: b */
    public final void m12419b(View view) {
        synchronized (this) {
            if (this.f10391a.containsKey(view)) {
                this.f10391a.get(view).m8611b(this);
                this.f10391a.remove(view);
            }
        }
    }
}
