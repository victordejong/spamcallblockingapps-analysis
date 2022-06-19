package com.truecaller.forcedupdate.p167ui;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.cardview.widget.CardView;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1128p4.AbstractC19214a;
import p193e.p194a.p1357x3.AbstractC21394a;
import p193e.p194a.p1357x3.p1358h.AbstractC21414l;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u0017J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR(\u0010\u0018\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/x3/a;", "d", "Le/a/x3/a;", "getAppUpdateActionHelper", "()Le/a/x3/a;", "setAppUpdateActionHelper", "(Le/a/x3/a;)V", "appUpdateActionHelper", "", "e", "Ljava/lang/String;", "getAppVersionName", "()Ljava/lang/String;", "setAppVersionName", "(Ljava/lang/String;)V", "getAppVersionName$annotations", "()V", "appVersionName", "<init>", "forced-update-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity */
/* loaded from: classes9-dex2jar.jar:com/truecaller/forcedupdate/ui/SimpleForceUpdateActivity.class */
public final class SimpleForceUpdateActivity extends AbstractC21414l {
    @Inject

    /* renamed from: d */
    public AbstractC21394a f12248d;
    @Inject

    /* renamed from: e */
    public String f12249e;

    /* renamed from: com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a.class */
    public static final class View$OnClickListenerC3998a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f12250a;

        /* renamed from: b */
        public final /* synthetic */ Object f12251b;

        public View$OnClickListenerC3998a(int i, Object obj) {
            this.f12250a = i;
            this.f12251b = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r0v42, types: [com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r0v49, types: [android.content.Context, com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity] */
        /* JADX WARN: Type inference failed for: r0v5, types: [android.content.Context, com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity] */
        /* JADX WARN: Type inference failed for: r0v53, types: [com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r1v13, types: [com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f12250a;
            if (i == 0) {
                ?? r0 = (SimpleForceUpdateActivity) this.f12251b;
                AbstractC21394a abstractC21394a = r0.f12248d;
                if (abstractC21394a == 0) {
                    l.l("appUpdateActionHelper");
                    throw null;
                }
                abstractC21394a.mo9777c(r0, null, "resourceBrokenUpdate");
                ((SimpleForceUpdateActivity) this.f12251b).finish();
            } else if (i != 1) {
                throw null;
            } else {
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:"));
                intent.putExtra("android.intent.extra.EMAIL", new String[]{"support@truecaller.com"});
                StringBuilder sb = new StringBuilder();
                sb.append("Incompatible Version (");
                String str = ((SimpleForceUpdateActivity) this.f12251b).f12249e;
                if (str == null) {
                    l.l("appVersionName");
                    throw null;
                }
                sb.append(str);
                sb.append(')');
                intent.putExtra("android.intent.extra.SUBJECT", sb.toString());
                if (intent.resolveActivity(((SimpleForceUpdateActivity) this.f12251b).getPackageManager()) != null) {
                    ((SimpleForceUpdateActivity) this.f12251b).startActivity(intent);
                    return;
                }
                ClipboardManager clipboardManager = (ClipboardManager) ((SimpleForceUpdateActivity) this.f12251b).getSystemService("clipboard");
                if (clipboardManager == null) {
                    return;
                }
                clipboardManager.setPrimaryClip(ClipData.newPlainText(AnalyticsConstants.EMAIL, "support@truecaller.com"));
                Toast.makeText((Context) ((SimpleForceUpdateActivity) this.f12251b), C3993R.string.StrCopiedToClipboard, 0).show();
            }
        }
    }

    /* renamed from: com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$b.class */
    public static final class View$OnLongClickListenerC3999b implements View.OnLongClickListener {
        public View$OnLongClickListenerC3999b() {
            SimpleForceUpdateActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.forcedupdate.ui.SimpleForceUpdateActivity] */
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            Context applicationContext = SimpleForceUpdateActivity.this.getApplicationContext();
            Context context = applicationContext;
            if (!(applicationContext instanceof AbstractC19214a)) {
                context = null;
            }
            AbstractC19214a abstractC19214a = (AbstractC19214a) context;
            if (abstractC19214a != null) {
                return C12864a2.m22540r(Boolean.valueOf(abstractC19214a.mo13876z()));
            }
            throw new RuntimeException(C22128a.m8643a2(AbstractC19214a.class, C22128a.m8728C("Application class does not implement ")));
        }
    }

    public void onCreate(Bundle bundle) {
        SimpleForceUpdateActivity.super.onCreate(bundle);
        setContentView(C3993R.layout.activity_simple_force_update);
        TextView textView = (TextView) findViewById(C3993R.C3995id.fu_title);
        if (textView != null) {
            textView.setOnLongClickListener(new View$OnLongClickListenerC3999b());
        }
        ((CardView) findViewById(C3993R.C3995id.btn_action)).setOnClickListener(new View$OnClickListenerC3998a(0, this));
        ((TextView) findViewById(C3993R.C3995id.fu_support_message)).setOnClickListener(new View$OnClickListenerC3998a(1, this));
    }
}
