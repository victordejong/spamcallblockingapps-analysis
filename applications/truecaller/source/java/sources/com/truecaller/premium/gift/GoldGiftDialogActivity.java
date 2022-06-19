package com.truecaller.premium.gift;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1011l.p1020g.AbstractC16927x;
import p193e.p194a.p1011l.p1020g.C16888g;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� \t2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/truecaller/premium/gift/GoldGiftDialogActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "d", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/gift/GoldGiftDialogActivity.class */
public final class GoldGiftDialogActivity extends AbstractC16927x {

    /* renamed from: d */
    public static final C4350a f14248d = new C4350a(null);

    /* renamed from: com.truecaller.premium.gift.GoldGiftDialogActivity$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/gift/GoldGiftDialogActivity$a.class */
    public static final class C4350a {
        public C4350a(f fVar) {
        }

        /* renamed from: a */
        public final Intent m34818a(Context context, boolean z) {
            l.e(context, AnalyticsConstants.CONTEXT);
            Intent addFlags = new Intent(context, GoldGiftDialogActivity.class).putExtra("EXTRA_SKIP_INTRO", z).addFlags(268435456);
            l.d(addFlags, "Intent(context, GoldGift…t.FLAG_ACTIVITY_NEW_TASK)");
            return addFlags;
        }
    }

    /* renamed from: pa */
    public static final Intent m34819pa(Context context, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent addFlags = new Intent(context, GoldGiftDialogActivity.class).putExtra("EXTRA_SKIP_INTRO", z).addFlags(268435456);
        l.d(addFlags, "Intent(context, GoldGift…t.FLAG_ACTIVITY_NEW_TASK)");
        return addFlags;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        GoldGiftDialogActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16067m(theme, true);
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            boolean booleanExtra = getIntent().getBooleanExtra("EXTRA_SKIP_INTRO", false);
            String stringExtra = getIntent().getStringExtra("EXTRA_SENDER_NAME");
            String stringExtra2 = getIntent().getStringExtra("EXTRA_SENDER_NUMBER");
            C16888g c16888g = new C16888g();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("EXTRA_SKIP_INTRO", booleanExtra);
            bundle2.putString("EXTRA_SENDER_NAME", stringExtra);
            bundle2.putString("EXTRA_SENDER_NUMBER", stringExtra2);
            c16888g.setArguments(bundle2);
            c26907a.m1120m(16908290, c16888g, null);
            c26907a.mo1127f();
        }
    }
}
