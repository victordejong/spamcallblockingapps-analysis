package p193e.p194a.p1146q2.p1148b1.p1149f;

import android.content.ContentValues;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.io.File;
import java.io.IOException;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p194a.p1146q2.p1148b1.p1149f.C19477b;
import s1.z.c.l;
/* renamed from: e.a.q2.b1.f.a */
/* loaded from: classes5-dex2jar.jar:e/a/q2/b1/f/a.class */
public final class C19476a extends AbstractC25677q.AbstractC25679b {

    /* renamed from: a */
    public final Context f54071a;

    public C19476a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f54071a = context;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q.AbstractC25679b
    /* renamed from: a */
    public void mo3062a(AbstractC26147b abstractC26147b) {
        C19477b.C19481d c19481d;
        l.e(abstractC26147b, "db");
        File file = new File(this.f54071a.getFilesDir(), "events-v2.queue");
        try {
            if (!file.exists()) {
                return;
            }
            try {
                try {
                    C19477b c19477b = new C19477b(file);
                    int i = c19477b.f54074c;
                    c19481d = null;
                    if (!(i == 0)) {
                        c19481d = new C19477b.C19481d(i, null);
                    }
                } catch (IOException e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                }
            } catch (C19477b.C19479b e2) {
                AssertionUtil.reportThrowableButNeverCrash(e2);
            }
            if (c19481d == null) {
                return;
            }
            while (true) {
                byte[] m13294a = c19481d.m13294a();
                if (m13294a == null) {
                    break;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("record", m13294a);
                abstractC26147b.mo2658s0("persisted_event", 0, contentValues);
            }
        } finally {
            file.delete();
        }
    }
}
