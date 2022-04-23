package com.netqin.p525cm.antiharass.p527ui.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.netqin.p525cm.main.p529ui.BaseActivity;
/* renamed from: com.netqin.cm.antiharass.ui.activity.EmptyAddFromActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/EmptyAddFromActivity.class */
public class EmptyAddFromActivity extends BaseActivity {

    /* renamed from: t */
    public Button f35450t;

    /* renamed from: u */
    public Button f35451u;

    /* renamed from: v */
    public TextView f35452v;

    /* renamed from: w */
    public ImageView f35453w;

    /* renamed from: x */
    public int f35454x = 1;

    /* renamed from: y */
    public View.OnClickListener f35455y = new View$OnClickListenerC9094b();

    /* renamed from: com.netqin.cm.antiharass.ui.activity.EmptyAddFromActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/EmptyAddFromActivity$a.class */
    public class View$OnClickListenerC9093a implements View.OnClickListener {
        public View$OnClickListenerC9093a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EmptyAddFromActivity.this.finish();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.EmptyAddFromActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/EmptyAddFromActivity$b.class */
    public class View$OnClickListenerC9094b implements View.OnClickListener {
        public View$OnClickListenerC9094b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EmptyAddFromActivity.this.setResult(0);
            EmptyAddFromActivity.this.finish();
        }
    }

    /* renamed from: n */
    public final void m3461n() {
        TextView textView = (TextView) findViewById(2131230784);
        ((FrameLayout) findViewById(2131231075)).setOnClickListener(new View$OnClickListenerC9093a());
        ImageView imageView = (ImageView) findViewById(2131230988);
        this.f35453w = imageView;
        imageView.setVisibility(0);
        this.f35453w.setImageResource(2131165479);
        int i = this.f35454x;
        if (i == 1) {
            textView.setText(2131558446);
            this.f35452v.setText(2131558463);
        } else if (i == 2) {
            textView.setText(2131558447);
            this.f35452v.setText(2131558465);
        }
    }

    /* renamed from: o */
    public final void m3460o() {
        this.f35450t = (Button) findViewById(2131230858);
        this.f35451u = (Button) findViewById(2131230859);
        this.f35452v = (TextView) findViewById(2131230927);
        this.f35451u.setOnClickListener(this.f35455y);
        this.f35450t.setEnabled(false);
        this.f35450t.setClickable(false);
        this.f35450t.setText(2131558494);
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427369);
        this.f35454x = getIntent().getIntExtra("source_type", 1);
        m3460o();
        m3461n();
    }
}
