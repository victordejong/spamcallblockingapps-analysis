package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.DialogC2420i0;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.i */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/i.class */
public class C2417i extends DialogFragment {

    /* renamed from: a */
    public Dialog f3017a;

    /* renamed from: com.facebook.internal.i$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i$a.class */
    public class C2418a implements DialogC2420i0.AbstractC2427g {
        public C2418a() {
        }

        @Override // com.facebook.internal.DialogC2420i0.AbstractC2427g
        /* renamed from: a */
        public void mo34404a(Bundle bundle, C6131k kVar) {
            C2417i.this.m34778a(bundle, kVar);
        }
    }

    /* renamed from: com.facebook.internal.i$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/i$b.class */
    public class C2419b implements DialogC2420i0.AbstractC2427g {
        public C2419b() {
        }

        @Override // com.facebook.internal.DialogC2420i0.AbstractC2427g
        /* renamed from: a */
        public void mo34404a(Bundle bundle, C6131k kVar) {
            C2417i.this.m34779a(bundle);
        }
    }

    /* renamed from: a */
    public void m34780a(Dialog dialog) {
        this.f3017a = dialog;
    }

    /* renamed from: a */
    public final void m34779a(Bundle bundle) {
        FragmentActivity activity = getActivity();
        Intent intent = new Intent();
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        intent.putExtras(bundle2);
        activity.setResult(-1, intent);
        activity.finish();
    }

    /* renamed from: a */
    public final void m34778a(Bundle bundle, C6131k kVar) {
        FragmentActivity activity = getActivity();
        activity.setResult(kVar == null ? -1 : 0, C2372a0.m34967a(activity.getIntent(), bundle, kVar));
        activity.finish();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if ((this.f3017a instanceof DialogC2420i0) && isResumed()) {
            ((DialogC2420i0) this.f3017a).m34755e();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        DialogC2420i0 i0Var;
        super.onCreate(bundle);
        if (this.f3017a == null) {
            FragmentActivity activity = getActivity();
            Bundle d = C2372a0.m34948d(activity.getIntent());
            if (!d.getBoolean("is_fallback", false)) {
                String string = d.getString("action");
                Bundle bundle2 = d.getBundle("params");
                if (C2408g0.m34816d(string)) {
                    C2408g0.m34821c("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
                    activity.finish();
                    return;
                }
                DialogC2420i0.C2425e eVar = new DialogC2420i0.C2425e(activity, string, bundle2);
                eVar.m34750a(new C2418a());
                i0Var = eVar.mo34403a();
            } else {
                String string2 = d.getString("url");
                if (C2408g0.m34816d(string2)) {
                    C2408g0.m34821c("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
                    activity.finish();
                    return;
                }
                i0Var = DialogC2453l.m34689a(activity, string2, String.format("fb%s://bridge/", C6135n.m23745f()));
                i0Var.m34769a(new C2419b());
            }
            this.f3017a = i0Var;
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f3017a == null) {
            m34778a((Bundle) null, (C6131k) null);
            setShowsDialog(false);
        }
        return this.f3017a;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Dialog dialog = this.f3017a;
        if (dialog instanceof DialogC2420i0) {
            ((DialogC2420i0) dialog).m34755e();
        }
    }
}
