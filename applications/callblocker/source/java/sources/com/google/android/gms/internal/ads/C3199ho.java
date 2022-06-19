package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.util.AbstractC2717n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.ho */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ho.class */
public class C3199ho<ReferenceT> implements AbstractC3196hl {

    /* renamed from: a */
    private final Map<String, CopyOnWriteArrayList<AbstractC3131fa<? super ReferenceT>>> f16718a = new HashMap();

    /* renamed from: b */
    private ReferenceT f16719b;

    /* renamed from: a */
    private final void m7787a(String str, Map<String, String> map) {
        synchronized (this) {
            if (C3556uu.m6753a(2)) {
                String valueOf = String.valueOf(str);
                C3556uu.m7052a(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
                for (String str2 : map.keySet()) {
                    String str3 = map.get(str2);
                    C3556uu.m7052a(new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length()).append("  ").append(str2).append(": ").append(str3).toString());
                }
            }
            CopyOnWriteArrayList<AbstractC3131fa<? super ReferenceT>> copyOnWriteArrayList = this.f16718a.get(str);
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                Iterator<AbstractC3131fa<? super ReferenceT>> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    C3650yg.f17646e.execute(new Runnable(this, it.next(), map) { // from class: com.google.android.gms.internal.ads.hn

                        /* renamed from: a */
                        private final C3199ho f16715a;

                        /* renamed from: b */
                        private final AbstractC3131fa f16716b;

                        /* renamed from: c */
                        private final Map f16717c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f16715a = this;
                            this.f16716b = next;
                            this.f16717c = map;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f16715a.m7791a(this.f16716b, this.f16717c);
                        }
                    });
                }
            } else if (((Boolean) dyx.m8158e().m7876a(edi.f16501dA)).booleanValue() && C2341q.m14740g().m7100a() != null) {
                C3650yg.f17642a.execute(new Runnable(str) { // from class: com.google.android.gms.internal.ads.hq

                    /* renamed from: a */
                    private final String f16720a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f16720a = str;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        C2341q.m14740g().m7100a().m8105b(this.f16720a.substring(1));
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m7791a(AbstractC3131fa abstractC3131fa, Map map) {
        abstractC3131fa.mo7414a(this.f16719b, map);
    }

    /* renamed from: a */
    public final void m7790a(ReferenceT referencet) {
        this.f16719b = referencet;
    }

    /* renamed from: a */
    public final void m7789a(String str, AbstractC2717n<AbstractC3131fa<? super ReferenceT>> abstractC2717n) {
        synchronized (this) {
            CopyOnWriteArrayList<AbstractC3131fa<? super ReferenceT>> copyOnWriteArrayList = this.f16718a.get(str);
            if (copyOnWriteArrayList != null) {
                ArrayList arrayList = new ArrayList();
                Iterator<AbstractC3131fa<? super ReferenceT>> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    AbstractC3131fa<? super ReferenceT> next = it.next();
                    if (abstractC2717n.mo7772a(next)) {
                        arrayList.add(next);
                    }
                }
                copyOnWriteArrayList.removeAll(arrayList);
            }
        }
    }

    /* renamed from: a */
    public final void m7788a(String str, AbstractC3131fa<? super ReferenceT> abstractC3131fa) {
        synchronized (this) {
            CopyOnWriteArrayList<AbstractC3131fa<? super ReferenceT>> copyOnWriteArrayList = this.f16718a.get(str);
            CopyOnWriteArrayList<AbstractC3131fa<? super ReferenceT>> copyOnWriteArrayList2 = copyOnWriteArrayList;
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
                this.f16718a.put(str, copyOnWriteArrayList2);
            }
            copyOnWriteArrayList2.add(abstractC3131fa);
        }
    }

    /* renamed from: a */
    public final boolean m7792a(Uri uri) {
        boolean z;
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            z = false;
        } else {
            m7786b(uri);
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final void m7786b(Uri uri) {
        String path = uri.getPath();
        C2341q.m14744c();
        m7787a(path, C3567ve.m6973b(uri));
    }

    /* renamed from: b */
    public final void m7785b(String str, AbstractC3131fa<? super ReferenceT> abstractC3131fa) {
        synchronized (this) {
            CopyOnWriteArrayList<AbstractC3131fa<? super ReferenceT>> copyOnWriteArrayList = this.f16718a.get(str);
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.remove(abstractC3131fa);
            }
        }
    }

    /* renamed from: d */
    public final void m7784d() {
        synchronized (this) {
            this.f16718a.clear();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3196hl
    /* renamed from: h */
    public final boolean mo7783h(String str) {
        return str != null && m7792a(Uri.parse(str));
    }
}
