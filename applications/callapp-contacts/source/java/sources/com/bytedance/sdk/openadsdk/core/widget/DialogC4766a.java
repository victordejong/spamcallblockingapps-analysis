package com.bytedance.sdk.openadsdk.core.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.utils.C5486x;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/a.class */
public class DialogC4766a extends Dialog {

    /* renamed from: a */
    public AbstractC4769a f17510a;

    /* renamed from: b */
    private ImageView f17511b;

    /* renamed from: c */
    private TextView f17512c;

    /* renamed from: d */
    private TextView f17513d;

    /* renamed from: e */
    private Button f17514e;

    /* renamed from: f */
    private Button f17515f;

    /* renamed from: g */
    private View f17516g;

    /* renamed from: h */
    private Context f17517h;

    /* renamed from: i */
    private String f17518i;

    /* renamed from: j */
    private String f17519j;

    /* renamed from: k */
    private String f17520k;

    /* renamed from: l */
    private String f17521l;

    /* renamed from: m */
    private int f17522m = -1;

    /* renamed from: n */
    private boolean f17523n = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/a$a.class */
    public interface AbstractC4769a {
        /* renamed from: a */
        void mo34053a();

        /* renamed from: b */
        void mo34052b();
    }

    public DialogC4766a(Context context) {
        super(context, C5486x.m32064g(context, "tt_custom_dialog"));
        this.f17517h = context;
    }

    /* renamed from: a */
    private void m34060a() {
        this.f17515f.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DialogC4766a.this.f17510a != null) {
                    DialogC4766a.this.f17510a.mo34053a();
                }
            }
        });
        this.f17514e.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DialogC4766a.this.f17510a != null) {
                    DialogC4766a.this.f17510a.mo34052b();
                }
            }
        });
    }

    /* renamed from: b */
    private void m34057b() {
        if (!TextUtils.isEmpty(this.f17519j)) {
            this.f17512c.setText(this.f17519j);
            this.f17512c.setVisibility(0);
        } else {
            this.f17512c.setVisibility(8);
        }
        if (!TextUtils.isEmpty(this.f17518i)) {
            this.f17513d.setText(this.f17518i);
        }
        if (!TextUtils.isEmpty(this.f17520k)) {
            this.f17515f.setText(this.f17520k);
        } else {
            this.f17515f.setText(C5486x.m32071a(C4600n.m34815a(), "tt_postive_txt"));
        }
        if (!TextUtils.isEmpty(this.f17521l)) {
            this.f17514e.setText(this.f17521l);
        } else {
            this.f17514e.setText(C5486x.m32071a(C4600n.m34815a(), "tt_negtive_txt"));
        }
        int i = this.f17522m;
        if (i != -1) {
            this.f17511b.setImageResource(i);
            this.f17511b.setVisibility(0);
        } else {
            this.f17511b.setVisibility(8);
        }
        if (this.f17523n) {
            this.f17516g.setVisibility(8);
            this.f17514e.setVisibility(8);
            return;
        }
        this.f17514e.setVisibility(0);
        this.f17516g.setVisibility(0);
    }

    /* renamed from: c */
    private void m34055c() {
        this.f17514e = (Button) findViewById(C5486x.m32066e(this.f17517h, "tt_negtive"));
        this.f17515f = (Button) findViewById(C5486x.m32066e(this.f17517h, "tt_positive"));
        this.f17512c = (TextView) findViewById(C5486x.m32066e(this.f17517h, "tt_title"));
        this.f17513d = (TextView) findViewById(C5486x.m32066e(this.f17517h, "tt_message"));
        this.f17511b = (ImageView) findViewById(C5486x.m32066e(this.f17517h, "tt_image"));
        this.f17516g = findViewById(C5486x.m32066e(this.f17517h, "tt_column_line"));
    }

    /* renamed from: a */
    public DialogC4766a m34059a(AbstractC4769a abstractC4769a) {
        this.f17510a = abstractC4769a;
        return this;
    }

    /* renamed from: a */
    public DialogC4766a m34058a(String str) {
        this.f17518i = str;
        return this;
    }

    /* renamed from: b */
    public DialogC4766a m34056b(String str) {
        this.f17520k = str;
        return this;
    }

    /* renamed from: c */
    public DialogC4766a m34054c(String str) {
        this.f17521l = str;
        return this;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C5486x.m32065f(this.f17517h, "tt_custom_dailog_layout"));
        setCanceledOnTouchOutside(false);
        m34055c();
        m34057b();
        m34060a();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        m34057b();
    }
}
