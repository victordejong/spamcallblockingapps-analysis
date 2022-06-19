package com.facebook.referrals;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.C10181g;
import com.facebook.CustomTabMainActivity;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10280e;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
/* renamed from: com.facebook.referrals.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/referrals/a.class */
final class C10431a {

    /* renamed from: a */
    protected String f34122a;

    /* renamed from: b */
    private Fragment f34123b;

    /* renamed from: c */
    private String f34124c;

    public C10431a(Fragment fragment) {
        this.f34123b = fragment;
    }

    /* renamed from: a */
    private void m22800a(int i, Intent intent) {
        FragmentActivity activity;
        if (!this.f34123b.isAdded() || (activity = this.f34123b.getActivity()) == null) {
            return;
        }
        activity.setResult(i, intent);
        activity.finish();
    }

    /* renamed from: b */
    private String m22799b() {
        if (this.f34124c == null) {
            this.f34124c = C10280e.m23068a();
        }
        return this.f34124c;
    }

    /* renamed from: c */
    private static String m22798c() {
        return "fb" + C10181g.m23286m() + "://authorize";
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22802a() {
        /*
            r5 = this;
            r0 = r5
            androidx.fragment.app.Fragment r0 = r0.f34123b
            androidx.fragment.app.FragmentActivity r0 = r0.getActivity()
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto Lb2
            r0 = r5
            androidx.fragment.app.Fragment r0 = r0.f34123b
            androidx.fragment.app.FragmentActivity r0 = r0.getActivity()
            java.lang.String r1 = "android.permission.INTERNET"
            int r0 = r0.checkCallingOrSelfPermission(r1)
            if (r0 != 0) goto Lb2
            r0 = r5
            java.lang.String r0 = r0.m22799b()
            if (r0 == 0) goto L29
            r0 = 1
            r8 = r0
            goto L2b
        L29:
            r0 = 0
            r8 = r0
        L2b:
            r0 = r8
            if (r0 != 0) goto L32
            goto Lb2
        L32:
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            java.lang.String r1 = com.facebook.internal.C10213ae.m23203c()
            r0.f34122a = r1
            r0 = r6
            java.lang.String r1 = "redirect_uri"
            java.lang.String r2 = m22798c()
            java.lang.String r2 = com.facebook.internal.C10280e.m23067a(r2)
            r0.putString(r1, r2)
            r0 = r6
            java.lang.String r1 = "app_id"
            java.lang.String r2 = com.facebook.C10181g.m23286m()
            r0.putString(r1, r2)
            r0 = r6
            java.lang.String r1 = "state"
            r2 = r5
            java.lang.String r2 = r2.f34122a
            r0.putString(r1, r2)
            boolean r0 = com.facebook.C10181g.f33597a
            if (r0 == 0) goto L6f
            java.lang.String r0 = "share_referral"
            r1 = r6
            android.net.Uri r0 = com.facebook.internal.C10278d.m23070a(r0, r1)
            com.facebook.login.C10379a.m22897a(r0)
        L6f:
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r2 = r5
            androidx.fragment.app.Fragment r2 = r2.f34123b
            androidx.fragment.app.FragmentActivity r2 = r2.getActivity()
            java.lang.Class<com.facebook.CustomTabMainActivity> r3 = com.facebook.CustomTabMainActivity.class
            r1.<init>(r2, r3)
            r9 = r0
            r0 = r9
            java.lang.String r1 = com.facebook.CustomTabMainActivity.f33040a
            java.lang.String r2 = "share_referral"
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r9
            java.lang.String r1 = com.facebook.CustomTabMainActivity.f33041b
            r2 = r6
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r9
            java.lang.String r1 = com.facebook.CustomTabMainActivity.f33042c
            r2 = r5
            java.lang.String r2 = r2.m22799b()
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r5
            androidx.fragment.app.Fragment r0 = r0.f34123b
            r1 = r9
            r2 = 1
            r0.startActivityForResult(r1, r2)
            r0 = r7
            r8 = r0
            goto Lb4
        Lb2:
            r0 = 0
            r8 = r0
        Lb4:
            r0 = r8
            if (r0 != 0) goto Lcf
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "error_message"
            java.lang.String r2 = "Failed to open Referral dialog: Chrome custom tab could not be started. Please make sure internet permission is granted and Chrome is installed"
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r5
            r1 = 0
            r2 = r6
            r0.m22800a(r1, r2)
        Lcf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.referrals.C10431a.m22802a():void");
    }

    /* renamed from: a */
    public final void m22801a(int i, int i2, Intent intent) {
        boolean z = true;
        if (i != 1) {
            return;
        }
        int i3 = i2;
        if (intent != null) {
            String stringExtra = intent.getStringExtra(CustomTabMainActivity.f33043d);
            i3 = i2;
            if (stringExtra != null) {
                i3 = i2;
                if (stringExtra.startsWith(C10280e.m23067a(m22798c()))) {
                    Bundle m23195d = C10213ae.m23195d(Uri.parse(stringExtra).getQuery());
                    if (this.f34122a != null) {
                        z = this.f34122a.equals(m23195d.getString(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY));
                        this.f34122a = null;
                    }
                    if (z) {
                        intent.putExtras(m23195d);
                        i3 = i2;
                    } else {
                        i3 = 0;
                        intent.putExtra("error_message", "The referral response was missing a valid challenge string.");
                    }
                }
            }
        }
        m22800a(i3, intent);
    }
}
