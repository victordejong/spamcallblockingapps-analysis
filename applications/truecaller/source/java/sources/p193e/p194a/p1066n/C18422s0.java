package p193e.p194a.p1066n;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteBlobTooBigException;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.analyitcs.BackupDurationEvent;
import com.truecaller.log.AssertionUtil;
import e.m.d.y.n;
import java.io.IOException;
import java.util.ArrayList;
import javax.inject.Inject;
import p193e.p194a.p1041l0.AbstractC17351f;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19280e;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.n.s0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/s0.class */
public final class C18422s0 implements AbstractC18419r0 {

    /* renamed from: a */
    public final ContentResolver f52044a;

    /* renamed from: b */
    public final AbstractC13497p f52045b;

    /* renamed from: c */
    public final AbstractC19219a0 f52046c;

    /* renamed from: d */
    public final AbstractC17351f f52047d;

    /* renamed from: e */
    public final AbstractC19222c f52048e;

    /* renamed from: f */
    public final AbstractC19462a f52049f;

    @Inject
    public C18422s0(Context context, AbstractC13497p abstractC13497p, AbstractC19219a0 abstractC19219a0, AbstractC17351f abstractC17351f, AbstractC19222c abstractC19222c, AbstractC19462a abstractC19462a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC17351f, "callLogInfoUtil");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f52045b = abstractC13497p;
        this.f52046c = abstractC19219a0;
        this.f52047d = abstractC17351f;
        this.f52048e = abstractC19222c;
        this.f52049f = abstractC19462a;
        this.f52044a = context.getContentResolver();
    }

    @Override // p193e.p194a.p1066n.AbstractC18419r0
    /* renamed from: a */
    public void mo15030a() {
        C18433t0 c18433t0;
        Cursor query;
        boolean z;
        Cursor query2;
        if (!this.f52046c.mo13825h("android.permission.READ_CALL_LOG") || !this.f52046c.mo13825h("android.permission.READ_PHONE_STATE")) {
            return;
        }
        long mo13819c = this.f52048e.mo13819c();
        String[] mo16185a = this.f52047d.mo16185a();
        String mo21747q = this.f52045b.mo21747q();
        String[] strArr = mo16185a;
        if (mo21747q != null) {
            l.d(mo16185a, "projection");
            strArr = (String[]) i.s0(mo16185a, mo21747q);
        }
        try {
            query2 = this.f52044a.query(this.f52047d.mo16184b(), strArr, null, null, "date DESC, _id DESC");
        } catch (IllegalArgumentException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        if (query2 != null) {
            l.d(query2, "it");
            c18433t0 = new C18433t0(query2);
            if (c18433t0 == null || (query = this.f52044a.query(C17891a1.C17901j.m15699b(), new String[]{"_id", "call_log_id", "timestamp"}, "call_log_id>=0", null, "timestamp DESC, call_log_id DESC")) == null) {
            }
            l.d(query, "it");
            C18339h1 c18339h1 = new C18339h1(query);
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            boolean moveToNext = c18433t0.moveToNext();
            boolean moveToNext2 = c18339h1.moveToNext();
            while (true) {
                z = moveToNext2;
                if (!moveToNext) {
                    break;
                }
                z = moveToNext2;
                if (!moveToNext2) {
                    break;
                }
                C19280e c19280e = c18433t0.f52079b;
                s1.a.l<?>[] lVarArr = C18433t0.f52077d;
                long longValue = ((Number) c19280e.m13705b(c18433t0, lVarArr[1])).longValue();
                C19280e c19280e2 = c18339h1.f51799c;
                s1.a.l<?>[] lVarArr2 = C18339h1.f51796e;
                long longValue2 = ((Number) c19280e2.m13705b(c18339h1, lVarArr2[2])).longValue();
                long longValue3 = ((Number) c18433t0.f52078a.m13705b(c18433t0, lVarArr[0])).longValue();
                long longValue4 = ((Number) c18339h1.f51798b.m13705b(c18339h1, lVarArr2[1])).longValue();
                int i = (longValue > longValue2 ? 1 : (longValue == longValue2 ? 0 : -1));
                if (i > 0) {
                    moveToNext = c18433t0.moveToNext();
                } else if (i < 0) {
                    m15029b(c18339h1.getId(), arrayList);
                    moveToNext2 = c18339h1.moveToNext();
                } else {
                    int i2 = (longValue3 > longValue4 ? 1 : (longValue3 == longValue4 ? 0 : -1));
                    if (i2 > 0) {
                        moveToNext = c18433t0.moveToNext();
                    } else if (i2 < 0) {
                        m15029b(c18339h1.getId(), arrayList);
                        moveToNext2 = c18339h1.moveToNext();
                    } else {
                        long id = c18339h1.getId();
                        ContentProviderOperation build = ContentProviderOperation.newDelete(C17891a1.C17901j.m15699b()).withSelection("_id=" + id, null).build();
                        l.d(build, "ContentProviderOperation…ull)\n            .build()");
                        arrayList.add(build);
                        m15028c(arrayList, false);
                        moveToNext2 = c18339h1.moveToNext();
                    }
                }
            }
            while (z) {
                m15029b(c18339h1.getId(), arrayList);
                try {
                    z = c18339h1.moveToNext();
                } catch (SQLiteBlobTooBigException e2) {
                }
            }
            m15028c(arrayList, true);
            try {
                c18433t0.close();
            } catch (IOException e3) {
            }
            try {
                c18339h1.close();
            } catch (IOException e4) {
            }
            n.B0(new BackupDurationEvent(BackupDurationEvent.Segment.CALL_LOG, this.f52048e.mo13819c() - mo13819c), this.f52049f);
            return;
        }
        c18433t0 = null;
        if (c18433t0 == null) {
        }
    }

    /* renamed from: b */
    public final void m15029b(long j, ArrayList<ContentProviderOperation> arrayList) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("tc_flag", (Integer) 2);
        contentValues.putNull("call_log_id");
        ContentProviderOperation.Builder withValues = ContentProviderOperation.newUpdate(C17891a1.C17901j.m15699b()).withValues(contentValues);
        ContentProviderOperation build = withValues.withSelection("_id=" + j, null).build();
        l.d(build, "ContentProviderOperation…ull)\n            .build()");
        arrayList.add(build);
        m15028c(arrayList, false);
    }

    /* renamed from: c */
    public final void m15028c(ArrayList<ContentProviderOperation> arrayList, boolean z) {
        if (arrayList.size() >= 50 || z) {
            ContentResolver contentResolver = this.f52044a;
            Uri uri = C17891a1.f50888a;
            contentResolver.applyBatch("com.truecaller", new ArrayList<>(arrayList));
            arrayList.clear();
        }
    }
}
