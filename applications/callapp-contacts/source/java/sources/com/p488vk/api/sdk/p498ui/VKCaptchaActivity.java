package com.p488vk.api.sdk.p498ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.p488vk.api.sdk.C17587a;
import com.p488vk.api.sdk.C17707o;
import com.p488vk.api.sdk.p496e.C17673f;
import com.p488vk.api.sdk.p496e.C17676h;
import com.p488vk.api.sdk.p496e.C17679i;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\nH\u0016J\b\u0010\u0010\u001a\u00020\nH\u0002J\u0012\u0010\u0011\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\b\u0010\u0014\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n��¨\u0006\u0016"}, m4298d2 = {"Lcom/vk/api/sdk/ui/VKCaptchaActivity;", "Landroid/app/Activity;", "()V", "image", "Landroid/widget/ImageView;", "input", "Landroid/widget/EditText;", EventConstants.PROGRESS, "Landroid/widget/ProgressBar;", "captchaCancelled", "", "captchaDone", "displayImage", "bitmap", "Landroid/graphics/Bitmap;", "finish", "loadImage", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.ui.VKCaptchaActivity */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity.class */
public final class VKCaptchaActivity extends Activity {

    /* renamed from: a */
    public static final C17713a f62555a = new C17713a(null);

    /* renamed from: e */
    private static String f62556e;

    /* renamed from: b */
    private EditText f62557b;

    /* renamed from: c */
    private ImageView f62558c;

    /* renamed from: d */
    private ProgressBar f62559d;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000f"}, m4298d2 = {"Lcom/vk/api/sdk/ui/VKCaptchaActivity$Companion;", "", "()V", "KEY_URL", "", "lastKey", "getLastKey", "()Ljava/lang/String;", "setLastKey", "(Ljava/lang/String;)V", EventConstants.START, "", "context", "Landroid/content/Context;", "img", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKCaptchaActivity$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$a.class */
    public static final class C17713a {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.ui.VKCaptchaActivity$a$a */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$a$a.class */
        public static final class RunnableC17714a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ Context f62560a;

            /* renamed from: b */
            final /* synthetic */ String f62561b;

            public RunnableC17714a(Context context, String str) {
                this.f62560a = context;
                this.f62561b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Intent putExtra = new Intent(this.f62560a, VKCaptchaActivity.class).addFlags(268435456).putExtra("key_url", this.f62561b);
                C18524p.m3843b(putExtra, "Intent(context, VKCaptch…  .putExtra(KEY_URL, img)");
                this.f62560a.startActivity(putExtra);
            }
        }

        private C17713a() {
        }

        public /* synthetic */ C17713a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKCaptchaActivity$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$b.class */
    public static final class RunnableC17715b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Bitmap f62563b;

        RunnableC17715b(Bitmap bitmap) {
            VKCaptchaActivity.this = r4;
            this.f62563b = bitmap;
        }

