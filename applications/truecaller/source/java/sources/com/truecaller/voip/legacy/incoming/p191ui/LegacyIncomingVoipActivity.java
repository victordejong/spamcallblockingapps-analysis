package com.truecaller.voip.legacy.incoming.p191ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.util.VoipAnalyticsInCallUiAction;
import java.util.Iterator;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p619d.p622b.p625b.AbstractC11147f;
import p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11126c;
import p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11133j;
import p193e.p194a.p619d.p622b.p625b.p626a.C11122a;
import p193e.p194a.p619d.p622b.p625b.p626a.C11135l;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018�� \u00182\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u0019\u0010\u0013\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\bJ\u000f\u0010\u0016\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "", "keyCode", "Landroid/view/KeyEvent;", "event", "", "onKeyDown", "(ILandroid/view/KeyEvent;)Z", "onKeyUp", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onBackPressed", "pa", "<init>", "d", "a", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.voip.legacy.incoming.ui.LegacyIncomingVoipActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity.class */
public final class LegacyIncomingVoipActivity extends AbstractC11126c {

    /* renamed from: d */
    public static final C4814a f16374d = new C4814a(null);

    /* renamed from: com.truecaller.voip.legacy.incoming.ui.LegacyIncomingVoipActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/legacy/incoming/ui/LegacyIncomingVoipActivity$a.class */
    public static final class C4814a {
        public C4814a(f fVar) {
        }

        /* renamed from: b */
        public static /* synthetic */ Intent m34326b(C4814a c4814a, Context context, boolean z, boolean z2, int i) {
            if ((i & 2) != 0) {
                z = false;
            }
            if ((i & 4) != 0) {
                z2 = false;
            }
            return c4814a.m34327a(context, z, z2);
        }

        /* renamed from: a */
        public final Intent m34327a(Context context, boolean z, boolean z2) {
            l.e(context, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(context, LegacyIncomingVoipActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("com.truecaller.voip.incoming.ui.EXTRA_ACCEPT_CALL", z);
            intent.putExtra("com.truecaller.voip.incoming.ui.EXTRA_VOIP_NOTIFICATION_ACTION", z2);
            return intent;
        }
    }

    public void onBackPressed() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        Iterator<Fragment> it = supportFragmentManager.m42936Q().iterator();
        while (it.hasNext()) {
            C11122a c11122a = (Fragment) it.next();
            if (c11122a instanceof C11122a) {
                AbstractC11133j abstractC11133j = c11122a.f32883f;
                if (abstractC11133j == null) {
                    l.l("presenter");
                    throw null;
                }
                ((C11135l) abstractC11133j).f32927j.mo24716c(VoipAnalyticsInCallUiAction.BACK);
            }
        }
        LegacyIncomingVoipActivity.super.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        LegacyIncomingVoipActivity.super.onCreate(bundle);
        C12864a2.m22550i0(this);
        View findViewById = findViewById(16908290);
        l.d(findViewById, "findViewById<View>(android.R.id.content)");
        findViewById.setSystemUiVisibility(1280);
        if (bundle != null) {
            return;
        }
        Fragment c11122a = new C11122a();
        Intent intent = getIntent();
        c11122a.setArguments(intent != null ? intent.getExtras() : null);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1120m(16908290, c11122a, "IncomingVoipFragment");
        c26907a.mo1127f();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        if (i == 24 || i == 25) {
            m34328pa();
            z = true;
        } else {
            z = LegacyIncomingVoipActivity.super.onKeyDown(i, keyEvent);
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        boolean z;
        if (i == 24 || i == 25) {
            m34328pa();
            z = true;
        } else {
            z = LegacyIncomingVoipActivity.super.onKeyUp(i, keyEvent);
        }
        return z;
    }

    public void onNewIntent(Intent intent) {
        C11122a m42942K;
        LegacyIncomingVoipActivity.super.onNewIntent(intent);
        if (intent == null || (m42942K = getSupportFragmentManager().m42942K("IncomingVoipFragment")) == null) {
            return;
        }
        l.e(intent, "intent");
        m42942K.m25173SA(intent.getExtras());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onResume() {
        LegacyIncomingVoipActivity.super.onResume();
        setVolumeControlStream(2);
    }

    /* renamed from: pa */
    public final void m34328pa() {
        C11122a m42942K = getSupportFragmentManager().m42942K("IncomingVoipFragment");
        if (m42942K != null) {
            AbstractC11133j abstractC11133j = m42942K.f32883f;
            if (abstractC11133j == null) {
                l.l("presenter");
                throw null;
            }
            AbstractC11147f abstractC11147f = ((C11135l) abstractC11133j).f32921d;
            if (abstractC11147f == null) {
                return;
            }
            abstractC11147f.mo25122m3();
        }
    }
}
