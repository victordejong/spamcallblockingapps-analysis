package com.vk.api.sdk.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.mopub.common.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018�� \u001a2\u00020\u0001:\u0001\u001aB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH$J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000bH$J\u0012\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\tH$J\u0012\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0012\u0010\u0013\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\u0014\u001a\u00020\u0007H\u0014J\b\u0010\u0015\u001a\u00020\u0007H\u0014J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0012H\u0014J\u001a\u0010\u0018\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001b"}, d2 = {"Lcom/vk/api/sdk/ui/VKBaseAuthActivity;", "Landroid/app/Activity;", "()V", "authWasStarted", "", "isWaitingForAuthResult", "finish", "", "handleRedirectUri", "Landroid/content/Intent;", "redirectUri", "Landroid/net/Uri;", "handleStartAuth", "oauthUri", "isIntentWithAuthRequest", Constants.INTENT_SCHEME, "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "onPause", "onResume", "onSaveInstanceState", "outState", "processIntent", "allowRedirectHandle", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKBaseAuthActivity.class */
public abstract class VKBaseAuthActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36115a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f36116b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36117c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/ui/VKBaseAuthActivity$Companion;", "", "()V", "KEY_WAITING_FOR_AUTH_RESULT", "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKBaseAuthActivity$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void a(Intent intent, boolean z) {
        Uri data = intent != null ? intent.getData() : null;
        if (this.f36117c || !a() || data == null) {
            if (z) {
                setResult(-1, c());
                finish();
                this.f36117c = false;
            }
        } else if (b()) {
            this.f36117c = true;
            this.f36116b = true;
        } else {
            finish();
        }
    }

    protected abstract boolean a();

    protected abstract boolean b();

    protected abstract Intent c();

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        this.f36117c = bundle != null ? bundle.getBoolean("VK_waitingForAuthResult", false) : false;
        a(getIntent(), false);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        a(intent, true);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f36116b = false;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f36117c && !this.f36116b) {
            setResult(0);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        p.d(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("VK_waitingForAuthResult", this.f36117c);
    }
}
