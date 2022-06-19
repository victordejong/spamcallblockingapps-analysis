package p193e.p194a.p195a.p244k.p255y;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.huawei.hms.adapter.internal.CommonCode;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.transport.mms.MmsStatusReceiver;
import com.truecaller.multisim.SimInfo;
import com.truecaller.util.TempContentProvider;
import e.d.b.a.b.t;
import p193e.p1432d.p1436b.p1437a.C22105a;
import p193e.p1432d.p1436b.p1437a.p1438b.C22106a;
import p193e.p1432d.p1436b.p1437a.p1438b.C22114i;
import p193e.p194a.p712e4.AbstractC13490i;
/* renamed from: e.a.a.k.y.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/b.class */
public abstract class AbstractC6725b implements AbstractC6740k {

    /* renamed from: a */
    public final Context f22139a;

    /* renamed from: b */
    public final SimInfo f22140b;

    /* renamed from: c */
    public final AbstractC13490i f22141c;

    public AbstractC6725b(Context context, SimInfo simInfo, AbstractC13490i abstractC13490i) {
        this.f22139a = context;
        this.f22140b = simInfo;
        this.f22141c = abstractC13490i;
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6740k
    /* renamed from: a */
    public void mo30506a(byte[] bArr, Uri uri, int i) {
        try {
            m30527e(-1L, -1L, new C22114i(18, bArr, i), this.f22141c.mo21760e() ? uri : null, uri);
        } catch (C22105a e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6740k
    /* renamed from: b */
    public void mo30505b(byte[] bArr, Uri uri) {
        try {
            m30527e(-1L, -1L, new C22106a(18, bArr), this.f22141c.mo21760e() ? uri : null, uri);
        } catch (C22105a e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6740k
    /* renamed from: c */
    public void mo30504c(long j, long j2, t tVar, Uri uri) {
        m30527e(j, j2, tVar, null, uri);
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6740k
    /* renamed from: d */
    public void mo30503d(long j, byte[] bArr, Uri uri, boolean z) {
        String uri2;
        boolean z2;
        Uri m34472a = TempContentProvider.m34472a(this.f22139a, null);
        Context context = this.f22139a;
        SimInfo simInfo = this.f22140b;
        String str = simInfo != null ? simInfo.f13984b : "-1";
        int i = MmsStatusReceiver.f13779b;
        Intent intent = new Intent("com.truecaller.messaging.transport.mms.MmsStatusReceiver.MMS_DOWNLOAD", uri, context, MmsStatusReceiver.class);
        if (m34472a != null) {
            intent.putExtra("pdu_uri", m34472a.toString());
        }
        intent.putExtra(CommonCode.MapKey.TRANSACTION_ID, bArr);
        intent.putExtra("raw_message_id", j);
        intent.putExtra("is_auto_download", z);
        intent.putExtra("sim_token", str);
        if (m34472a == null) {
            this.f22139a.sendBroadcast(intent);
            return;
        }
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f22139a, 0, intent, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728);
        C6742m c6742m = (C6742m) this;
        if (uri == null) {
            uri2 = null;
        } else {
            try {
                uri2 = uri.toString();
            } catch (RuntimeException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                z2 = false;
            }
        }
        z2 = c6742m.f22201d.mo30517b(uri2, m34472a, broadcast);
        if (z2) {
            return;
        }
        try {
            broadcast.send(5);
        } catch (PendingIntent.CanceledException e2) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:174:0x06bb, code lost:
        if (r22 == null) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x06c8, code lost:
        if (r22 == null) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x06d5, code lost:
        if (r22 == null) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x06d8, code lost:
        r22.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0749, code lost:
        if (r12 != null) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0796, code lost:
        if (r12 == null) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0799, code lost:
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ac, code lost:
        if (r21 != false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0145, code lost:
        if (r0.m8783d(131) != 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x014d, code lost:
        if (r21 != false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01ca, code lost:
        if (r0.m8783d(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_NOT_FOUND) != 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01d2, code lost:
        if (r21 != false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0230, code lost:
        if (r21 != false) goto L192;
     */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0701  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0716  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x07f2  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x07fc  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x081c  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x083a  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0853  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x085d  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0731 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30527e(long r8, long r10, p193e.p1432d.p1436b.p1437a.p1438b.C22111f r12, android.net.Uri r13, android.net.Uri r14) {
        /*
            Method dump skipped, instructions count: 2322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.AbstractC6725b.m30527e(long, long, e.d.b.a.b.f, android.net.Uri, android.net.Uri):void");
    }
}
