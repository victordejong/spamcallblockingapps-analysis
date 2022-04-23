package com.vk.api.sdk.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.vk.api.sdk.a;
import com.vk.api.sdk.e.i;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\b\u001a\u00020\u0004H\u0014¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/ui/VKConfirmationActivity;", "Landroid/app/Activity;", "()V", "finish", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity.class */
public final class VKConfirmationActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36131a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private static boolean f36132b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/vk/api/sdk/ui/VKConfirmationActivity$Companion;", "", "()V", "KEY_MESSAGE", "", "result", "", "getResult", "()Z", "setResult", "(Z)V", EventConstants.START, "", "context", "Landroid/content/Context;", "message", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$a.class */
    public static final class a {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.ui.VKConfirmationActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$a$a.class */
        public static final class RunnableC0581a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Context f36133a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f36134b;

            public RunnableC0581a(Context context, String str) {
                this.f36133a = context;
                this.f36134b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Intent putExtra = new Intent(this.f36133a, VKConfirmationActivity.class).addFlags(268435456).putExtra("key_message", this.f36134b);
                p.b(putExtra, "Intent(context, VKConfir…tra(KEY_MESSAGE, message)");
                this.f36133a.startActivity(putExtra);
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$b.class */
    static final class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            a aVar = VKConfirmationActivity.f36131a;
            VKConfirmationActivity.f36132b = true;
            VKConfirmationActivity.this.finish();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$c.class */
    static final class c implements DialogInterface.OnClickListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            a aVar = VKConfirmationActivity.f36131a;
            VKConfirmationActivity.f36132b = false;
            VKConfirmationActivity.this.finish();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "onCancel"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKConfirmationActivity$d.class */
    static final class d implements DialogInterface.OnCancelListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            a aVar = VKConfirmationActivity.f36131a;
            VKConfirmationActivity.f36132b = false;
            VKConfirmationActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        super.finish();
        i iVar = i.f36069a;
        i.b();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        VKConfirmationActivity vKConfirmationActivity = this;
        setContentView(new FrameLayout(vKConfirmationActivity));
        new AlertDialog.Builder(vKConfirmationActivity, 5).setTitle(a.c.vk_confirm).setMessage(getIntent().getStringExtra("key_message")).setPositiveButton(17039370, new b()).setNegativeButton(17039360, new c()).setOnCancelListener(new d()).show();
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        i iVar = i.f36069a;
        i.b();
    }
}
