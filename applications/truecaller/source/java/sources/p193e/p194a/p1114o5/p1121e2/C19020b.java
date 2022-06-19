package p193e.p194a.p1114o5.p1121e2;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.MessagesActivity;
import com.truecaller.p183ui.ContactsActivity;
import com.truecaller.p183ui.TruecallerInit;
import p1727n3.p1807k.p1809b.p1810c.C26477b;
import p1727n3.p1807k.p1809b.p1810c.C26480d;
import s1.z.c.l;
/* renamed from: e.a.o5.e2.b */
/* loaded from: classes15-dex2jar.jar:e/a/o5/e2/b.class */
public final class C19020b implements AbstractC19019a {

    /* renamed from: a */
    public final Context f53145a;

    public C19020b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53145a = context;
    }

    @Override // p193e.p194a.p1114o5.p1121e2.AbstractC19019a
    /* renamed from: a */
    public void mo14252a(int i) {
        try {
            if (!C26480d.m1774b(this.f53145a)) {
                return;
            }
            C26480d.m1772d(this.f53145a, m14251b(i), null);
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    /* renamed from: b */
    public final C26477b m14251b(int i) {
        Context context = this.f53145a;
        String str = i != 1 ? i != 3 ? "home-shortcut-dialer-id" : "home-shortcut-messages-id" : "home-shortcut-contacts-id";
        C26477b c26477b = new C26477b();
        c26477b.f74239a = context;
        c26477b.f74240b = str;
        int i2 = 2131886107;
        if (i != 0) {
            i2 = i != 1 ? i != 3 ? 2131886107 : 2131887989 : 2131890056;
        }
        c26477b.f74242d = context.getString(i2);
        Context context2 = this.f53145a;
        int i3 = 2131689473;
        if (i != 0) {
            i3 = i != 1 ? i != 3 ? 2131689473 : 2131689477 : 2131689474;
        }
        c26477b.f74243e = IconCompat.i(context2, i3);
        Intent intent = new Intent(this.f53145a, i != 1 ? i != 3 ? TruecallerInit.class : MessagesActivity.class : ContactsActivity.class);
        intent.setAction("android.intent.action.MAIN");
        intent.addFlags(335544320);
        c26477b.f74241c = new Intent[]{intent};
        if (!TextUtils.isEmpty(c26477b.f74242d)) {
            Intent[] intentArr = c26477b.f74241c;
            if (intentArr == null || intentArr.length == 0) {
                throw new IllegalArgumentException("Shortcut must have an intent");
            }
            l.d(c26477b, "ShortcutInfoCompat.Build…ortcut))\n        .build()");
            return c26477b;
        }
        throw new IllegalArgumentException("Shortcut must have a non-empty label");
    }
}
