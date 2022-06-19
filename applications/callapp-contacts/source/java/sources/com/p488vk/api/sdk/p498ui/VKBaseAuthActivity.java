package com.p488vk.api.sdk.p498ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.mopub.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018�� \u001a2\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH$J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000bH$J\u0012\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\tH$J\u0012\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0012\u0010\u0013\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\u0014\u001a\u00020\u0007H\u0014J\b\u0010\u0015\u001a\u00020\u0007H\u0014J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0012H\u0014J\u001a\u0010\u0018\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001b"}, m4298d2 = {"Lcom/vk/api/sdk/ui/VKBaseAuthActivity;", "Landroid/app/Activity;", "()V", "authWasStarted", "", "isWaitingForAuthResult", "finish", "", "handleRedirectUri", "Landroid/content/Intent;", "redirectUri", "Landroid/net/Uri;", "handleStartAuth", "oauthUri", "isIntentWithAuthRequest", Constants.INTENT_SCHEME, "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "onPause", "onResume", "onSaveInstanceState", "outState", "processIntent", "allowRedirectHandle", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.ui.VKBaseAuthActivity */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKBaseAuthActivity.class */
public abstract class VKBaseAuthActivity extends Activity {

    /* renamed from: a */
    public static final C17712a f62552a = new C17712a(null);

    /* renamed from: b */
    private boolean f62553b;

    /* renamed from: c */
    private boolean f62554c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/vk/api/sdk/ui/VKBaseAuthActivity$Companion;", "", "()V", "KEY_WAITING_FOR_AUTH_RESULT", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKBaseAuthActivity$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKBaseAuthActivity$a.class */
    public static final class C17712a {
        private C17712a() {
        }

        public /* synthetic */ C17712a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: a */
    private final void m4794a(Intent intent, boolean z) {
        Uri data = intent != null ? intent.getData() : null;
        if (this.f62554c || !m4795a() || data == null) {
            if (!z) {
                return;
            }
            setResult(-1, m4792c());
            finish();
            this.f62554c = false;
        } else if (!m4793b()) {
            finish();
        } else {
            this.f62554c = true;
            this.f62553b = true;
        }
    }

    /* renamed from: a */
    protected abstract boolean m4795a();

    /* renamed from: b */
    protected abstract boolean m4793b();

    /* renamed from: c */
    protected abstract Intent m4792c();

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        this.f62554c = bundle != null ? bundle.getBoolean("VK_waitingForAuthResult", false) : false;
        m4794a(getIntent(), false);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m4794a(intent, true);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f62553b = false;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.f62554c || this.f62553b) {
            return;
        }
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        C18524p.m3840d(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("VK_waitingForAuthResult", this.f62554c);
    }
}
