package com.vk.api.sdk.ui;

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
import com.vk.api.sdk.a;
import com.vk.api.sdk.e.h;
import com.vk.api.sdk.e.i;
import com.vk.api.sdk.o;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\nH\u0016J\b\u0010\u0010\u001a\u00020\nH\u0002J\u0012\u0010\u0011\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\b\u0010\u0014\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/vk/api/sdk/ui/VKCaptchaActivity;", "Landroid/app/Activity;", "()V", "image", "Landroid/widget/ImageView;", "input", "Landroid/widget/EditText;", EventConstants.PROGRESS, "Landroid/widget/ProgressBar;", "captchaCancelled", "", "captchaDone", "displayImage", "bitmap", "Landroid/graphics/Bitmap;", "finish", "loadImage", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity.class */
public final class VKCaptchaActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36118a = new a(null);
    private static String e;

    /* renamed from: b  reason: collision with root package name */
    private EditText f36119b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f36120c;

    /* renamed from: d  reason: collision with root package name */
    private ProgressBar f36121d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/vk/api/sdk/ui/VKCaptchaActivity$Companion;", "", "()V", "KEY_URL", "", "lastKey", "getLastKey", "()Ljava/lang/String;", "setLastKey", "(Ljava/lang/String;)V", EventConstants.START, "", "context", "Landroid/content/Context;", "img", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$a.class */
    public static final class a {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.ui.VKCaptchaActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$a$a.class */
        public static final class RunnableC0580a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Context f36122a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f36123b;

            public RunnableC0580a(Context context, String str) {
                this.f36122a = context;
                this.f36123b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Intent putExtra = new Intent(this.f36122a, VKCaptchaActivity.class).addFlags(268435456).putExtra("key_url", this.f36123b);
                p.b(putExtra, "Intent(context, VKCaptch…  .putExtra(KEY_URL, img)");
                this.f36122a.startActivity(putExtra);
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$b.class */
    public static final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Bitmap f36125b;

        b(Bitmap bitmap) {
            this.f36125b = bitmap;
        }

        @Override // java.lang.Runnable
        public final void run() {
            VKCaptchaActivity.c(VKCaptchaActivity.this).setImageBitmap(this.f36125b);
            VKCaptchaActivity.d(VKCaptchaActivity.this).setVisibility(8);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$c.class */
    static final class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f36127b;

        c(String str) {
            this.f36127b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.vk.api.sdk.e.f fVar = com.vk.api.sdk.e.f.f36061a;
            String url = this.f36127b;
            p.b(url, "url");
            byte[] a2 = com.vk.api.sdk.e.f.a(url);
            if (a2 != null) {
                VKCaptchaActivity vKCaptchaActivity = VKCaptchaActivity.this;
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(a2, 0, a2.length);
                p.b(decodeByteArray, "BitmapFactory.decodeByteArray(data, 0, data.size)");
                VKCaptchaActivity.a(vKCaptchaActivity, decodeByteArray);
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$d.class */
    static final class d implements DialogInterface.OnClickListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            VKCaptchaActivity.a(VKCaptchaActivity.this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$e.class */
    static final class e implements DialogInterface.OnClickListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            VKCaptchaActivity.b(VKCaptchaActivity.this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "onCancel"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/ui/VKCaptchaActivity$f.class */
    static final class f implements DialogInterface.OnCancelListener {
        f() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            VKCaptchaActivity.b(VKCaptchaActivity.this);
        }
    }

    public static final /* synthetic */ String a() {
        return e;
    }

    public static final /* synthetic */ void a(VKCaptchaActivity vKCaptchaActivity) {
        EditText editText = vKCaptchaActivity.f36119b;
        if (editText == null) {
            p.a("input");
        }
        e = editText.getText().toString();
        i iVar = i.f36069a;
        i.b();
        vKCaptchaActivity.finish();
    }

    public static final /* synthetic */ void a(VKCaptchaActivity vKCaptchaActivity, Bitmap bitmap) {
        o.a(new b(bitmap));
    }

    public static final /* synthetic */ void b(VKCaptchaActivity vKCaptchaActivity) {
        e = null;
        i iVar = i.f36069a;
        i.b();
        vKCaptchaActivity.setResult(0);
        vKCaptchaActivity.finish();
    }

    public static final /* synthetic */ ImageView c(VKCaptchaActivity vKCaptchaActivity) {
        ImageView imageView = vKCaptchaActivity.f36120c;
        if (imageView == null) {
            p.a("image");
        }
        return imageView;
    }

    public static final /* synthetic */ ProgressBar d(VKCaptchaActivity vKCaptchaActivity) {
        ProgressBar progressBar = vKCaptchaActivity.f36121d;
        if (progressBar == null) {
            p.a(EventConstants.PROGRESS);
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
        h hVar = h.f36063a;
        int ceil = (int) Math.ceil(h.a().density * 12.0f);
        h hVar2 = h.f36063a;
        int max = (int) (Math.max(1.0f, h.a().density) * 130.0f);
        h hVar3 = h.f36063a;
        int max2 = (int) (Math.max(1.0f, h.a().density) * 50.0f);
        linearLayout.setPadding(ceil, ceil, ceil, ceil);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        FrameLayout frameLayout = new FrameLayout(vKCaptchaActivity);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(max, max2);
        layoutParams.bottomMargin = ceil;
        frameLayout.setLayoutParams(layoutParams);
        this.f36121d = new ProgressBar(vKCaptchaActivity);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        ProgressBar progressBar = this.f36121d;
        if (progressBar == null) {
            p.a(EventConstants.PROGRESS);
        }
        progressBar.setLayoutParams(layoutParams2);
        ProgressBar progressBar2 = this.f36121d;
        if (progressBar2 == null) {
            p.a(EventConstants.PROGRESS);
        }
        frameLayout.addView(progressBar2);
        this.f36120c = new ImageView(vKCaptchaActivity);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams3.gravity = 17;
        ImageView imageView = this.f36120c;
        if (imageView == null) {
            p.a("image");
        }
        imageView.setLayoutParams(layoutParams3);
        ImageView imageView2 = this.f36120c;
        if (imageView2 == null) {
            p.a("image");
        }
        frameLayout.addView(imageView2);
        linearLayout.addView(frameLayout);
        EditText editText = new EditText(vKCaptchaActivity);
        this.f36119b = editText;
        if (editText == null) {
            p.a("input");
        }
        editText.setInputType(176);
        EditText editText2 = this.f36119b;
        if (editText2 == null) {
            p.a("input");
        }
        editText2.setSingleLine(true);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(max, -2);
        EditText editText3 = this.f36119b;
        if (editText3 == null) {
            p.a("input");
        }
        editText3.setLayoutParams(layoutParams4);
        EditText editText4 = this.f36119b;
        if (editText4 == null) {
            p.a("input");
        }
        linearLayout.addView(editText4);
        new AlertDialog.Builder(vKCaptchaActivity, 5).setView(linearLayout).setTitle(a.c.vk_captcha_hint).setPositiveButton(17039370, new d()).setNegativeButton(17039360, new e()).setOnCancelListener(new f()).show();
        EditText editText5 = this.f36119b;
        if (editText5 == null) {
            p.a("input");
        }
        editText5.requestFocus();
        String stringExtra = getIntent().getStringExtra("key_url");
        o oVar = o.f36108a;
        o.a().submit(new c(stringExtra));
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        i iVar = i.f36069a;
        i.b();
        super.onDestroy();
    }
}
