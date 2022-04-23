package com.bytedance.sdk.openadsdk.core.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/a.class */
public class a extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    public AbstractC0170a f9310a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f9311b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f9312c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f9313d;
    private Button e;
    private Button f;
    private View g;
    private Context h;
    private String i;
    private String j;
    private String k;
    private String l;
    private int m = -1;
    private boolean n = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/a$a.class */
    public interface AbstractC0170a {
        void a();

        void b();
    }

    public a(Context context) {
        super(context, x.g(context, "tt_custom_dialog"));
        this.h = context;
    }

    private void a() {
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (a.this.f9310a != null) {
                    a.this.f9310a.a();
                }
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (a.this.f9310a != null) {
                    a.this.f9310a.b();
                }
            }
        });
    }

    private void b() {
        if (!TextUtils.isEmpty(this.j)) {
            this.f9312c.setText(this.j);
            this.f9312c.setVisibility(0);
        } else {
            this.f9312c.setVisibility(8);
        }
        if (!TextUtils.isEmpty(this.i)) {
            this.f9313d.setText(this.i);
        }
        if (!TextUtils.isEmpty(this.k)) {
            this.f.setText(this.k);
        } else {
            this.f.setText(x.a(n.a(), "tt_postive_txt"));
        }
        if (!TextUtils.isEmpty(this.l)) {
            this.e.setText(this.l);
        } else {
            this.e.setText(x.a(n.a(), "tt_negtive_txt"));
        }
        int i = this.m;
        if (i != -1) {
            this.f9311b.setImageResource(i);
            this.f9311b.setVisibility(0);
        } else {
            this.f9311b.setVisibility(8);
        }
        if (this.n) {
            this.g.setVisibility(8);
            this.e.setVisibility(8);
            return;
        }
        this.e.setVisibility(0);
        this.g.setVisibility(0);
    }

    private void c() {
        this.e = (Button) findViewById(x.e(this.h, "tt_negtive"));
        this.f = (Button) findViewById(x.e(this.h, "tt_positive"));
        this.f9312c = (TextView) findViewById(x.e(this.h, "tt_title"));
        this.f9313d = (TextView) findViewById(x.e(this.h, "tt_message"));
        this.f9311b = (ImageView) findViewById(x.e(this.h, "tt_image"));
        this.g = findViewById(x.e(this.h, "tt_column_line"));
    }

    public a a(AbstractC0170a aVar) {
        this.f9310a = aVar;
        return this;
    }

    public a a(String str) {
        this.i = str;
        return this;
    }

    public a b(String str) {
        this.k = str;
        return this;
    }

    public a c(String str) {
        this.l = str;
        return this;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(x.f(this.h, "tt_custom_dailog_layout"));
        setCanceledOnTouchOutside(false);
        c();
        b();
        a();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        b();
    }
}
