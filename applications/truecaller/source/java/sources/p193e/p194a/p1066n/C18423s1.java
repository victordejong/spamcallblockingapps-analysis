package p193e.p194a.p1066n;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.analyitcs.BackupDurationEvent;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.n.s1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/s1.class */
public final class C18423s1 implements AbstractC18420r1 {

    /* renamed from: a */
    public final ContentResolver f52050a;

    /* renamed from: b */
    public final AbstractC8541a f52051b;

    /* renamed from: c */
    public final AbstractC19222c f52052c;

    /* renamed from: d */
    public final AbstractC19462a f52053d;

    @Inject
    public C18423s1(Context context, AbstractC8541a abstractC8541a, AbstractC19222c abstractC19222c, AbstractC19462a abstractC19462a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f52051b = abstractC8541a;
        this.f52052c = abstractC19222c;
        this.f52053d = abstractC19462a;
        this.f52050a = context.getContentResolver();
    }

    @Override // p193e.p194a.p1066n.AbstractC18420r1
    /* renamed from: a */
    public void mo15027a() {
        ContentProviderOperation build = ContentProviderOperation.newUpdate(C8582g0.m28295y()).withSelection("transport=?", new String[]{String.valueOf(0)}).withValue("transport", 4).build();
        l.d(build, "ContentProviderOperation…SMS)\n            .build()");
        ContentProviderOperation build2 = ContentProviderOperation.newUpdate(C8582g0.m28295y()).withSelection("transport=?", new String[]{String.valueOf(1)}).withValue("transport", 7).build();
        l.d(build2, "ContentProviderOperation…MMS)\n            .build()");
        ContentResolver contentResolver = this.f52050a;
        Uri uri = C17891a1.f50888a;
        contentResolver.applyBatch("com.truecaller", i.e(new ContentProviderOperation[]{build, build2}));
        this.f52051b.putBoolean("deleteBackupDuplicates", true);
    }

    @Override // p193e.p194a.p1066n.AbstractC18420r1
    /* renamed from: b */
    public void mo15026b() {
        synchronized (this) {
            if (!this.f52051b.getBoolean("deleteBackupDuplicates", false)) {
                return;
            }
            this.f52050a.delete(C8582g0.m28295y(), "(status & 128) = 128", null);
            long mo13819c = this.f52052c.mo13819c();
            m15022f(0, 4);
            m15022f(1, 7);
            n.B0(new BackupDurationEvent(BackupDurationEvent.Segment.MESSAGES, this.f52052c.mo13819c() - mo13819c), this.f52053d);
            this.f52051b.putBoolean("deleteBackupDuplicates", false);
            this.f52051b.putBoolean("messageLinksMigrated", false);
        }
    }

    /* renamed from: c */
    public final void m15025c(List<ContentProviderOperation> list) {
        ContentResolver contentResolver = this.f52050a;
        Uri uri = C17891a1.f50888a;
        contentResolver.applyBatch("com.truecaller", new ArrayList<>(list));
        list.clear();
    }

    /* renamed from: d */
    public final C18417q1 m15024d(int i) {
        C18417q1 c18417q1;
        Cursor query = this.f52050a.query(C8582g0.m28295y(), C18434t1.f52081a, "transport=?", new String[]{String.valueOf(i)}, "date DESC, participant_id DESC");
        if (query != null) {
            l.d(query, "it");
            c18417q1 = new C18417q1(query);
        } else {
            c18417q1 = null;
        }
        return c18417q1;
    }

    /* renamed from: e */
    public final void m15023e(List<ContentProviderOperation> list, long j) {
        ContentProviderOperation build = ContentProviderOperation.newDelete(C8582g0.m28340A(j)).build();
        l.d(build, "ContentProviderOperation…\n                .build()");
        list.add(build);
        if (list.size() == 50) {
            m15025c(list);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x01b8, code lost:
        if ((r0 == null || r0.length() == 0) == false) goto L61;
     */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01e8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01d5 A[SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m15022f(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18423s1.m15022f(int, int):void");
    }
}
