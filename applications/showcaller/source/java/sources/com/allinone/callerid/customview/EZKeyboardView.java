package com.allinone.callerid.customview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.telephony.TelephonyManager;
import android.text.method.DialerKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.p204j1.C3776a;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/EZKeyboardView.class */
public class EZKeyboardView extends RelativeLayout implements View.OnClickListener, View.OnLongClickListener {

    /* renamed from: d */
    private static boolean f8491d;

    /* renamed from: e */
    private Context f8492e;

    /* renamed from: f */
    public BaseEditText f8493f;

    /* renamed from: g */
    private ImageView f8494g;

    /* renamed from: h */
    private ToneGenerator f8495h;

    /* renamed from: j */
    private ImageView f8497j;

    /* renamed from: k */
    private ConstraintLayout f8498k;

    /* renamed from: l */
    private Typeface f8499l;

    /* renamed from: i */
    private Object f8496i = new Object();

    /* renamed from: m */
    AbstractC2426b f8500m = null;

    /* renamed from: com.allinone.callerid.customview.EZKeyboardView$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/EZKeyboardView$a.class */
    public class C2425a extends PhoneNumberFormattingTextWatcher {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2425a(String str) {
            super(str);
            EZKeyboardView.this = r4;
        }

        @Override // android.telephony.PhoneNumberFormattingTextWatcher, android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            super.onTextChanged(charSequence, i, i2, i3);
            EZKeyboardView.this.m27424r();
        }
    }

    /* renamed from: com.allinone.callerid.customview.EZKeyboardView$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/EZKeyboardView$b.class */
    public interface AbstractC2426b {
        /* renamed from: a */
        void mo25967a(String str, String str2);
    }

    public EZKeyboardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8492e = context;
        LayoutInflater.from(context).inflate(R$layout.view_keyboard, this);
        m27430d();
        m27432b();
        m27425q();
        synchronized (this.f8496i) {
            if (this.f8495h == null) {
                try {
                    this.f8495h = new ToneGenerator(3, 80);
                    ((Activity) this.f8492e).setVolumeControlStream(3);
                } catch (RuntimeException e) {
                    Log.w("EZlDial", "Exception caught while creating local tone generator: " + e);
                    this.f8495h = null;
                }
            }
        }
    }

    /* renamed from: b */
    private void m27432b() {
        try {
            Method method = EditText.class.getMethod("setShowSoftInputOnFocus", Boolean.TYPE);
            method.setAccessible(true);
            method.invoke(this.f8493f, Boolean.FALSE);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    private boolean m27431c() {
        boolean z;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.f8492e.getSystemService("phone");
            z = false;
            if (telephonyManager != null) {
                String voiceMailNumber = telephonyManager.getVoiceMailNumber();
                z = false;
                if (voiceMailNumber != null) {
                    z = false;
                    if (!voiceMailNumber.equals("")) {
                        z = true;
                    }
                }
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
            z = false;
        } catch (SecurityException e2) {
            e2.printStackTrace();
            z = false;
        } catch (Exception e3) {
            e3.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    private void m27428j(int i) {
        try {
            this.f8493f.onKeyDown(i, new KeyEvent(0, i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: p */
    private void m27426p() {
        try {
            this.f8493f.getText().clear();
            this.f8500m.mo25967a("del_all", this.f8493f.getText().toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: q */
    private void m27425q() {
        f8491d = PreferenceManager.getDefaultSharedPreferences(this.f8492e).getBoolean("dial_enable_dial_tone", false);
    }

    /* renamed from: r */
    public void m27424r() {
        if (this.f8493f.length() != 0) {
            this.f8494g.setEnabled(true);
            this.f8494g.setVisibility(0);
            this.f8497j.setVisibility(0);
            this.f8498k.setVisibility(0);
            return;
        }
        this.f8494g.setEnabled(false);
        this.f8494g.setVisibility(4);
        this.f8497j.setVisibility(4);
        this.f8498k.setVisibility(8);
    }

    private void setupButton(int i) {
        FrameLayout frameLayout = (FrameLayout) findViewById(i);
        frameLayout.setOnClickListener(this);
        if (i == 2131297324 || i == 2131297325) {
            frameLayout.setOnLongClickListener(this);
        }
    }

    /* renamed from: d */
    public void m27430d() {
        BaseEditText baseEditText = (BaseEditText) findViewById(R$id.digitsText);
        this.f8493f = baseEditText;
        baseEditText.setOnClickListener(this);
        this.f8493f.setKeyListener(DialerKeyListener.getInstance());
        String str = C3806p.m24083d(EZCallApplication.m26146c()).getIso_code().split("/")[0];
        C2425a c2425a = new C2425a(str);
        if (str == null || "".equals(str)) {
            this.f8493f.addTextChangedListener(c2425a);
        } else {
            this.f8493f.addTextChangedListener(c2425a);
        }
        this.f8493f.setInputType(3);
        this.f8499l = C3739f1.m24359b();
        ((TextView) findViewById(R$id.tv_key_0)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_1)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_2)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_3)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_4)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_5)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_6)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_7)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_8)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_9)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_tip_2)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_tip_3)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_tip_4)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_tip_5)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_tip_6)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_tip_7)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_tip_8)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_tip_9)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_tip_0)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_xing)).setTypeface(this.f8499l);
        ((TextView) findViewById(R$id.tv_key_jing)).setTypeface(this.f8499l);
        this.f8493f.setTypeface(this.f8499l);
        this.f8498k = (ConstraintLayout) findViewById(R$id.rl_title);
        this.f8494g = (ImageView) findViewById(R$id.deleteButton);
        ImageView imageView = (ImageView) findViewById(R$id.btn_save);
        this.f8497j = imageView;
        imageView.setOnClickListener(this);
        this.f8494g.setOnClickListener(this);
        this.f8494g.setOnLongClickListener(this);
        if (C3767h1.m24250f0(this.f8492e).booleanValue()) {
            this.f8494g.setRotation(180.0f);
        }
        setupButton(R$id.number1);
        setupButton(R$id.number2);
        setupButton(R$id.number3);
        setupButton(R$id.number4);
        setupButton(R$id.number5);
        setupButton(R$id.number6);
        setupButton(R$id.number7);
        setupButton(R$id.number8);
        setupButton(R$id.number9);
        setupButton(R$id.number_star);
        setupButton(R$id.number0);
        setupButton(R$id.number_pound);
    }

    /* renamed from: e */
    public void m27429e() {
        BaseEditText baseEditText = this.f8493f;
        if (baseEditText != null) {
            baseEditText.setText("");
        }
    }

    /* renamed from: o */
    void m27427o(int i) {
        int ringerMode;
        if (!f8491d || (ringerMode = ((AudioManager) this.f8492e.getSystemService("audio")).getRingerMode()) == 0 || ringerMode == 1) {
            return;
        }
        synchronized (this.f8496i) {
            ToneGenerator toneGenerator = this.f8495h;
            if (toneGenerator != null) {
                toneGenerator.startTone(i, 150);
                return;
            }
            Log.w("EZlDial", "playTone: mToneGenerator == null, tone: " + i);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != 2131296429) {
            if (id != 2131296551) {
                switch (id) {
                    case R$id.number0 /* 2131297324 */:
                        m27427o(1);
                        m27428j(7);
                        this.f8500m.mo25967a("0", this.f8493f.getText().toString());
                        break;
                    case R$id.number1 /* 2131297325 */:
                        m27427o(1);
                        m27428j(8);
                        this.f8500m.mo25967a("1", this.f8493f.getText().toString());
                        break;
                    case R$id.number2 /* 2131297326 */:
                        m27427o(1);
                        m27428j(9);
                        this.f8500m.mo25967a("2", this.f8493f.getText().toString());
                        break;
                    case R$id.number3 /* 2131297327 */:
                        m27427o(1);
                        m27428j(10);
                        this.f8500m.mo25967a("3", this.f8493f.getText().toString());
                        break;
                    case R$id.number4 /* 2131297328 */:
                        m27427o(1);
                        m27428j(11);
                        this.f8500m.mo25967a("4", this.f8493f.getText().toString());
                        break;
                    case R$id.number5 /* 2131297329 */:
                        m27427o(1);
                        m27428j(12);
                        this.f8500m.mo25967a("5", this.f8493f.getText().toString());
                        break;
                    case R$id.number6 /* 2131297330 */:
                        m27427o(1);
                        m27428j(13);
                        this.f8500m.mo25967a("6", this.f8493f.getText().toString());
                        break;
                    case R$id.number7 /* 2131297331 */:
                        m27427o(1);
                        m27428j(14);
                        this.f8500m.mo25967a("7", this.f8493f.getText().toString());
                        break;
                    case R$id.number8 /* 2131297332 */:
                        m27427o(1);
                        m27428j(15);
                        this.f8500m.mo25967a("8", this.f8493f.getText().toString());
                        break;
                    case R$id.number9 /* 2131297333 */:
                        m27427o(1);
                        m27428j(16);
                        this.f8500m.mo25967a("9", this.f8493f.getText().toString());
                        break;
                    default:
                        switch (id) {
                            case R$id.number_pound /* 2131297336 */:
                                m27427o(1);
                                m27428j(18);
                                this.f8500m.mo25967a("#", this.f8493f.getText().toString());
                                break;
                            case R$id.number_star /* 2131297337 */:
                                m27427o(1);
                                m27428j(17);
                                this.f8500m.mo25967a("10", this.f8493f.getText().toString());
                                break;
                        }
                }
            } else {
                m27428j(67);
                this.f8500m.mo25967a("del", this.f8493f.getText().toString());
            }
        } else if (this.f8493f.getText() == null || "".equals(this.f8493f.getText().toString())) {
            Toast.makeText(EZCallApplication.m26146c(), getResources().getString(R$string.invalid_nubmer), 0).show();
        } else {
            try {
                Intent intent = new Intent("android.intent.action.INSERT");
                intent.setType("vnd.android.cursor.dir/person");
                intent.setType("vnd.android.cursor.dir/contact");
                intent.setType("vnd.android.cursor.dir/raw_contact");
                intent.putExtra("phone_type", 2);
                intent.putExtra("phone", this.f8493f.getText().toString());
                this.f8492e.startActivity(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        m27424r();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        boolean z;
        boolean z2 = false;
        try {
            switch (view.getId()) {
                case R$id.deleteButton /* 2131296551 */:
                    m27426p();
                    this.f8494g.setPressed(false);
                    z = true;
                    z2 = z;
                    m27424r();
                    break;
                case R$id.number0 /* 2131297324 */:
                    m27428j(81);
                    z = true;
                    z2 = z;
                    m27424r();
                    break;
                case R$id.number1 /* 2131297325 */:
                    z = false;
                    try {
                        if (this.f8493f.length() == 0) {
                            if (m27431c()) {
                                if (C3776a.m24162c(this.f8492e, "android.permission.CALL_PHONE")) {
                                    Intent intent = new Intent("android.intent.action.CALL");
                                    intent.setData(Uri.parse("voicemail:"));
                                    this.f8492e.startActivity(intent);
                                }
                            } else if (C3776a.m24162c(this.f8492e, "android.permission.CALL_PHONE")) {
                                Intent intent2 = new Intent("android.intent.action.CALL");
                                intent2.setData(Uri.parse("voicemail:"));
                                this.f8492e.startActivity(intent2);
                            }
                            z = true;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        z = false;
                    }
                    z2 = z;
                    m27424r();
                    break;
                default:
                    z = false;
                    z2 = z;
                    m27424r();
                    break;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            z = z2;
        }
        return z;
    }

    public void setNumberCallBack(AbstractC2426b abstractC2426b) {
        this.f8500m = abstractC2426b;
    }
}
