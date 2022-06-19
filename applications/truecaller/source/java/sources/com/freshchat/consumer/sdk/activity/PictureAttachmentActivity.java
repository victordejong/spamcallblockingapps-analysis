package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p053f.AbstractC1535a;
import com.freshchat.consumer.sdk.p056i.AsyncTaskC1558a;
import com.freshchat.consumer.sdk.p057j.C1608ad;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1722p;
import com.freshchat.consumer.sdk.p057j.p058a.C1585d;
import com.freshchat.consumer.sdk.p057j.p058a.C1593h;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/PictureAttachmentActivity.class */
public class PictureAttachmentActivity extends AbstractC1419b {

    /* renamed from: aD */
    private View f3876aD;

    /* renamed from: aE */
    private View f3877aE;

    /* renamed from: bQ */
    private C1593h f3879bQ;

    /* renamed from: bS */
    private View f3881bS;

    /* renamed from: bT */
    private View f3882bT;

    /* renamed from: bU */
    private ImageView f3883bU;

    /* renamed from: bV */
    private EditText f3884bV;

    /* renamed from: bW */
    private C1391a f3885bW;

    /* renamed from: bX */
    private ProgressBar f3886bX;

    /* renamed from: bR */
    private boolean f3880bR = false;

    /* renamed from: aV */
    private TextWatcher f3878aV = new TextWatcher() { // from class: com.freshchat.consumer.sdk.activity.PictureAttachmentActivity.1
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable == null || !C1722p.m39831aD(PictureAttachmentActivity.this.getContext())) {
                return;
            }
            C1471i.m40849a(PictureAttachmentActivity.this.getContext(), PictureAttachmentActivity.this.f3884bV);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };

    /* renamed from: bY */
    private View.OnClickListener f3887bY = new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.PictureAttachmentActivity.2
        /* JADX WARN: Type inference failed for: r0v8, types: [com.freshchat.consumer.sdk.activity.PictureAttachmentActivity, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PictureAttachmentActivity.this.f3885bW.m41108m(PictureAttachmentActivity.this.f3884bV.getText().toString());
            PictureAttachmentActivity.this.setResult(-1, PictureAttachmentActivity.this.f3885bW.m41112aM());
            PictureAttachmentActivity.this.finish();
        }
    };

    /* renamed from: bZ */
    private AbstractC1535a f3888bZ = new AbstractC1535a() { // from class: com.freshchat.consumer.sdk.activity.PictureAttachmentActivity.3
        @Override // com.freshchat.consumer.sdk.p053f.AbstractC1535a
        /* renamed from: aG */
        public void mo40586aG() {
            C1471i.m40850a(PictureAttachmentActivity.this.getContext(), PictureAttachmentActivity.this.f3883bU, PictureAttachmentActivity.this.f3886bX);
        }

        @Override // com.freshchat.consumer.sdk.p053f.AbstractC1535a
        /* renamed from: aH */
        public void mo40585aH() {
            PictureAttachmentActivity.this.f3877aE.setAlpha(1.0f);
            C1471i.m40850a(PictureAttachmentActivity.this.getContext(), PictureAttachmentActivity.this.f3886bX, PictureAttachmentActivity.this.f3883bU);
            PictureAttachmentActivity.this.f3877aE.setEnabled(true);
        }

        @Override // com.freshchat.consumer.sdk.p053f.AbstractC1535a
        /* renamed from: aI */
        public void mo40584aI() {
            C1471i.m40847a(PictureAttachmentActivity.this.getContext(), EnumC1464c.PICTURE_ATTACHMENT_PREVIEW_ERROR);
            PictureAttachmentActivity.this.finish();
        }
    };

    /* renamed from: com.freshchat.consumer.sdk.activity.PictureAttachmentActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a.class */
    public static class C1391a {

        /* renamed from: cb */
        private String f3892cb;

        /* renamed from: cc */
        private String f3893cc;

        /* renamed from: cd */
        private String f3894cd;
        private int height;
        private int width;

        /* renamed from: aK */
        public String m41114aK() {
            return this.f3893cc;
        }

        /* renamed from: aL */
        public String m41113aL() {
            return this.f3894cd;
        }

        /* renamed from: aM */
        public Intent m41112aM() {
            Intent intent = new Intent();
            intent.putExtra("PIC_URL", this.f3893cc);
            intent.putExtra("PIC_THUMB_URL", this.f3892cb);
            intent.putExtra("PICTURE_WIDTH", this.width);
            intent.putExtra("PICTURE_HEIGHT", this.height);
            intent.putExtra("IMAGE_CAPTION", this.f3894cd);
            return intent;
        }

        /* renamed from: d */
        public C1391a m41111d(Intent intent) {
            this.f3893cc = intent.getStringExtra("PIC_URL");
            this.f3892cb = intent.getStringExtra("PIC_THUMB_URL");
            this.width = intent.getIntExtra("PICTURE_WIDTH", 100);
            this.height = intent.getIntExtra("PICTURE_HEIGHT", 100);
            this.f3894cd = intent.getStringExtra("IMAGE_CAPTION");
            return this;
        }

        public int getHeight() {
            return this.height;
        }

        public int getWidth() {
            return this.width;
        }

        /* renamed from: k */
        public void m41110k(String str) {
            this.f3892cb = str;
        }

        /* renamed from: l */
        public void m41109l(String str) {
            this.f3893cc = str;
        }

        /* renamed from: m */
        public void m41108m(String str) {
            this.f3894cd = str;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public void setWidth(int i) {
            this.width = i;
        }
    }

    /* renamed from: a */
    public static Intent m41123a(Context context, Uri uri, int i, String str) {
        Intent intent = new Intent(context, PictureAttachmentActivity.class);
        intent.putExtra("PICTURE_URL", uri);
        intent.putExtra("REQUEST_CODE", i);
        intent.putExtra("ATTACHMENT_CREATION_MODE", true);
        intent.putExtra("IMAGE_CAPTION", str);
        return intent;
    }

    /* renamed from: a */
    public static Intent m41122a(Context context, String str) {
        Intent intent = new Intent(context, PictureAttachmentActivity.class);
        intent.addFlags(67108864);
        intent.putExtra("PICTURE_URL", str);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m41120b(Uri uri, int i) {
        new AsyncTaskC1558a(getApplicationContext(), this.f3883bU, i, this.f3885bW, this.f3888bZ).execute(uri);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: j */
    private void m41115j(String str) {
        String m40314aF = C1608ad.m40314aF(str);
        Context applicationContext = getApplicationContext();
        C1585d.C1586a c1586a = new C1585d.C1586a(applicationContext, "cache");
        c1586a.m40407a(applicationContext, 0.05f);
        C1593h c1593h = new C1593h(applicationContext, Math.min(1080, C1722p.m39830ar(getContext())));
        this.f3879bQ = c1593h;
        c1593h.m40389c(c1586a);
        this.f3879bQ.m40393a(m40314aF, this.f3883bU, this.f3888bZ);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.TokenWaitTimeout"};
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo3553n(true);
        }
        this.f3885bW = new C1391a();
        setContentView(C1298R.layout.freshchat_activity_picture_attachment);
        this.f3883bU = (ImageView) findViewById(C1298R.C1300id.freshchat_picture_attachment_imageview);
        this.f3882bT = findViewById(C1298R.C1300id.freshchat_conv_detail_text_reply_layout);
        this.f3886bX = (ProgressBar) findViewById(C1298R.C1300id.freshchat_picture_attachment_progress_bar);
        this.f3884bV = (EditText) findViewById(C1298R.C1300id.freshchat_conv_detail_reply_text);
        this.f3881bS = findViewById(C1298R.C1300id.freshchat_conv_detail_attach_image);
        this.f3876aD = findViewById(C1298R.C1300id.freshchat_conv_detail_record_voice_reply_button);
        this.f3877aE = findViewById(C1298R.C1300id.freshchat_conv_detail_send_reply_button);
        this.f3881bS.setVisibility(8);
        this.f3876aD.setVisibility(8);
        this.f3877aE.setVisibility(0);
        this.f3877aE.setEnabled(false);
        this.f3877aE.setOnClickListener(this.f3887bY);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("IMAGE_CAPTION");
        if (C1626as.m40233a(stringExtra)) {
            this.f3884bV.setText(stringExtra);
        }
        if (intent.hasExtra("PICTURE_URL")) {
            boolean booleanExtra = intent.getBooleanExtra("ATTACHMENT_CREATION_MODE", false);
            this.f3880bR = booleanExtra;
            if (booleanExtra) {
                m41120b((Uri) intent.getParcelableExtra("PICTURE_URL"), intent.getIntExtra("REQUEST_CODE", 0));
            } else {
                m41115j(intent.getStringExtra("PICTURE_URL"));
                C1471i.m40840c(this.f3882bT);
            }
        }
        EditText editText = this.f3884bV;
        if (editText != null) {
            editText.addTextChangedListener(this.f3878aV);
        }
    }
}
