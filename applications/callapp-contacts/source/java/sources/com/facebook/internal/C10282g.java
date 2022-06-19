package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
import androidx.fragment.app.FragmentActivity;
import com.facebook.C10181g;
import com.facebook.FacebookException;
import com.facebook.internal.DialogC10219ag;
/* renamed from: com.facebook.internal.g */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/g.class */
public class C10282g extends DialogInterface$OnCancelListenerC1089c {

    /* renamed from: c */
    public Dialog f33809c;

    /* renamed from: a */
    public void m23065a(Bundle bundle, FacebookException facebookException) {
        FragmentActivity activity = getActivity();
        activity.setResult(facebookException == null ? -1 : 0, C10340z.m22966a(activity.getIntent(), bundle, facebookException));
        activity.finish();
    }

    /* renamed from: a */
    static /* synthetic */ void m23064a(C10282g c10282g, Bundle bundle) {
        FragmentActivity activity = c10282g.getActivity();
        Intent intent = new Intent();
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        intent.putExtras(bundle2);
        activity.setResult(-1, intent);
        activity.finish();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final Dialog mo9884a(Bundle bundle) {
        if (this.f33809c == null) {
            m23065a((Bundle) null, (FacebookException) null);
            setShowsDialog(false);
        }
        return this.f33809c;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!(this.f33809c instanceof DialogC10219ag) || !isResumed()) {
            return;
        }
        ((DialogC10219ag) this.f33809c).m23161c();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        DialogC10289k dialogC10289k;
        super.onCreate(bundle);
        if (this.f33809c == null) {
            FragmentActivity activity = getActivity();
            Bundle m22954b = C10340z.m22954b(activity.getIntent());
            if (!m22954b.getBoolean("is_fallback", false)) {
                String string = m22954b.getString("action");
                Bundle bundle2 = m22954b.getBundle("params");
                if (C10213ae.m23230a(string)) {
                    C10213ae.m23250a();
                    activity.finish();
                    return;
                }
                DialogC10219ag.C10224a c10224a = new DialogC10219ag.C10224a(activity, string, bundle2);
                c10224a.f33693a = new DialogC10219ag.AbstractC10226c() { // from class: com.facebook.internal.g.1
                    @Override // com.facebook.internal.DialogC10219ag.AbstractC10226c
                    /* renamed from: a */
                    public final void mo22900a(Bundle bundle3, FacebookException facebookException) {
                        C10282g.this.m23065a(bundle3, facebookException);
                    }
                };
                dialogC10289k = c10224a.mo22899a();
            } else {
                String string2 = m22954b.getString("url");
                if (C10213ae.m23230a(string2)) {
                    C10213ae.m23250a();
                    activity.finish();
                    return;
                }
                dialogC10289k = DialogC10289k.m23055a(activity, string2, String.format("fb%s://bridge/", C10181g.m23286m()));
                dialogC10289k.f33677a = new DialogC10219ag.AbstractC10226c() { // from class: com.facebook.internal.g.2
                    @Override // com.facebook.internal.DialogC10219ag.AbstractC10226c
                    /* renamed from: a */
                    public final void mo22900a(Bundle bundle3, FacebookException facebookException) {
                        C10282g.m23064a(C10282g.this, bundle3);
                    }
                };
            }
            this.f33809c = dialogC10289k;
        }
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Dialog dialog = this.f33809c;
        if (dialog instanceof DialogC10219ag) {
            ((DialogC10219ag) dialog).m23161c();
        }
    }
}
