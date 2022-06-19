package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0662c;
import com.facebook.C2095j;
import com.facebook.FacebookException;
import com.facebook.internal.DialogC2085z;
/* renamed from: com.facebook.internal.f */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/f.class */
public class C2029f extends DialogInterface$OnCancelListenerC0662c {

    /* renamed from: ae */
    private Dialog f5989ae;

    /* renamed from: a */
    public void m15640a(Bundle bundle, FacebookException facebookException) {
        ActivityC0664d r = m19922r();
        r.setResult(facebookException == null ? -1 : 0, C2064s.m15534a(r.getIntent(), bundle, facebookException));
        r.finish();
    }

    /* renamed from: o */
    public void m15636o(Bundle bundle) {
        ActivityC0664d r = m19922r();
        Intent intent = new Intent();
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        intent.putExtras(bundle2);
        r.setResult(-1, intent);
        r.finish();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: I */
    public void mo875I() {
        super.mo875I();
        if (this.f5989ae instanceof DialogC2085z) {
            ((DialogC2085z) this.f5989ae).m15388e();
        }
    }

    /* renamed from: a */
    public void m15641a(Dialog dialog) {
        this.f5989ae = dialog;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo3149a(Bundle bundle) {
        DialogC2037i m15627a;
        super.mo3149a(bundle);
        if (this.f5989ae == null) {
            ActivityC0664d r = m19922r();
            Bundle m15520c = C2064s.m15520c(r.getIntent());
            if (!m15520c.getBoolean("is_fallback", false)) {
                String string = m15520c.getString("action");
                Bundle bundle2 = m15520c.getBundle("params");
                if (C2079x.m15472a(string)) {
                    C2079x.m15449b("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
                    r.finish();
                    return;
                }
                m15627a = new DialogC2085z.C2090a(r, string, bundle2).m15383a(new DialogC2085z.AbstractC2092c() { // from class: com.facebook.internal.f.1
                    @Override // com.facebook.internal.DialogC2085z.AbstractC2092c
                    /* renamed from: a */
                    public void mo15062a(Bundle bundle3, FacebookException facebookException) {
                        C2029f.this.m15640a(bundle3, facebookException);
                    }
                }).mo15059a();
            } else {
                String string2 = m15520c.getString("url");
                if (C2079x.m15472a(string2)) {
                    C2079x.m15449b("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
                    r.finish();
                    return;
                }
                m15627a = DialogC2037i.m15627a(r, string2, String.format("fb%s://bridge/", C2095j.m15356l()));
                m15627a.m15403a(new DialogC2085z.AbstractC2092c() { // from class: com.facebook.internal.f.2
                    @Override // com.facebook.internal.DialogC2085z.AbstractC2092c
                    /* renamed from: a */
                    public void mo15062a(Bundle bundle3, FacebookException facebookException) {
                        C2029f.this.m15636o(bundle3);
                    }
                });
            }
            this.f5989ae = m15627a;
        }
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c
    /* renamed from: c */
    public Dialog mo3162c(Bundle bundle) {
        if (this.f5989ae == null) {
            m15640a((Bundle) null, (FacebookException) null);
            m19893a(false);
        }
        return this.f5989ae;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, androidx.fragment.app.Fragment
    /* renamed from: k */
    public void mo15637k() {
        if (m19890d() != null && m20018E()) {
            m19890d().setDismissMessage(null);
        }
        super.mo15637k();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!(this.f5989ae instanceof DialogC2085z) || !m20020C()) {
            return;
        }
        ((DialogC2085z) this.f5989ae).m15388e();
    }
}
