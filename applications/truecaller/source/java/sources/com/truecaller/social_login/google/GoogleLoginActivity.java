package com.truecaller.social_login.google;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Status;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.social_login.SocialAccountProfile;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p616c5.p618b.AbstractC10963c;
import p193e.p194a.p616c5.p618b.AbstractC10967g;
import p193e.p194a.p616c5.p618b.C10964d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ)\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0016\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/truecaller/social_login/google/GoogleLoginActivity;", "Ln3/b/a/h;", "Le/a/c5/b/c;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "signInIntent", "", "requestCode", "ha", "(Landroid/content/Intent;I)V", "resultCode", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Lcom/truecaller/social_login/SocialAccountProfile;", "socialAccountProfile", "", "isError", "q", "(Lcom/truecaller/social_login/SocialAccountProfile;Z)V", "<init>", "()V", "social-login_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes13-dex2jar.jar:com/truecaller/social_login/google/GoogleLoginActivity.class */
public final class GoogleLoginActivity extends AbstractC10967g implements AbstractC10963c {
    @Inject

    /* renamed from: d */
    public C10964d f14876d;

    @Override // p193e.p194a.p616c5.p618b.AbstractC10963c
    /* renamed from: ha */
    public void mo25467ha(Intent intent, int i) {
        l.e(intent, "signInIntent");
        startActivityForResult(intent, i);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        GoogleLoginActivity.super.onActivityResult(i, i2, intent);
        C10964d c10964d = this.f14876d;
        if (c10964d == null) {
            l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c10964d);
        if (i != 1234) {
            return;
        }
        Objects.requireNonNull(c10964d.f32482f);
        GoogleSignInResult mo39105b = Auth.f5349d.mo39105b(intent);
        if (mo39105b == null) {
            c10964d.m25463Jj(null, true);
            return;
        }
        GoogleSignInAccount googleSignInAccount = mo39105b.f5544b;
        if (mo39105b.f5543a.m39042q2() && googleSignInAccount != null) {
            SocialAccountProfile m16085d = C17422k.m16085d(googleSignInAccount);
            AbstractC10963c abstractC10963c = (AbstractC10963c) c10964d.f57683a;
            if (abstractC10963c == null) {
                return;
            }
            abstractC10963c.mo25466q(m16085d, false);
            return;
        }
        Status status = mo39105b.f5543a;
        l.d(status, "signInResult.status");
        if (!status.m39043p2()) {
            Status status2 = mo39105b.f5543a;
            l.d(status2, "signInResult.status");
            if (status2.f5728b != 12501) {
                c10964d.m25463Jj(null, true);
                return;
            }
        }
        c10964d.m25463Jj(null, false);
    }

    public void onCreate(Bundle bundle) {
        GoogleLoginActivity.super.onCreate(bundle);
        C10964d c10964d = this.f14876d;
        if (c10964d != null) {
            c10964d.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p616c5.p618b.AbstractC10963c
    /* renamed from: q */
    public void mo25466q(SocialAccountProfile socialAccountProfile, boolean z) {
        setResult(z ? 0 : -1, new Intent().putExtra("result", socialAccountProfile));
        finish();
        overridePendingTransition(0, 0);
    }
}
