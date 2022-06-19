package com.appnext.core;

import android.os.Handler;
import android.os.Looper;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0533d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;
/* renamed from: com.appnext.core.a */
/* loaded from: classes-dex2jar.jar:com/appnext/core/a.class */
public final class C0519a {
    private String placementID;

    /* renamed from: m */
    private int f1734m = 0;

    /* renamed from: cy */
    private Long f1732cy = 0L;
    private ArrayList<?> ads = null;

    /* renamed from: cA */
    private String f1731cA = "";

    /* renamed from: cz */
    private ArrayList<AbstractC0533d.AbstractC0538a> f1733cz = new ArrayList<>();

    /* renamed from: a */
    public final void m42472a(AbstractC0533d.AbstractC0538a abstractC0538a) {
        try {
            synchronized (this.f1733cz) {
                ListIterator<AbstractC0533d.AbstractC0538a> listIterator = this.f1733cz.listIterator();
                if (abstractC0538a != null && listIterator != null) {
                    listIterator.add(abstractC0538a);
                }
            }
        } catch (Throwable th) {
            C0472a.m42577a("AdContainer$addListener", th);
        }
    }

    /* renamed from: a */
    public final void m42471a(ArrayList<?> arrayList, boolean z) {
        this.ads = arrayList;
        if (z) {
            this.f1732cy = Long.valueOf(System.currentTimeMillis());
        }
    }

    /* renamed from: am */
    public final Long m42470am() {
        return this.f1732cy;
    }

    /* renamed from: an */
    public final int m42469an() {
        return this.f1734m;
    }

    /* renamed from: b */
    public final void m42468b(int i) {
        this.f1734m = i;
    }

    /* renamed from: c */
    public final void m42467c(ArrayList<?> arrayList) {
        m42471a(arrayList, true);
    }

    public final ArrayList<?> getAds() {
        try {
            if (this.ads == null) {
                return null;
            }
            ArrayList<?> arrayList = new ArrayList<>();
            Iterator<?> it = this.ads.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            return arrayList;
        } catch (Throwable th) {
            return new ArrayList<>();
        }
    }

    public final String getPlacementID() {
        return this.placementID;
    }

    /* renamed from: o */
    public final void m42466o(String str) {
        this.f1731cA = str;
    }

    /* renamed from: p */
    public final void m42465p(final String str) {
        synchronized (this) {
            try {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.a.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            synchronized (C0519a.this.f1733cz) {
                                ListIterator listIterator = C0519a.this.f1733cz.listIterator();
                                while (listIterator.hasNext()) {
                                    ((AbstractC0533d.AbstractC0538a) listIterator.next()).error(str);
                                    listIterator.remove();
                                }
                            }
                        } catch (Throwable th) {
                            C0472a.m42577a("AdContainer$notifyListenersError", th);
                        }
                    }
                });
            } catch (Throwable th) {
                C0472a.m42577a("AdContainer$notifyListenersError", th);
            }
        }
    }

    public final void setPlacementID(String str) {
        this.placementID = str;
    }

    /* renamed from: u */
    public final String m42464u() {
        return this.f1731cA;
    }
}
