package com.allinone.callerid.mvc.controller.block;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$array;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.customview.DeletableEditText;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3744g1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3800m;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/AddCustomNumActivity.class */
public class AddCustomNumActivity extends BaseActivity {

    /* renamed from: A */
    private C3800m f10388A;

    /* renamed from: u */
    private final String f10389u = "AddCustomNumActivity";

    /* renamed from: v */
    private TextView f10390v;

    /* renamed from: w */
    private DeletableEditText f10391w;

    /* renamed from: x */
    private FrameLayout f10392x;

    /* renamed from: y */
    private int f10393y;

    /* renamed from: z */
    private String f10394z;

    /* renamed from: com.allinone.callerid.mvc.controller.block.AddCustomNumActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/AddCustomNumActivity$a.class */
    class RunnableC3233a implements Runnable {
        RunnableC3233a() {
            AddCustomNumActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AddCustomNumActivity addCustomNumActivity = AddCustomNumActivity.this;
            addCustomNumActivity.f10388A = new C3800m(addCustomNumActivity.getApplicationContext());
            AddCustomNumActivity.this.m25680h0();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.AddCustomNumActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/AddCustomNumActivity$b.class */
    public class View$OnClickListenerC3234b implements View.OnClickListener {
        View$OnClickListenerC3234b() {
            AddCustomNumActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AddCustomNumActivity.this.finish();
            AddCustomNumActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.AddCustomNumActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c.class */
    public class C3235c implements AdapterView.OnItemSelectedListener {
        C3235c() {
            AddCustomNumActivity.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            AddCustomNumActivity.this.f10393y = i;
            if (i == 3) {
                AddCustomNumActivity.this.f10390v.setVisibility(8);
                AddCustomNumActivity.this.f10391w.setVisibility(8);
                AddCustomNumActivity.this.f10392x.setVisibility(0);
                return;
            }
            AddCustomNumActivity.this.f10390v.setVisibility(0);
            AddCustomNumActivity.this.f10391w.setVisibility(0);
            AddCustomNumActivity.this.f10392x.setVisibility(8);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.AddCustomNumActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/AddCustomNumActivity$d.class */
    public class C3236d implements TextWatcher {
        C3236d() {
            AddCustomNumActivity.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AddCustomNumActivity.this.f10392x.setVisibility(8);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (AddCustomNumActivity.this.f10391w.getText().equals("") || charSequence.length() <= 0) {
                AddCustomNumActivity.this.f10392x.setVisibility(8);
            } else {
                AddCustomNumActivity.this.f10392x.setVisibility(0);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.block.AddCustomNumActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/block/AddCustomNumActivity$e.class */
    public class View$OnClickListenerC3237e implements View.OnClickListener {
        View$OnClickListenerC3237e() {
            AddCustomNumActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AddCustomNumActivity.this.f10393y < 3) {
                AddCustomNumActivity addCustomNumActivity = AddCustomNumActivity.this;
                addCustomNumActivity.f10394z = addCustomNumActivity.f10391w.getText().toString();
            } else {
                AddCustomNumActivity.this.f10394z = "foreign";
            }
            if (!AddCustomNumActivity.this.f10394z.equals("")) {
                if (AddCustomNumActivity.this.f10388A.m24100i(AddCustomNumActivity.this.f10394z, String.valueOf(AddCustomNumActivity.this.f10393y)).booleanValue()) {
                    Toast.makeText(AddCustomNumActivity.this, (int) R$string.num_exist, 0).show();
                    return;
                }
                AddCustomNumActivity.this.f10388A.m24096m(AddCustomNumActivity.this.f10394z, AddCustomNumActivity.this.f10393y);
                int i = AddCustomNumActivity.this.f10393y;
                if (i == 0) {
                    C3810q.m24071b().m24070c(C3744g1.f11944r);
                } else if (i == 1) {
                    C3810q.m24071b().m24070c(C3744g1.f11945s);
                } else if (i == 2) {
                    C3810q.m24071b().m24070c(C3744g1.f11946t);
                } else if (i == 3) {
                    C3810q.m24071b().m24070c(C3744g1.f11947u);
                }
                Intent intent = new Intent();
                intent.setClass(AddCustomNumActivity.this, MyBlockListActivity.class);
                AddCustomNumActivity.this.startActivity(intent);
                AddCustomNumActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                AddCustomNumActivity.this.finish();
            }
        }
    }

    /* renamed from: h0 */
    public void m25680h0() {
        ImageView imageView = (ImageView) findViewById(R$id.header_left_about);
        TextView textView = (TextView) findViewById(R$id.tv_custom_title);
        Spinner spinner = (Spinner) findViewById(R$id.spinner_num);
        this.f10390v = (TextView) findViewById(R$id.tv_tel_title);
        this.f10391w = (DeletableEditText) findViewById(R$id.et_num);
        TextView textView2 = (TextView) findViewById(R$id.tv_block);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_block);
        this.f10392x = frameLayout;
        frameLayout.setVisibility(8);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, 17367048, getResources().getStringArray(R$array.spinnername));
        arrayAdapter.setDropDownViewResource(17367049);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        Typeface m24359b = C3739f1.m24359b();
        textView.setTypeface(m24359b);
        this.f10390v.setTypeface(m24359b);
        this.f10391w.setTypeface(m24359b);
        textView2.setTypeface(m24359b);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
            imageView.setImageResource(R$drawable.ic_back_oppo);
        }
        imageView.setOnClickListener(new View$OnClickListenerC3234b());
        spinner.setOnItemSelectedListener(new C3235c());
        this.f10391w.addTextChangedListener(new C3236d());
        this.f10392x.setOnClickListener(new View$OnClickListenerC3237e());
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_add_custom_num);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        getWindow().getDecorView().post(new RunnableC3233a());
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
