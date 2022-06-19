package p000;

import android.content.Intent;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions$Builder;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import p000.v91;
/* renamed from: t91 */
/* loaded from: classes3-dex2jar.jar:t91.class */
public class t91 extends v91 {

    /* renamed from: f */
    public GoogleSignInClient f8165f;

    /* renamed from: g */
    public String f8166g = "";

    /* renamed from: o */
    public /* synthetic */ void m537p(t91 t91Var, Void r5) {
        this.f8354c.mo342d(t91Var);
    }

    /* renamed from: q */
    public /* synthetic */ void m535r(t91 t91Var, Exception exc) {
        this.f8354c.mo344b(t91Var, true);
    }

    @Override // p000.v91
    /* renamed from: d */
    public String mo358d() {
        return this.f8166g;
    }

    @Override // p000.v91
    /* renamed from: h */
    public void mo354h(int i, int i2, Intent intent) {
        if (i != 9001) {
            return;
        }
        Task<GoogleSignInAccount> signedInAccountFromIntent = GoogleSignIn.getSignedInAccountFromIntent(intent);
        String str = "handleSignInResult GoogleSignInResult:" + signedInAccountFromIntent.isSuccessful();
        boolean z = false;
        if (!signedInAccountFromIntent.isSuccessful()) {
            j91.m1505k(this, "error");
            v91.AbstractC1692b abstractC1692b = this.f8354c;
            if (i2 != 0) {
                z = true;
            }
            abstractC1692b.mo344b(this, z);
            return;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) signedInAccountFromIntent.getResult();
        if (googleSignInAccount == null) {
            j91.m1505k(this, "error");
            this.f8354c.mo344b(this, true);
            return;
        }
        this.f8166g = googleSignInAccount.getServerAuthCode();
        this.f8352a = new String[]{googleSignInAccount.getId()};
        String str2 = "signed in with google ID" + this.f8352a;
        this.f8354c.mo345a(this);
    }

    @Override // p000.v91
    /* renamed from: i */
    public void mo353i() {
        this.f8165f = GoogleSignIn.getClient(this.f8353b, new GoogleSignInOptions$Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestServerAuthCode("758133388385.apps.googleusercontent.com", false).build());
    }

    @Override // p000.v91
    /* renamed from: l */
    public void mo350l() {
        this.f8353b.startActivityForResult(this.f8165f.getSignInIntent(), 9001);
    }

    @Override // p000.v91
    /* renamed from: m */
    public void mo349m() {
        this.f8165f.signOut().addOnSuccessListener(new OnSuccessListener() { // from class: q91
            public final void onSuccess(Object obj) {
                t91.this.m537p(this, (Void) obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: p91
            public final void onFailure(Exception exc) {
                t91.this.m535r(this, exc);
            }
        });
    }
}
