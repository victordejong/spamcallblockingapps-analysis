package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.c;
import com.facebook.FacebookException;
import com.facebook.internal.ag;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/g.class */
public class g extends c {

    /* renamed from: c  reason: collision with root package name */
    public Dialog f19931c;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bundle bundle, FacebookException facebookException) {
        FragmentActivity activity = getActivity();
        activity.setResult(facebookException == null ? -1 : 0, z.a(activity.getIntent(), bundle, facebookException));
        activity.finish();
    }

    static /* synthetic */ void a(g gVar, Bundle bundle) {
        FragmentActivity activity = gVar.getActivity();
        Intent intent = new Intent();
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        intent.putExtras(bundle2);
        activity.setResult(-1, intent);
        activity.finish();
    }

    @Override // androidx.fragment.app.c
    public final Dialog a(Bundle bundle) {
        if (this.f19931c == null) {
            a((Bundle) null, (FacebookException) null);
            setShowsDialog(false);
        }
        return this.f19931c;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if ((this.f19931c instanceof ag) && isResumed()) {
            ((ag) this.f19931c).c();
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        ag agVar;
        super.onCreate(bundle);
        if (this.f19931c == null) {
            FragmentActivity activity = getActivity();
            Bundle b2 = z.b(activity.getIntent());
            if (!b2.getBoolean("is_fallback", false)) {
                String string = b2.getString("action");
                Bundle bundle2 = b2.getBundle("params");
                if (ae.a(string)) {
                    ae.a();
                    activity.finish();
                    return;
                }
                ag.a aVar = new ag.a(activity, string, bundle2);
                aVar.f19835a = new ag.c() { // from class: com.facebook.internal.g.1
                    @Override // com.facebook.internal.ag.c
                    public final void a(Bundle bundle3, FacebookException facebookException) {
                        g.this.a(bundle3, facebookException);
                    }
                };
                agVar = aVar.a();
            } else {
                String string2 = b2.getString("url");
                if (ae.a(string2)) {
                    ae.a();
                    activity.finish();
                    return;
                }
                agVar = k.a(activity, string2, String.format("fb%s://bridge/", com.facebook.g.m()));
                agVar.f19828a = new ag.c() { // from class: com.facebook.internal.g.2
                    @Override // com.facebook.internal.ag.c
                    public final void a(Bundle bundle3, FacebookException facebookException) {
                        g.a(g.this, bundle3);
                    }
                };
            }
            this.f19931c = agVar;
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Dialog dialog = this.f19931c;
        if (dialog instanceof ag) {
            ((ag) dialog).c();
        }
    }
}
