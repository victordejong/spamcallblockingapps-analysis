package com.appnext.core.p018ra.database;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: com.appnext.core.ra.database.c */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/database/c.class */
public final class C0583c implements AbstractC0582b {

    /* renamed from: eT */
    private final AbstractC25663k<C0581a> f1879eT;

    /* renamed from: eU */
    private final AbstractC25663k<C0581a> f1880eU;

    /* renamed from: eV */
    private final AbstractC25646c0 f1881eV;

    /* renamed from: ev */
    private final AbstractC25677q f1882ev;

    public C0583c(AbstractC25677q abstractC25677q) {
        this.f1882ev = abstractC25677q;
        this.f1879eT = new 1(this, abstractC25677q);
        this.f1880eU = new 2(this, abstractC25677q);
        this.f1881eV = new AbstractC25646c0(abstractC25677q) { // from class: com.appnext.core.ra.database.c.3
            @Override // p1727n3.p1751c0.AbstractC25646c0
            public final String createQuery() {
                return "DELETE FROM recentapp WHERE storeDate NOT LIKE ?";
            }
        };
    }

    @Override // com.appnext.core.p018ra.database.AbstractC0582b
    /* renamed from: E */
    public final int mo42303E(String str) {
        this.f1882ev.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f1881eV.acquire();
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f1882ev.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f1882ev.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f1882ev.endTransaction();
            this.f1881eV.release(acquire);
        }
    }

    @Override // com.appnext.core.p018ra.database.AbstractC0582b
    /* renamed from: aR */
    public final List<C0581a> mo42302aR() {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM recentapp", 0);
        this.f1882ev.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f1882ev, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "recentAppPackage");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "storeDate");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "sent");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C0581a c0581a = new C0581a();
                c0581a.f1876eQ = m3090b.getString(m43237g0);
                c0581a.f1877eR = m3090b.getString(m43237g02);
                c0581a.f1878eS = m3090b.getInt(m43237g03) != 0;
                arrayList.add(c0581a);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // com.appnext.core.p018ra.database.AbstractC0582b
    /* renamed from: aS */
    public final List<C0581a> mo42301aS() {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM recentapp WHERE sent = 0", 0);
        this.f1882ev.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f1882ev, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "recentAppPackage");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "storeDate");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "sent");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C0581a c0581a = new C0581a();
                c0581a.f1876eQ = m3090b.getString(m43237g0);
                c0581a.f1877eR = m3090b.getString(m43237g02);
                c0581a.f1878eS = m3090b.getInt(m43237g03) != 0;
                arrayList.add(c0581a);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // com.appnext.core.p018ra.database.AbstractC0582b
    /* renamed from: b */
    public final long[] mo42300b(List<C0581a> list) {
        this.f1882ev.assertNotSuspendingTransaction();
        this.f1882ev.beginTransaction();
        try {
            long[] insertAndReturnIdsArray = this.f1879eT.insertAndReturnIdsArray(list);
            this.f1882ev.setTransactionSuccessful();
            return insertAndReturnIdsArray;
        } finally {
            this.f1882ev.endTransaction();
        }
    }

    @Override // com.appnext.core.p018ra.database.AbstractC0582b
    /* renamed from: c */
    public final void mo42299c(List<C0581a> list) {
        this.f1882ev.assertNotSuspendingTransaction();
        this.f1882ev.beginTransaction();
        try {
            this.f1880eU.insert(list);
            this.f1882ev.setTransactionSuccessful();
        } finally {
            this.f1882ev.endTransaction();
        }
    }
}
