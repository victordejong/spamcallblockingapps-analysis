package com.facebook.referrals;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.CustomTabMainActivity;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.e;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
/* loaded from: classes3-dex2jar.jar:com/facebook/referrals/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    protected String f20151a;

    /* renamed from: b  reason: collision with root package name */
    private Fragment f20152b;

    /* renamed from: c  reason: collision with root package name */
    private String f20153c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Fragment fragment) {
        this.f20152b = fragment;
    }

    private void a(int i, Intent intent) {
        FragmentActivity activity;
        if (this.f20152b.isAdded() && (activity = this.f20152b.getActivity()) != null) {
            activity.setResult(i, intent);
            activity.finish();
        }
    }

    private String b() {
        if (this.f20153c == null) {
            this.f20153c = e.a();
        }
        return this.f20153c;
    }

    private static String c() {
        return "fb" + g.m() + "://authorize";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r5 = this;
            r0 = r5
            androidx.fragment.app.Fragment r0 = r0.f20152b
            androidx.fragment.app.FragmentActivity r0 = r0.getActivity()
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00b2
            r0 = r5
            androidx.fragment.app.Fragment r0 = r0.f20152b
            androidx.fragment.app.FragmentActivity r0 = r0.getActivity()
            java.lang.String r1 = "android.permission.INTERNET"
            int r0 = r0.checkCallingOrSelfPermission(r1)
            if (r0 != 0) goto L_0x00b2
            r0 = r5
            java.lang.String r0 = r0.b()
            if (r0 == 0) goto L_0x0029
            r0 = 1
            r8 = r0
            goto L_0x002b
        L_0x0029:
            r0 = 0
            r8 = r0
        L_0x002b:
            r0 = r8
            if (r0 != 0) goto L_0x0032
            goto L_0x00b2
        L_0x0032:
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            java.lang.String r1 = com.facebook.internal.ae.c()
            r0.f20151a = r1
            r0 = r6
            java.lang.String r1 = "redirect_uri"
            java.lang.String r2 = c()
            java.lang.String r2 = com.facebook.internal.e.a(r2)
            r0.putString(r1, r2)
            r0 = r6
            java.lang.String r1 = "app_id"
            java.lang.String r2 = com.facebook.g.m()
            r0.putString(r1, r2)
            r0 = r6
            java.lang.String r1 = "state"
            r2 = r5
            java.lang.String r2 = r2.f20151a
            r0.putString(r1, r2)
            boolean r0 = com.facebook.g.f19779a
            if (r0 == 0) goto L_0x006f
            java.lang.String r0 = "share_referral"
            r1 = r6
            android.net.Uri r0 = com.facebook.internal.d.a(r0, r1)
            com.facebook.login.a.a(r0)
        L_0x006f:
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r2 = r5
            androidx.fragment.app.Fragment r2 = r2.f20152b
            androidx.fragment.app.FragmentActivity r2 = r2.getActivity()
            java.lang.Class<com.facebook.CustomTabMainActivity> r3 = com.facebook.CustomTabMainActivity.class
            r1.<init>(r2, r3)
            r9 = r0
            r0 = r9
            java.lang.String r1 = com.facebook.CustomTabMainActivity.f19347a
            java.lang.String r2 = "share_referral"
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r9
            java.lang.String r1 = com.facebook.CustomTabMainActivity.f19348b
            r2 = r6
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r9
            java.lang.String r1 = com.facebook.CustomTabMainActivity.f19349c
            r2 = r5
            java.lang.String r2 = r2.b()
            android.content.Intent r0 = r0.putExtra(r1, r2)
            r0 = r5
            androidx.fragment.app.Fragment r0 = r0.f20152b
            r1 = r9
            r2 = 1
            r0.startActivityForResult(r1, r2)
            r0 = r7
            r8 = r0
            goto L_0x00b4
        L_0x00b2:
            r0 = 0
            r8 = r0
        L_0x00b4:
            r0 = r8
            if (r0 != 0) goto L_0x00cf
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
            r0.a(r1, r2)
        L_0x00cf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.referrals.a.a():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2, Intent intent) {
        boolean z = true;
        if (i == 1) {
            int i3 = i2;
            if (intent != null) {
                String stringExtra = intent.getStringExtra(CustomTabMainActivity.f19350d);
                i3 = i2;
                if (stringExtra != null) {
                    i3 = i2;
                    if (stringExtra.startsWith(e.a(c()))) {
                        Bundle d2 = ae.d(Uri.parse(stringExtra).getQuery());
                        if (this.f20151a != null) {
                            z = this.f20151a.equals(d2.getString(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY));
                            this.f20151a = null;
                        }
                        if (z) {
                            intent.putExtras(d2);
                            i3 = i2;
                        } else {
                            i3 = 0;
                            intent.putExtra("error_message", "The referral response was missing a valid challenge string.");
                        }
                    }
                }
            }
            a(i3, intent);
        }
    }
}
