package com.truecaller.whatsappcallerid;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.whatsappcallerid.analytics.event.WhatsAppCallerIdSourceParam;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1161q5.AbstractC19683b;
import p193e.p194a.p1161q5.p1162k.AbstractC19695a;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.AbstractC13287n0;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018�� \u00152\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, d2 = {"Lcom/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity;", "Le/a/e/n0;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "granted", "pa", "(Z)V", "Le/a/q5/k/a;", "j", "Le/a/q5/k/a;", "getWhatsAppCallerIdEventLogger", "()Le/a/q5/k/a;", "setWhatsAppCallerIdEventLogger", "(Le/a/q5/k/a;)V", "whatsAppCallerIdEventLogger", "<init>", "()V", "k", C22021b.f61237c, "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity.class */
public final class WhatsAppCallerIdPermissionDialogActivity extends AbstractC19683b {

    /* renamed from: k */
    public static final C4852b f16481k = new C4852b(null);
    @Inject

    /* renamed from: j */
    public AbstractC19695a f16482j;

    /* renamed from: com.truecaller.whatsappcallerid.WhatsAppCallerIdPermissionDialogActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$a.class */
    public static final class View$OnClickListenerC4851a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f16483a;

        /* renamed from: b */
        public final /* synthetic */ Object f16484b;

        public View$OnClickListenerC4851a(int i, Object obj) {
            this.f16483a = i;
            this.f16484b = obj;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [com.truecaller.whatsappcallerid.WhatsAppCallerIdPermissionDialogActivity, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f16483a;
            if (i == 0) {
                ((WhatsAppCallerIdPermissionDialogActivity) this.f16484b).finish();
            } else if (i != 1) {
                throw null;
            } else {
                ((WhatsAppCallerIdPermissionDialogActivity) this.f16484b).m21952qa();
            }
        }
    }

    /* renamed from: com.truecaller.whatsappcallerid.WhatsAppCallerIdPermissionDialogActivity$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/whatsappcallerid/WhatsAppCallerIdPermissionDialogActivity$b.class */
    public static final class C4852b {
        public C4852b(f fVar) {
        }

        /* renamed from: a */
        public final Intent m34282a(Context context, NotificationAccessSource notificationAccessSource, Intent intent, int i) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(notificationAccessSource, "source");
            l.e(intent, "intent");
            Intent putExtra = new Intent(context, WhatsAppCallerIdPermissionDialogActivity.class).putExtra("card_position", i);
            l.d(putExtra, "Intent(context, WhatsApp…D_POSITION, cardPosition)");
            return AbstractC13287n0.m21951ra(putExtra, notificationAccessSource, C2752R.string.EnhancedNotificationToastAllowAccess, intent);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13287n0
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16067m(theme, true);
        setContentView((int) C2752R.layout.dialog_whatsapp_callerid_permission);
        findViewById(2131361892).setOnClickListener(new View$OnClickListenerC4851a(0, this));
        findViewById(2131361881).setOnClickListener(new View$OnClickListenerC4851a(1, this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13287n0
    /* renamed from: pa */
    public void mo21953pa(boolean z) {
        super.mo21953pa(z);
        WhatsAppCallerIdSourceParam whatsAppCallerIdSourceParam = this.f38628f.ordinal() != 6 ? WhatsAppCallerIdSourceParam.WHATSAPP_CALLERID_SETTINGS : WhatsAppCallerIdSourceParam.PREMIUM_USER_TAB;
        if (z) {
            int intExtra = getIntent().getIntExtra("card_position", -1);
            AbstractC19695a abstractC19695a = this.f16482j;
            if (abstractC19695a == null) {
                l.l("whatsAppCallerIdEventLogger");
                throw null;
            }
            abstractC19695a.mo12971k(whatsAppCallerIdSourceParam, intExtra);
            AbstractC19695a abstractC19695a2 = this.f16482j;
            if (abstractC19695a2 != null) {
                abstractC19695a2.mo12975b(true, whatsAppCallerIdSourceParam, intExtra);
            } else {
                l.l("whatsAppCallerIdEventLogger");
                throw null;
            }
        }
    }
}
