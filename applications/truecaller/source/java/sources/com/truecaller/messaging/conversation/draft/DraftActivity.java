package com.truecaller.messaging.conversation.draft;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p200c.p203c.C5114a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/messaging/conversation/draft/DraftActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/draft/DraftActivity.class */
public final class DraftActivity extends h {
    /* renamed from: pa */
    public static final Intent m35107pa(Context context, DraftArguments draftArguments) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(draftArguments, "draftArguments");
        Intent putExtra = new Intent(context, DraftActivity.class).setFlags(268435456).putExtra("draft_arguments", draftArguments);
        l.d(putExtra, "Intent(context, DraftAct…RGUMENTS, draftArguments)");
        return putExtra;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Drawable mutate;
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16067m(theme, true);
        DraftActivity.super.onCreate(bundle);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(this, 2131232489);
        if (m1789b != null && (mutate = m1789b.mutate()) != null) {
            mutate.setTint(-1);
            AbstractC25393a supportActionBar2 = getSupportActionBar();
            if (supportActionBar2 != null) {
                supportActionBar2.mo3547t(mutate);
            }
        }
        DraftArguments draftArguments = (DraftArguments) getIntent().getParcelableExtra("draft_arguments");
        if (draftArguments != null) {
            l.e(draftArguments, "draftArguments");
            Fragment c5114a = new C5114a();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("draft_arguments", draftArguments);
            c5114a.setArguments(bundle2);
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1120m(16908290, c5114a, null);
            c26907a.mo1127f();
        }
    }
}
