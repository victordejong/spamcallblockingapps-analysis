package p193e.p194a.p1114o5;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.multisim.SimInfo;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p712e4.AbstractC13490i;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.z.c.l;
/* renamed from: e.a.o5.v0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/v0.class */
public final class C19111v0 implements AbstractC19108u0 {

    /* renamed from: a */
    public final AbstractC13497p f53331a;

    /* renamed from: b */
    public final AbstractC6392i0 f53332b;

    /* renamed from: c */
    public final Context f53333c;

    public C19111v0(AbstractC13497p abstractC13497p, AbstractC6392i0 abstractC6392i0, Context context) {
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC6392i0, "messagingSettings");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53331a = abstractC13497p;
        this.f53332b = abstractC6392i0;
        this.f53333c = context;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19108u0
    /* renamed from: a */
    public String mo14091a(Uri uri) {
        l.e(uri, "uri");
        Cursor query = this.f53333c.getContentResolver().query(uri, null, null, null, null);
        if (query != null) {
            try {
                int columnIndex = query.getColumnIndex("_display_name");
                if (query.moveToFirst()) {
                    String string = query.getString(columnIndex);
                    l.d(string, "cursor.getString(nameIndex)");
                    th = null;
                    return string;
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            lastPathSegment = "";
        }
        return lastPathSegment;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19108u0
    /* renamed from: b */
    public long mo14090b(int i) {
        return (i * 2000000) / 8;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19108u0
    /* renamed from: c */
    public long mo14089c(long j) {
        return j / 250000;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    @Override // p193e.p194a.p1114o5.AbstractC19108u0
    /* renamed from: d */
    public long mo14088d(int i) {
        char c;
        if (i == 2) {
            c = this.f53332b.mo31042l();
        } else if (!this.f53331a.mo21740h()) {
            String mo21743b = this.f53331a.mo21743b();
            l.d(mo21743b, "multiSimManager.defaultSimToken");
            c = m14087e(mo21743b);
        } else {
            Long m14086f = m14086f(0);
            Long m14086f2 = m14086f(1);
            if (m14086f == null || m14086f2 == null) {
                if (m14086f == null) {
                    m14086f = m14086f2;
                }
                c = m14086f != null ? m14086f.longValue() : this.f53332b.mo30974x1();
            } else {
                c = Math.min(m14086f.longValue(), m14086f2.longValue());
            }
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: e */
    public final long m14087e(String str) {
        AbstractC13490i mo21726i = this.f53331a.mo21726i(str);
        l.d(mo21726i, "multiSimManager.getCarrierConfiguration(simToken)");
        ?? mo21758g = mo21726i.mo21758g();
        char c = mo21758g;
        if (mo21758g <= 0) {
            c = this.f53332b.mo30974x1();
        }
        return c;
    }

    /* renamed from: f */
    public final Long m14086f(int i) {
        SimInfo mo21741e = this.f53331a.mo21741e(i);
        if (mo21741e != null) {
            l.d(mo21741e, "multiSimManager.getSimIn…SlotIndex) ?: return null");
            String str = mo21741e.f13984b;
            l.d(str, "simInfo.simToken");
            return Long.valueOf(m14087e(str));
        }
        return null;
    }
}
