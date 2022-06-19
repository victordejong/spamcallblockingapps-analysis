package com.truecaller.social_login.facebook;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.C1190t;
import com.facebook.login.C1284v;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.social_login.SocialAccountProfile;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p616c5.p617a.AbstractC10950c;
import p193e.p194a.p616c5.p617a.AbstractC10951d;
import p193e.p194a.p616c5.p617a.AbstractC10960l;
import p193e.p194a.p616c5.p617a.C10954f;
import p193e.p194a.p616c5.p617a.C10958j;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\"\u0010#J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0018\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\"\u0010!\u001a\u00020\u001a8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/truecaller/social_login/facebook/FacebookLoginActivity;", "Ln3/b/a/h;", "Le/a/c5/a/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "", "permissions", "ma", "(Ljava/util/List;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Lcom/truecaller/social_login/SocialAccountProfile;", "socialAccountProfile", "", "isError", "q", "(Lcom/truecaller/social_login/SocialAccountProfile;Z)V", "Le/a/c5/a/c;", "d", "Le/a/c5/a/c;", "getPresenter$social_login_release", "()Le/a/c5/a/c;", "setPresenter$social_login_release", "(Le/a/c5/a/c;)V", "presenter", "<init>", "()V", "social-login_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes13-dex2jar.jar:com/truecaller/social_login/facebook/FacebookLoginActivity.class */
public final class FacebookLoginActivity extends AbstractC10960l implements AbstractC10951d {
    @Inject

    /* renamed from: d */
    public AbstractC10950c f14875d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p616c5.p617a.AbstractC10951d
    /* renamed from: ma */
    public void mo25484ma(List<String> list) {
        l.e(list, "permissions");
        C1284v.f3498b.m41542a().m41548d(this, list);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        FacebookLoginActivity.super.onActivityResult(i, i2, intent);
        AbstractC10950c abstractC10950c = this.f14875d;
        if (abstractC10950c == null) {
            l.l("presenter");
            throw null;
        }
        C10954f c10954f = (C10954f) abstractC10950c;
        if (i2 != -1) {
            c10954f.m25476Ij(null, false);
            return;
        }
        Objects.requireNonNull((C10958j) c10954f.f32470h);
        new C1190t().onActivityResult(i, i2, intent);
        c10954f.m25475Jj(true);
    }

    public void onCreate(Bundle bundle) {
        FacebookLoginActivity.super.onCreate(bundle);
        AbstractC10950c abstractC10950c = this.f14875d;
        if (abstractC10950c != null) {
            ((C10954f) abstractC10950c).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p616c5.p617a.AbstractC10951d
    /* renamed from: q */
    public void mo25483q(SocialAccountProfile socialAccountProfile, boolean z) {
        setResult(z ? 0 : -1, new Intent().putExtra("result", socialAccountProfile));
        finish();
        overridePendingTransition(0, 0);
    }
}
