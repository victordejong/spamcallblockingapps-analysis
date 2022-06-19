package com.truecaller.messaging.inboxcleanup;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p227e.C5953b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/truecaller/messaging/inboxcleanup/InboxCleanupActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/InboxCleanupActivity.class */
public final class InboxCleanupActivity extends h {

    /* renamed from: a */
    public static final C4221a f13499a = new C4221a(null);

    /* renamed from: com.truecaller.messaging.inboxcleanup.InboxCleanupActivity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/InboxCleanupActivity$a.class */
    public static final class C4221a {
        public C4221a(f fVar) {
        }

        /* renamed from: b */
        public static Intent m34985b(C4221a c4221a, Context context, CleanupResult cleanupResult, String str, int i, int i2) {
            if ((i2 & 2) != 0) {
                cleanupResult = null;
            }
            if ((i2 & 8) != 0) {
                i = 0;
            }
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "analyticsContext");
            Intent putExtra = new Intent(context, InboxCleanupActivity.class).putExtra("cleanup_result", cleanupResult).putExtra("analytics_context", str).putExtra("action", i);
            l.d(putExtra, "Intent(context, InboxCle…Extra(ARG_ACTION, action)");
            return putExtra;
        }

        /* renamed from: a */
        public final Intent m34986a(Context context, CleanupResult cleanupResult, String str) {
            return m34985b(this, context, null, str, 0, 8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        InboxCleanupActivity.super.onCreate(bundle);
        C17422k.m16066m0(this, true);
        if (bundle == null) {
            CleanupResult cleanupResult = (CleanupResult) getIntent().getParcelableExtra("cleanup_result");
            String stringExtra = getIntent().getStringExtra("analytics_context");
            int intExtra = getIntent().getIntExtra("action", 0);
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            Objects.requireNonNull(C5953b.f19866g);
            C5953b c5953b = new C5953b();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("cleanup_result", cleanupResult);
            bundle2.putString("analytics_context", stringExtra);
            bundle2.putInt("action", intExtra);
            c5953b.setArguments(bundle2);
            c26907a.m1120m(16908290, c5953b, null);
            c26907a.mo1127f();
        }
    }
}
