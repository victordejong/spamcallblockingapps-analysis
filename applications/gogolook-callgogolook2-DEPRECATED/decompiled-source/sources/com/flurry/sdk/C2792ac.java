package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.C2808ag;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
/* renamed from: com.flurry.sdk.ac */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ac.class */
public class C2792ac {

    /* renamed from: a */
    public static final String f3935a = "ac";

    /* renamed from: b */
    public final TreeSet<C2853ay> f3936b = new TreeSet<>();

    /* renamed from: c */
    public final AbstractC3344jl<C2808ag> f3937c = new AbstractC3344jl<C2808ag>() { // from class: com.flurry.sdk.ac.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C2808ag agVar) {
            if (C2808ag.EnumC2809a.RESUME.equals(agVar.f3976a)) {
                C2792ac.this.m33682c();
            }
        }
    };

    /* renamed from: d */
    public final AbstractC3344jl<C2876bk> f3938d = new AbstractC3344jl<C2876bk>() { // from class: com.flurry.sdk.ac.2
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C2876bk bkVar) {
            C2792ac.this.m33686a(bkVar.f4297a);
        }
    };

    public C2792ac(String str) {
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.AssetCacheManagerStatusEvent", this.f3937c);
        C3345jm.m32636a().m32632a("com.flurry.android.impl.ads.FreqCapEvent", this.f3938d);
    }

    /* renamed from: a */
    public final int m33687a() {
        int size;
        synchronized (this) {
            m33681d();
            size = this.f3936b.size();
        }
        return size;
    }

    /* renamed from: a */
    public final void m33686a(C2877bl blVar) {
        synchronized (this) {
            if (blVar != null) {
                Iterator<C2853ay> it = this.f3936b.iterator();
                while (it.hasNext()) {
                    C2853ay next = it.next();
                    List<C2916cm> list = next.f4111b.f4147b.f4441g;
                    if (list != null) {
                        for (C2916cm cmVar : list) {
                            if (blVar.f4298a.equals(cmVar.f4491a) && blVar.f4299b.equals(cmVar.f4492b)) {
                                String str = f3935a;
                                C3356jq.m32615a(3, str, "Removed frequency capped ad unit -- adspace: " + next.m33522h());
                                it.remove();
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33685a(String str) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str)) {
                Iterator<C2853ay> it = this.f3936b.iterator();
                while (it.hasNext()) {
                    C2853ay next = it.next();
                    if (next.f4111b.f4147b.f4443i.equals(str)) {
                        String str2 = f3935a;
                        C3356jq.m32615a(3, str2, "Removed grouped ad unit -- adspace: " + next.m33522h());
                        it.remove();
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33684a(Collection<C2853ay> collection) {
        synchronized (this) {
            if (collection != null) {
                this.f3936b.addAll(collection);
            }
        }
    }

    /* renamed from: b */
    public final List<C2853ay> m33683b() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            C2853ay pollFirst = this.f3936b.pollFirst();
            if (pollFirst != null) {
                arrayList.add(pollFirst);
                String str = pollFirst.f4111b.f4147b.f4443i;
                if (!TextUtils.isEmpty(str)) {
                    Iterator<C2853ay> it = this.f3936b.iterator();
                    while (it.hasNext()) {
                        C2853ay next = it.next();
                        if (!str.equals(next.f4111b.f4147b.f4443i)) {
                            break;
                        }
                        arrayList.add(next);
                        it.remove();
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final void m33682c() {
        synchronized (this) {
            final ArrayList arrayList = new ArrayList(this.f3936b);
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.ac.3
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C3484p.m32358a().f6006h.m33644a(arrayList);
                }
            });
        }
    }

    /* renamed from: d */
    public final void m33681d() {
        synchronized (this) {
            Iterator<C2853ay> it = this.f3936b.iterator();
            while (it.hasNext()) {
                C2853ay next = it.next();
                if (!C3445la.m32468a(next.f4111b.f4147b.f4438d)) {
                    String str = f3935a;
                    C3356jq.m32615a(3, str, "Removed expired ad unit -- adspace: " + next.m33522h());
                    it.remove();
                }
            }
        }
    }
}
