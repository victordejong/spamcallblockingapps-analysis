package com.truecaller.feature_toggles.control_panel;

import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.featuretoggles.FeatureKey;
import com.truecaller.p183ui.TruecallerInit;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1263t3.p1264c.AbstractC20519g;
import p193e.p194a.p1263t3.p1264c.AbstractC20526m;
import p193e.p194a.p1263t3.p1264c.C20510d;
import p193e.p194a.p1263t3.p1264c.C20525l;
import p193e.p194a.p1263t3.p1264c.C20533q;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\"\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\tR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity;", "Ln3/b/a/h;", "Le/a/t3/c/m$a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "d0", "Lcom/truecaller/featuretoggles/FeatureKey;", "taskKey", "", "firebaseString", "G9", "(Lcom/truecaller/featuretoggles/FeatureKey;Ljava/lang/String;)V", "F0", "Le/a/t3/c/g;", C22021b.f61237c, "Le/a/t3/c/g;", "getAdapterPresenter", "()Le/a/t3/c/g;", "setAdapterPresenter", "(Le/a/t3/c/g;)V", "adapterPresenter", "Le/a/t3/c/m;", "a", "Le/a/t3/c/m;", "getPresenter", "()Le/a/t3/c/m;", "setPresenter", "(Le/a/t3/c/m;)V", "presenter", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity.class */
public final class FeaturesControlPanelActivity extends h implements AbstractC20526m.AbstractC20527a {
    @Inject

    /* renamed from: a */
    public AbstractC20526m f11918a;
    @Inject

    /* renamed from: b */
    public AbstractC20519g f11919b;

    /* renamed from: com.truecaller.feature_toggles.control_panel.FeaturesControlPanelActivity$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$a.class */
    public static final class DialogInterface$OnClickListenerC3897a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ FeatureKey f11921b;

        public DialogInterface$OnClickListenerC3897a(FeatureKey featureKey) {
            FeaturesControlPanelActivity.this = r4;
            this.f11921b = featureKey;
        }

        /* JADX WARN: Type inference failed for: r0v18, types: [android.content.Context, com.truecaller.feature_toggles.control_panel.FeaturesControlPanelActivity] */
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Objects.requireNonNull(dialogInterface, "null cannot be cast to non-null type android.app.Dialog");
            View findViewById = ((Dialog) dialogInterface).findViewById(C2752R.C2754id.firebase_dialog_edittext);
            l.d(findViewById, "(dialogInterface as Dial…firebase_dialog_edittext)");
            String obj = ((EditText) findViewById).getText().toString();
            AbstractC20526m abstractC20526m = FeaturesControlPanelActivity.this.f11918a;
            if (abstractC20526m == null) {
                l.l("presenter");
                throw null;
            }
            abstractC20526m.mo11065a5(this.f11921b, obj);
            Toast.makeText((Context) FeaturesControlPanelActivity.this, "String changed", 1).show();
        }
    }

    /* renamed from: com.truecaller.feature_toggles.control_panel.FeaturesControlPanelActivity$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/feature_toggles/control_panel/FeaturesControlPanelActivity$b.class */
    public static final class DialogInterface$OnClickListenerC3898b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC3898b() {
            FeaturesControlPanelActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.feature_toggles.control_panel.FeaturesControlPanelActivity] */
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Toast.makeText((Context) FeaturesControlPanelActivity.this, "Canceled", 1).show();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20526m.AbstractC20527a
    /* renamed from: F0 */
    public void mo11070F0() {
        Intent addFlags = new Intent((Context) this, (Class<?>) TruecallerInit.class).addFlags(335577088);
        l.d(addFlags, "Intent(this, TruecallerI…r FLAG_ACTIVITY_NEW_TASK)");
        finishAffinity();
        startActivity(addFlags);
        System.exit(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20526m.AbstractC20527a
    /* renamed from: G9 */
    public void mo11069G9(FeatureKey featureKey, String str) {
        l.e(featureKey, "taskKey");
        l.e(str, "firebaseString");
        View inflate = View.inflate(this, C2752R.layout.firebase_dialog, null);
        l.d(inflate, "View.inflate(this, R.layout.firebase_dialog, null)");
        View findViewById = inflate.findViewById(C2752R.C2754id.firebase_dialog_edittext);
        l.d(findViewById, "view.findViewById<EditTe…firebase_dialog_edittext)");
        ((EditText) findViewById).setHint(str);
        g$a g_a = new g$a(this);
        g_a.f70854a.f154d = "Enter new value";
        g_a.m3660i(2131887910, new DialogInterface$OnClickListenerC3897a(featureKey));
        g_a.m3662g(2131887867, new DialogInterface$OnClickListenerC3898b());
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f171u = inflate;
        c0037b.f170t = 0;
        g_a.m3652q();
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20526m.AbstractC20527a
    /* renamed from: d0 */
    public void mo11068d0() {
        onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16064n0(this, false, 1);
        FeaturesControlPanelActivity.super.onCreate(bundle);
        Application application = getApplication();
        Objects.requireNonNull(application, "null cannot be cast to non-null type com.truecaller.TrueApp");
        AbstractC15539j2 mo10154s = ((TrueApp) application).mo10154s();
        Objects.requireNonNull(mo10154s);
        C20525l c20525l = new C20525l();
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C20510d c20510d = new C20510d(c20525l, mo10154s, null);
        this.f11918a = (AbstractC20526m) c20510d.f57568d.get();
        this.f11919b = (AbstractC20519g) c20510d.f57569e.get();
        setContentView((int) C2752R.layout.activity_features_control_panel);
        AbstractC20526m abstractC20526m = this.f11918a;
        if (abstractC20526m == null) {
            l.l("presenter");
            throw null;
        } else if (abstractC20526m == null) {
            l.l("presenter");
            throw null;
        } else {
            View findViewById = findViewById(16908290);
            l.d(findViewById, "getContainerView()");
            AbstractC20519g abstractC20519g = this.f11919b;
            if (abstractC20519g == null) {
                l.l("adapterPresenter");
                throw null;
            }
            abstractC20526m.mo9029Y0(new C20533q(abstractC20526m, findViewById, abstractC20519g));
            AbstractC20526m abstractC20526m2 = this.f11918a;
            if (abstractC20526m2 != null) {
                abstractC20526m2.mo11064he(this);
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    public void onDestroy() {
        AbstractC20526m abstractC20526m = this.f11918a;
        if (abstractC20526m == null) {
            l.l("presenter");
            throw null;
        }
        abstractC20526m.mo9806c();
        FeaturesControlPanelActivity.super.onDestroy();
    }
}
