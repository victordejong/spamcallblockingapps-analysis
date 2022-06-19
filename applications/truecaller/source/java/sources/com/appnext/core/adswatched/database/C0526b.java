package com.appnext.core.adswatched.database;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: com.appnext.core.adswatched.database.b */
/* loaded from: classes-dex2jar.jar:com/appnext/core/adswatched/database/b.class */
public final class C0526b implements AbstractC0525a {

    /* renamed from: ev */
    private final AbstractC25677q f1745ev;

    /* renamed from: ew */
    private final AbstractC25663k<AdWatched> f1746ew;

    /* renamed from: ex */
    private final AbstractC25646c0 f1747ex;

    public C0526b(AbstractC25677q abstractC25677q) {
        this.f1745ev = abstractC25677q;
        this.f1746ew = new 1(this, abstractC25677q);
        this.f1747ex = new AbstractC25646c0(abstractC25677q) { // from class: com.appnext.core.adswatched.database.b.2
            @Override // p1727n3.p1751c0.AbstractC25646c0
            public final String createQuery() {
                return "DELETE FROM adwatched WHERE adwatched.auid Like ?";
            }
        };
    }

    @Override // com.appnext.core.adswatched.database.AbstractC0525a
    /* renamed from: C */
    public final List<String> mo42454C(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT adwatched.bannerId FROM adwatched WHERE  adwatched.auid Like ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f1745ev.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f1745ev, m3059j, false, null);
        try {
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(m3090b.getString(0));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // com.appnext.core.adswatched.database.AbstractC0525a
    /* renamed from: D */
    public final int mo42453D(String str) {
        this.f1745ev.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f1747ex.acquire();
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f1745ev.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f1745ev.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f1745ev.endTransaction();
            this.f1747ex.release(acquire);
        }
    }

    @Override // com.appnext.core.adswatched.database.AbstractC0525a
    /* renamed from: a */
    public final long mo42452a(AdWatched adWatched) {
        this.f1745ev.assertNotSuspendingTransaction();
        this.f1745ev.beginTransaction();
        try {
            long insertAndReturnId = this.f1746ew.insertAndReturnId(adWatched);
            this.f1745ev.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f1745ev.endTransaction();
        }
    }
}
