package com.allinone.callerid.callscreen.activitys;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.DialogInterfaceC0146a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.customview.DeletableEditText;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.p144d.p150e.C2549d;
import com.allinone.callerid.p144d.p154f.C2568a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.p204j1.C3776a;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.yanzhenjie.nohttp.NoHttp;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenUploadActivity.class */
public class CallScreenUploadActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private ImageView f8327A;

    /* renamed from: B */
    private ImageView f8328B;

    /* renamed from: C */
    private Uri f8329C;

    /* renamed from: D */
    private DialogInterfaceC0146a f8330D;

    /* renamed from: E */
    private DialogInterfaceC0146a f8331E;

    /* renamed from: u */
    private final String f8332u = "CallScreenUploadActivity";

    /* renamed from: v */
    private Typeface f8333v;

    /* renamed from: w */
    private TextView f8334w;

    /* renamed from: x */
    private DeletableEditText f8335x;

    /* renamed from: y */
    private TextView f8336y;

    /* renamed from: z */
    private DeletableEditText f8337z;

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenUploadActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$a.class */
    class RunnableC2388a implements Runnable {
        RunnableC2388a() {
            CallScreenUploadActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            NoHttp.initialize(CallScreenUploadActivity.this.getApplicationContext());
            CallScreenUploadActivity.this.f8333v = C3739f1.m24359b();
            CallScreenUploadActivity.this.m27529g0();
            CallScreenUploadActivity.this.m27530f0();
            C3810q.m24071b().m24070c("callscreen_upload_show");
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenUploadActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$b.class */
    public class C2389b implements TextWatcher {
        C2389b() {
            CallScreenUploadActivity.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (charSequence.length() > 0) {
                CallScreenUploadActivity.this.f8334w.setVisibility(0);
            } else {
                CallScreenUploadActivity.this.f8334w.setVisibility(4);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenUploadActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$c.class */
    public class C2390c implements TextWatcher {
        C2390c() {
            CallScreenUploadActivity.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (charSequence.length() > 0) {
                CallScreenUploadActivity.this.f8336y.setVisibility(0);
            } else {
                CallScreenUploadActivity.this.f8336y.setVisibility(4);
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenUploadActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$d.class */
    public class C2391d implements C2549d.AbstractC2550a {
        C2391d() {
            CallScreenUploadActivity.this = r4;
        }

        @Override // com.allinone.callerid.p144d.p150e.C2549d.AbstractC2550a
        /* renamed from: a */
        public void mo27132a(boolean z, boolean z2) {
            if (CallScreenUploadActivity.this.f8331E != null) {
                CallScreenUploadActivity.this.f8331E.dismiss();
            }
            if (z) {
                CallScreenUploadActivity callScreenUploadActivity = CallScreenUploadActivity.this;
                callScreenUploadActivity.m27527i0(callScreenUploadActivity);
                C3810q.m24071b().m24070c("callscreen_upload_success");
            } else if (z2) {
                Toast.makeText(CallScreenUploadActivity.this.getApplicationContext(), CallScreenUploadActivity.this.getResources().getString(R$string.video_size_too_big), 1).show();
            } else {
                Toast.makeText(CallScreenUploadActivity.this.getApplicationContext(), CallScreenUploadActivity.this.getResources().getString(R$string.upload_failed), 1).show();
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenUploadActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$e.class */
    public class View$OnClickListenerC2392e implements View.OnClickListener {
        View$OnClickListenerC2392e() {
            CallScreenUploadActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallScreenUploadActivity.this.f8330D != null) {
                CallScreenUploadActivity.this.f8330D.dismiss();
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenUploadActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$f.class */
    public class DialogInterface$OnDismissListenerC2393f implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC2393f() {
            CallScreenUploadActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            CallScreenUploadActivity.this.finish();
            CallScreenUploadActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.CallScreenUploadActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/CallScreenUploadActivity$g.class */
    public class C2394g implements C3776a.AbstractC3783g {
        C2394g() {
            CallScreenUploadActivity.this = r4;
        }

        @Override // com.allinone.callerid.util.p204j1.C3776a.AbstractC3783g
        /* renamed from: a */
        public void mo23968a() {
            C2568a.m27097h(CallScreenUploadActivity.this, 160);
        }
    }

    /* renamed from: f0 */
    public void m27530f0() {
        this.f8335x.addTextChangedListener(new C2389b());
        this.f8337z.addTextChangedListener(new C2390c());
    }

    /* renamed from: g0 */
    public void m27529g0() {
        ImageView imageView = (ImageView) findViewById(R$id.iv_back);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        TextView textView = (TextView) findViewById(R$id.tv_upload);
        ImageView imageView2 = (ImageView) findViewById(R$id.ib_submit);
        TextView textView2 = (TextView) findViewById(R$id.tv_tips);
        this.f8334w = (TextView) findViewById(R$id.tv_title);
        this.f8335x = (DeletableEditText) findViewById(R$id.et_title);
        this.f8336y = (TextView) findViewById(R$id.tv_author);
        this.f8337z = (DeletableEditText) findViewById(R$id.et_author);
        this.f8327A = (ImageView) findViewById(R$id.iv_select_video);
        this.f8328B = (ImageView) findViewById(R$id.iv_remove_video);
        imageView.setOnClickListener(this);
        imageView2.setOnClickListener(this);
        this.f8327A.setOnClickListener(this);
        this.f8328B.setOnClickListener(this);
        textView.setTypeface(this.f8333v);
        this.f8334w.setTypeface(this.f8333v);
        this.f8335x.setTypeface(this.f8333v);
        this.f8336y.setTypeface(this.f8333v);
        this.f8337z.setTypeface(this.f8333v);
    }

    /* renamed from: i0 */
    public void m27527i0(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R$layout.dialog_set_success, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_content);
        textView.setText(context.getResources().getString(R$string.upload_successfully));
        textView2.setText(context.getResources().getString(R$string.upload_successfully_content));
        textView.setTypeface(this.f8333v);
        textView2.setTypeface(this.f8333v);
        ((ImageView) inflate.findViewById(R$id.lb_missed_close)).setOnClickListener(new View$OnClickListenerC2392e());
        this.f8330D = new DialogInterfaceC0146a.C0147a(context).m35557r(inflate).m35571d(true).m35564k(new DialogInterface$OnDismissListenerC2393f()).m35556s();
    }

    /* renamed from: j0 */
    private void m27526j0(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R$layout.dialog_uploading, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_uploading);
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(R$id.progress_uploading);
        textView.setTypeface(this.f8333v);
        this.f8331E = new DialogInterfaceC0146a.C0147a(context).m35557r(inflate).m35571d(false).m35556s();
    }

    /* renamed from: k0 */
    private void m27525k0(Uri uri) {
        try {
            ImageView imageView = this.f8328B;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            ComponentCallbacks2C3958c.m23677u(getApplicationContext()).mo23631q(uri).mo22633Z(R$drawable.upload_add_80dp).mo22613l(R$drawable.upload_add_80dp).m23660A0(this.f8327A);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: l0 */
    private void m27524l0(String str, String str2, Uri uri) {
        C3810q.m24071b().m24070c("callscreen_upload");
        C2549d.m27133a(str, str2, uri, new C2391d());
    }

    /* renamed from: h0 */
    public void m27528h0() {
        if (C3776a.m24159f(getApplicationContext())) {
            C2568a.m27097h(this, 160);
        } else {
            C3776a.m24147r(this, new C2394g());
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 160) {
            try {
                if (!C2568a.m27100e()) {
                    Toast.makeText(this, "Has no SD card!", 0).show();
                } else if (intent != null) {
                    Uri data = intent.getData();
                    this.f8329C = data;
                    m27525k0(data);
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callscreen", "select_video_uri:" + this.f8329C);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.ib_submit /* 2131296873 */:
                String obj = this.f8335x.getText().toString();
                String obj2 = this.f8337z.getText().toString();
                if ("".equals(obj)) {
                    Toast.makeText(getApplicationContext(), getResources().getString(R$string.upload_title_not_empty), 1).show();
                    return;
                } else if ("".equals(obj2)) {
                    Toast.makeText(getApplicationContext(), getResources().getString(R$string.upload_author_not_empty), 1).show();
                    return;
                } else if (this.f8329C == null) {
                    Toast.makeText(getApplicationContext(), getResources().getString(R$string.no_select_video), 1).show();
                    return;
                } else {
                    m27526j0(this);
                    m27524l0(obj, obj2, this.f8329C);
                    return;
                }
            case R$id.iv_back /* 2131296951 */:
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return;
            case R$id.iv_remove_video /* 2131297036 */:
                this.f8328B.setVisibility(8);
                this.f8327A.setImageResource(R$drawable.upload_add_80dp);
                this.f8329C = null;
                return;
            case R$id.iv_select_video /* 2131297044 */:
                m27528h0();
                return;
            default:
                return;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_callscreen_upload);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        getWindow().getDecorView().post(new RunnableC2388a());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
