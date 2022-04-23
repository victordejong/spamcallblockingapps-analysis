package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzakd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakd.class */
public class zzakd<ReferenceT> implements zzake {

    /* renamed from: a */
    public final Map<String, CopyOnWriteArrayList<zzahq<? super ReferenceT>>> f24155a = new HashMap();

    /* renamed from: b */
    public ReferenceT f24156b;

    /* renamed from: a */
    public final /* synthetic */ void m16711a(zzahq zzahqVar, Map map) {
        zzahqVar.mo14168a(this.f24156b, map);
    }

    /* renamed from: a */
    public final void m16710a(ReferenceT referencet) {
        this.f24156b = referencet;
    }

    /* renamed from: a */
    public final void m16709a(String str, Predicate<zzahq<? super ReferenceT>> predicate) {
        synchronized (this) {
            CopyOnWriteArrayList<zzahq<? super ReferenceT>> copyOnWriteArrayList = this.f24155a.get(str);
            if (copyOnWriteArrayList != null) {
                ArrayList arrayList = new ArrayList();
                Iterator<zzahq<? super ReferenceT>> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    zzahq<? super ReferenceT> next = it.next();
                    if (predicate.apply(next)) {
                        arrayList.add(next);
                    }
                }
                copyOnWriteArrayList.removeAll(arrayList);
            }
        }
    }

    /* renamed from: a */
    public final void m16708a(String str, zzahq<? super ReferenceT> zzahqVar) {
        synchronized (this) {
            CopyOnWriteArrayList<zzahq<? super ReferenceT>> copyOnWriteArrayList = this.f24155a.get(str);
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.remove(zzahqVar);
            }
        }
    }

    /* renamed from: a */
    public final boolean m16712a(Uri uri) {
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            return false;
        }
        m16707b(uri);
        return true;
    }

    /* renamed from: b */
    public final void m16707b(Uri uri) {
        String path = uri.getPath();
        zzp.m17969c();
        m16705b(path, zzayu.m16109b(uri));
    }

    /* renamed from: b */
    public final void m16706b(String str, zzahq<? super ReferenceT> zzahqVar) {
        synchronized (this) {
            CopyOnWriteArrayList<zzahq<? super ReferenceT>> copyOnWriteArrayList = this.f24155a.get(str);
            CopyOnWriteArrayList<zzahq<? super ReferenceT>> copyOnWriteArrayList2 = copyOnWriteArrayList;
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
                this.f24155a.put(str, copyOnWriteArrayList2);
            }
            copyOnWriteArrayList2.add(zzahqVar);
        }
    }

    /* renamed from: b */
    public final void m16705b(final String str, final Map<String, String> map) {
        synchronized (this) {
            if (zzbbq.m15859a(2)) {
                String valueOf = String.valueOf(str);
                zzayp.m16153g(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
                for (String str2 : map.keySet()) {
                    String str3 = map.get(str2);
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                    sb.append("  ");
                    sb.append(str2);
                    sb.append(": ");
                    sb.append(str3);
                    zzayp.m16153g(sb.toString());
                }
            }
            CopyOnWriteArrayList<zzahq<? super ReferenceT>> copyOnWriteArrayList = this.f24155a.get(str);
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23692I3)).booleanValue() && zzp.m17965g().m16184c() != null) {
                    zzbbz.f24764a.execute(new Runnable(str) { // from class: c.d.b.d.g.a.b1

                        /* renamed from: a */
                        public final String f12323a;

                        {
                            this.f12323a = str;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzp.m17965g().m16184c().m16897b(this.f12323a.substring(1));
                        }
                    });
                    return;
                }
                return;
            }
            Iterator<zzahq<? super ReferenceT>> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                final zzahq<? super ReferenceT> next = it.next();
                zzbbz.f24768e.execute(new Runnable(this, next, map) { // from class: c.d.b.d.g.a.c1

                    /* renamed from: a */
                    public final zzakd f12512a;

                    /* renamed from: b */
                    public final zzahq f12513b;

                    /* renamed from: c */
                    public final Map f12514c;

                    {
                        this.f12512a = this;
                        this.f12513b = next;
                        this.f12514c = map;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12512a.m16711a(this.f12513b, this.f12514c);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzake
    /* renamed from: f */
    public final boolean mo16703f(String str) {
        return str != null && m16712a(Uri.parse(str));
    }

    /* renamed from: p */
    public final void m16704p() {
        synchronized (this) {
            this.f24155a.clear();
        }
    }
}
