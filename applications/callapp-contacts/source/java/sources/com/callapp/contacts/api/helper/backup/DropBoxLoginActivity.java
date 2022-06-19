package com.callapp.contacts.api.helper.backup;

import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.dropbox.core.android.AuthActivity;
import com.mopub.common.Constants;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0014¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxLoginActivity;", "Lcom/dropbox/core/android/AuthActivity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxLoginActivity.class */
public final class DropBoxLoginActivity extends AuthActivity {
    @Override // com.dropbox.core.android.AuthActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        CallAppApplication callAppApplication = CallAppApplication.get();
        String string = Activities.getString(2131886800);
        if (string != null) {
            AuthActivity.m25344a(string, null, null, null, null, null, null, null, null, null, null);
            new Intent(callAppApplication, AuthActivity.class);
            super.onCreate(bundle);
            return;
        }
        throw new IllegalArgumentException("'appKey' can't be null");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    @Override // com.dropbox.core.android.AuthActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onNewIntent(android.content.Intent r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "intent"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r7
            r1 = r8
            super.onNewIntent(r1)
            com.callapp.contacts.api.helper.backup.DropBoxHelper$Companion r0 = com.callapp.contacts.api.helper.backup.DropBoxHelper.f24761c
            com.callapp.contacts.api.helper.backup.DropBoxHelper r0 = r0.get()
            r9 = r0
            android.content.Intent r0 = com.dropbox.core.android.AuthActivity.f30465a
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = r8
            if (r0 != 0) goto L21
        L1c:
            r0 = 0
            r8 = r0
            goto La5
        L21:
            r0 = r8
            java.lang.String r1 = "ACCESS_TOKEN"
            java.lang.String r0 = r0.getStringExtra(r1)
            r11 = r0
            r0 = r8
            java.lang.String r1 = "ACCESS_SECRET"
            java.lang.String r0 = r0.getStringExtra(r1)
            r12 = r0
            r0 = r8
            java.lang.String r1 = "UID"
            java.lang.String r0 = r0.getStringExtra(r1)
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L1c
            java.lang.String r0 = ""
            r1 = r11
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1c
            r0 = r12
            if (r0 == 0) goto L1c
            java.lang.String r0 = ""
            r1 = r12
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1c
            r0 = r13
            if (r0 == 0) goto L1c
            java.lang.String r0 = ""
            r1 = r13
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L69
            goto L1c
        L69:
            r0 = r8
            java.lang.String r1 = "CONSUMER_KEY"
            java.lang.String r0 = r0.getStringExtra(r1)
            r13 = r0
            r0 = r8
            java.lang.String r1 = "REFRESH_TOKEN"
            java.lang.String r0 = r0.getStringExtra(r1)
            r11 = r0
            r0 = r8
            java.lang.String r1 = "EXPIRES_AT"
            r2 = -1
            long r0 = r0.getLongExtra(r1, r2)
            r14 = r0
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L94
            r0 = r14
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r8 = r0
            goto L96
        L94:
            r0 = 0
            r8 = r0
        L96:
            com.dropbox.core.oauth.a r0 = new com.dropbox.core.oauth.a
            r1 = r0
            r2 = r12
            r3 = r8
            r4 = r11
            r5 = r13
            r1.<init>(r2, r3, r4, r5)
            r8 = r0
        La5:
            r0 = r8
            if (r0 != 0) goto Lae
            r0 = r10
            r8 = r0
            goto Lb3
        Lae:
            r0 = r8
            java.lang.String r0 = r0.f30624a
            r8 = r0
        Lb3:
            r0 = r9
            r1 = r8
            r0.m29284a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.backup.DropBoxLoginActivity.onNewIntent(android.content.Intent):void");
    }
}
