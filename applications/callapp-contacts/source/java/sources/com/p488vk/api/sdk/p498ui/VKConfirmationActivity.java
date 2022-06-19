package com.p488vk.api.sdk.p498ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.p488vk.api.sdk.C17587a;
import com.p488vk.api.sdk.p496e.C17679i;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\b\u001a\u00020\u0004H\u0014¨\u0006\n"}, m4298d2 = {"Lcom/vk/api/sdk/ui/VKConfirmationActivity;", "Landroid/app/Activity;", "()V", "finish", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.ui.VKConfirmationActivity */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity.class */
public final class VKConfirmationActivity extends Activity {

    /* renamed from: a */
    public static final C17720a f62569a = new C17720a(null);

    /* renamed from: b */
    private static boolean f62570b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, m4298d2 = {"Lcom/vk/api/sdk/ui/VKConfirmationActivity$Companion;", "", "()V", "KEY_MESSAGE", "", "result", "", "getResult", "()Z", "setResult", "(Z)V", EventConstants.START, "", "context", "Landroid/content/Context;", "message", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKConfirmationActivity$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$a.class */
    public static final class C17720a {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.ui.VKConfirmationActivity$a$a */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$a$a.class */
        public static final class RunnableC17721a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ Context f62571a;

            /* renamed from: b */
            final /* synthetic */ String f62572b;

            public RunnableC17721a(Context context, String str) {
                this.f62571a = context;
                this.f62572b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Intent putExtra = new Intent(this.f62571a, VKConfirmationActivity.class).addFlags(268435456).putExtra("key_message", this.f62572b);
                C18524p.m3843b(putExtra, "Intent(context, VKConfir…tra(KEY_MESSAGE, message)");
                this.f62571a.startActivity(putExtra);
            }
        }

        private C17720a() {
        }

        public /* synthetic */ C17720a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKConfirmationActivity$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$b.class */
    static final class DialogInterface$OnClickListenerC17722b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC17722b() {
            VKConfirmationActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C17720a c17720a = VKConfirmationActivity.f62569a;
            VKConfirmationActivity.f62570b = true;
            VKConfirmationActivity.this.finish();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKConfirmationActivity$c */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$c.class */
    static final class DialogInterface$OnClickListenerC17723c implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC17723c() {
            VKConfirmationActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C17720a c17720a = VKConfirmationActivity.f62569a;
            VKConfirmationActivity.f62570b = false;
            VKConfirmationActivity.this.finish();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "onCancel"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKConfirmationActivity$d */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$d.class */
    static final class DialogInterface$OnCancelListenerC17724d implements DialogInterface.OnCancelListener {
        DialogInterface$OnCancelListenerC17724d() {
            VKConfirmationActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            C17720a c17720a = VKConfirmationActivity.f62569a;
            VKConfirmationActivity.f62570b = false;
            VKConfirmationActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        super.finish();
        C17679i c17679i = C17679i.f62490a;
        C17679i.m4832b();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        VKConfirmationActivity vKConfirmationActivity = this;
        setContentView(new FrameLayout(vKConfirmationActivity));
        new AlertDialog.Builder(vKConfirmationActivity, 5).setTitle(C17587a.C17590c.vk_confirm).setMessage(getIntent().getStringExtra("key_message")).setPositiveButton(17039370, new DialogInterface$OnClickListenerC17722b()).setNegativeButton(17039360, new DialogInterface$OnClickListenerC17723c()).setOnCancelListener(new DialogInterface$OnCancelListenerC17724d()).show();
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        C17679i c17679i = C17679i.f62490a;
        C17679i.m4832b();
    }
}