        @Override // java.lang.Runnable
        public final void run() {
            VKCaptchaActivity.m4787c(VKCaptchaActivity.this).setImageBitmap(this.f62563b);
            VKCaptchaActivity.m4786d(VKCaptchaActivity.this).setVisibility(8);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKCaptchaActivity$c */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$c.class */
    static final class RunnableC17716c implements Runnable {

        /* renamed from: b */
        final /* synthetic */ String f62565b;

        RunnableC17716c(String str) {
            VKCaptchaActivity.this = r4;
            this.f62565b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C17673f c17673f = C17673f.f62482a;
            String url = this.f62565b;
            C18524p.m3843b(url, "url");
            byte[] m4840a = C17673f.m4840a(url);
            if (m4840a != null) {
                VKCaptchaActivity vKCaptchaActivity = VKCaptchaActivity.this;
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(m4840a, 0, m4840a.length);
                C18524p.m3843b(decodeByteArray, "BitmapFactory.decodeByteArray(data, 0, data.size)");
                VKCaptchaActivity.m4789a(vKCaptchaActivity, decodeByteArray);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKCaptchaActivity$d */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$d.class */
    static final class DialogInterface$OnClickListenerC17717d implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC17717d() {
            VKCaptchaActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            VKCaptchaActivity.m4790a(VKCaptchaActivity.this);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKCaptchaActivity$e */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$e.class */
    static final class DialogInterface$OnClickListenerC17718e implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC17718e() {
            VKCaptchaActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            VKCaptchaActivity.m4788b(VKCaptchaActivity.this);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "onCancel"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.ui.VKCaptchaActivity$f */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$f.class */
    static final class DialogInterface$OnCancelListenerC17719f implements DialogInterface.OnCancelListener {
        DialogInterface$OnCancelListenerC17719f() {
            VKCaptchaActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            VKCaptchaActivity.m4788b(VKCaptchaActivity.this);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m4790a(VKCaptchaActivity vKCaptchaActivity) {
        EditText editText = vKCaptchaActivity.f62557b;
        if (editText == null) {
            C18524p.m3848a("input");
        }
        f62556e = editText.getText().toString();
        C17679i c17679i = C17679i.f62490a;
        C17679i.m4832b();
        vKCaptchaActivity.finish();
    }

    /* renamed from: a */
    public static final /* synthetic */ void m4789a(VKCaptchaActivity vKCaptchaActivity, Bitmap bitmap) {
        C17707o.m4797a(new RunnableC17715b(bitmap));
    }

    /* renamed from: b */
    public static final /* synthetic */ void m4788b(VKCaptchaActivity vKCaptchaActivity) {
        f62556e = null;
        C17679i c17679i = C17679i.f62490a;
        C17679i.m4832b();
        vKCaptchaActivity.setResult(0);
        vKCaptchaActivity.finish();
    }

    /* renamed from: c */
    public static final /* synthetic */ ImageView m4787c(VKCaptchaActivity vKCaptchaActivity) {
        ImageView imageView = vKCaptchaActivity.f62558c;
        if (imageView == null) {
            C18524p.m3848a("image");
        }
        return imageView;
    }

    /* renamed from: d */
    public static final /* synthetic */ ProgressBar m4786d(VKCaptchaActivity vKCaptchaActivity) {
        ProgressBar progressBar = vKCaptchaActivity.f62559d;
        if (progressBar == null) {
            C18524p.m3848a(EventConstants.PROGRESS);
        }
        return progressBar;
    }

    @Override // android.app.Activity
    public final void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        VKCaptchaActivity vKCaptchaActivity = this;
        setContentView(new FrameLayout(vKCaptchaActivity));
        LinearLayout linearLayout = new LinearLayout(vKCaptchaActivity);
        C17676h c17676h = C17676h.f62484a;
        int ceil = (int) Math.ceil(C17676h.m4839a().density * 12.0f);
        C17676h c17676h2 = C17676h.f62484a;
        int max = (int) (Math.max(1.0f, C17676h.m4839a().density) * 130.0f);
        C17676h c17676h3 = C17676h.f62484a;
        int max2 = (int) (Math.max(1.0f, C17676h.m4839a().density) * 50.0f);
        linearLayout.setPadding(ceil, ceil, ceil, ceil);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        FrameLayout frameLayout = new FrameLayout(vKCaptchaActivity);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(max, max2);
        layoutParams.bottomMargin = ceil;
        frameLayout.setLayoutParams(layoutParams);
        this.f62559d = new ProgressBar(vKCaptchaActivity);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        ProgressBar progressBar = this.f62559d;
        if (progressBar == null) {
            C18524p.m3848a(EventConstants.PROGRESS);
        }
        progressBar.setLayoutParams(layoutParams2);
        ProgressBar progressBar2 = this.f62559d;
        if (progressBar2 == null) {
            C18524p.m3848a(EventConstants.PROGRESS);
        }
        frameLayout.addView(progressBar2);
        this.f62558c = new ImageView(vKCaptchaActivity);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams3.gravity = 17;
        ImageView imageView = this.f62558c;
        if (imageView == null) {
            C18524p.m3848a("image");
        }
        imageView.setLayoutParams(layoutParams3);
        ImageView imageView2 = this.f62558c;
        if (imageView2 == null) {
            C18524p.m3848a("image");
        }
        frameLayout.addView(imageView2);
        linearLayout.addView(frameLayout);
        EditText editText = new EditText(vKCaptchaActivity);
        this.f62557b = editText;
        if (editText == null) {
            C18524p.m3848a("input");
        }
        editText.setInputType(176);
        EditText editText2 = this.f62557b;
        if (editText2 == null) {
            C18524p.m3848a("input");
        }
        editText2.setSingleLine(true);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(max, -2);
        EditText editText3 = this.f62557b;
        if (editText3 == null) {
            C18524p.m3848a("input");
        }
        editText3.setLayoutParams(layoutParams4);
        EditText editText4 = this.f62557b;
        if (editText4 == null) {
            C18524p.m3848a("input");
        }
        linearLayout.addView(editText4);
        new AlertDialog.Builder(vKCaptchaActivity, 5).setView(linearLayout).setTitle(C17587a.C17590c.vk_captcha_hint).setPositiveButton(17039370, new DialogInterface$OnClickListenerC17717d()).setNegativeButton(17039360, new DialogInterface$OnClickListenerC17718e()).setOnCancelListener(new DialogInterface$OnCancelListenerC17719f()).show();
        EditText editText5 = this.f62557b;
        if (editText5 == null) {
            C18524p.m3848a("input");
        }
        editText5.requestFocus();
        String stringExtra = getIntent().getStringExtra("key_url");
        C17707o c17707o = C17707o.f62545a;
        C17707o.m4798a().submit(new RunnableC17716c(stringExtra));
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        C17679i c17679i = C17679i.f62490a;
        C17679i.m4832b();
        super.onDestroy();
    }
}
