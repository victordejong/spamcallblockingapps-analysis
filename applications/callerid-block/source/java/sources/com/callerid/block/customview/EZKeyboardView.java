package com.callerid.block.customview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
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
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.callerid.block.R$drawable;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1216t0;
import com.rey.material.widget.Button;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/EZKeyboardView.class */
public class EZKeyboardView extends RelativeLayout implements View.OnClickListener, View.OnLongClickListener {

    /* renamed from: i */
    private static boolean f4129i;

    /* renamed from: b */
    private Context f4130b;

    /* renamed from: c */
    public EditText f4131c;

    /* renamed from: d */
    private ImageView f4132d;

    /* renamed from: e */
    private Button f4133e;

    /* renamed from: f */
    private ToneGenerator f4134f;

    /* renamed from: g */
    private Object f4135g = new Object();

    /* renamed from: h */
    AbstractC0926c f4136h = null;

    /* renamed from: com.callerid.block.customview.EZKeyboardView$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/EZKeyboardView$a.class */
    public class C0924a extends PhoneNumberFormattingTextWatcher {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0924a(String str) {
            super(str);
            EZKeyboardView.this = r4;
        }

        @Override // android.telephony.PhoneNumberFormattingTextWatcher, android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            super.onTextChanged(charSequence, i, i2, i3);
            EZKeyboardView.this.m10565l();
        }
    }

    /* renamed from: com.callerid.block.customview.EZKeyboardView$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/EZKeyboardView$b.class */
    public class C0925b extends PhoneNumberFormattingTextWatcher {
        C0925b() {
            EZKeyboardView.this = r4;
        }

        @Override // android.telephony.PhoneNumberFormattingTextWatcher, android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            super.onTextChanged(charSequence, i, i2, i3);
            EZKeyboardView.this.m10565l();
        }
    }

    /* renamed from: com.callerid.block.customview.EZKeyboardView$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/EZKeyboardView$c.class */
    public interface AbstractC0926c {
        /* renamed from: a */
        void m10564a(String str, String str2);
    }

    public EZKeyboardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4130b = context;
        LayoutInflater.from(context).inflate(R$layout.view_keyboard, this);
        m10570c();
        m10566i();
        synchronized (this.f4135g) {
            if (this.f4134f == null) {
                try {
                    this.f4134f = new ToneGenerator(3, 80);
                    ((Activity) this.f4130b).setVolumeControlStream(3);
                } catch (RuntimeException e) {
                    Log.w("EZlDial", "Exception caught while creating local tone generator: " + e);
                    this.f4134f = null;
                }
            }
        }
    }

    /* renamed from: b */
    private boolean m10571b() {
        boolean z;
        TelephonyManager telephonyManager = (TelephonyManager) this.f4130b.getSystemService("phone");
        String str = null;
        if (telephonyManager != null) {
            try {
                str = telephonyManager.getVoiceMailNumber();
            } catch (NullPointerException | SecurityException e) {
                z = false;
            }
        }
        z = false;
        if (str != null) {
            z = false;
            if (!str.equals("")) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: d */
    private void m10569d(int i) {
        try {
            this.f4131c.onKeyDown(i, new KeyEvent(0, i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    private void m10567g() {
        try {
            this.f4131c.getText().clear();
            this.f4136h.m10564a("del_all", this.f4131c.getText().toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    private void m10566i() {
        f4129i = PreferenceManager.getDefaultSharedPreferences(this.f4130b).getBoolean("dial_enable_dial_tone", false);
    }

    /* renamed from: l */
    public void m10565l() {
        if (this.f4131c.length() != 0) {
            this.f4133e.setEnabled(true);
        } else {
            this.f4133e.setEnabled(false);
        }
    }

    private void setupButton(int i) {
        Button button = (Button) findViewById(i);
        button.setOnClickListener(this);
        if (i == 2131296917 || i == 2131296918 || i == 2131296480) {
            button.setOnLongClickListener(this);
        }
    }

    /* renamed from: c */
    public void m10570c() {
        this.f4132d = (ImageView) findViewById(R$id.ic_dial_delete);
        if (C1216t0.m9596P(getContext()).booleanValue()) {
            this.f4132d.setImageDrawable(getResources().getDrawable(R$drawable.ic_dial_action_delete_oppo));
        }
        EditText editText = (EditText) findViewById(R$id.digitsText);
        this.f4131c = editText;
        editText.setOnClickListener(this);
        this.f4131c.setKeyListener(DialerKeyListener.getInstance());
        String str = C1184j.m9826d(EZCallApplication.m10163c()).getIso_code().split("/")[0];
        if (str == null || "".equals(str)) {
            this.f4131c.addTextChangedListener(new C0925b());
        } else {
            this.f4131c.addTextChangedListener(new C0924a(str));
        }
        this.f4131c.setInputType(0);
        this.f4133e = (Button) findViewById(R$id.deleteButton);
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
        setupButton(R$id.deleteButton);
    }

    /* renamed from: f */
    void m10568f(int i) {
        if (!f4129i) {
            return;
        }
        AudioManager audioManager = (AudioManager) this.f4130b.getSystemService("audio");
        int i2 = 0;
        if (audioManager != null) {
            i2 = audioManager.getRingerMode();
        }
        if (i2 == 0 || i2 == 1) {
            return;
        }
        synchronized (this.f4135g) {
            ToneGenerator toneGenerator = this.f4134f;
            if (toneGenerator != null) {
                toneGenerator.startTone(i, 150);
                return;
            }
            Log.w("EZlDial", "playTone: mToneGenerator == null, tone: " + i);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        AbstractC0926c abstractC0926c;
        String str2;
        int id = view.getId();
        if (id != 2131296480) {
            switch (id) {
                case R$id.number0 /* 2131296917 */:
                    m10568f(1);
                    m10569d(7);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "0";
                    break;
                case R$id.number1 /* 2131296918 */:
                    m10568f(1);
                    m10569d(8);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "1";
                    break;
                case R$id.number2 /* 2131296919 */:
                    m10568f(1);
                    m10569d(9);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "2";
                    break;
                case R$id.number3 /* 2131296920 */:
                    m10568f(1);
                    m10569d(10);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "3";
                    break;
                case R$id.number4 /* 2131296921 */:
                    m10568f(1);
                    m10569d(11);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "4";
                    break;
                case R$id.number5 /* 2131296922 */:
                    m10568f(1);
                    m10569d(12);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "5";
                    break;
                case R$id.number6 /* 2131296923 */:
                    m10568f(1);
                    m10569d(13);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "6";
                    break;
                case R$id.number7 /* 2131296924 */:
                    m10568f(1);
                    m10569d(14);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "7";
                    break;
                case R$id.number8 /* 2131296925 */:
                    m10568f(1);
                    m10569d(15);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "8";
                    break;
                case R$id.number9 /* 2131296926 */:
                    m10568f(1);
                    m10569d(16);
                    abstractC0926c = this.f4136h;
                    str2 = this.f4131c.getText().toString();
                    str = "9";
                    break;
                default:
                    switch (id) {
                        case R$id.number_pound /* 2131296929 */:
                            m10568f(1);
                            m10569d(18);
                            abstractC0926c = this.f4136h;
                            str2 = this.f4131c.getText().toString();
                            str = "#";
                            break;
                        case R$id.number_star /* 2131296930 */:
                            m10568f(1);
                            m10569d(17);
                            abstractC0926c = this.f4136h;
                            str2 = this.f4131c.getText().toString();
                            str = "10";
                            break;
                    }
            }
            m10565l();
        }
        m10569d(67);
        abstractC0926c = this.f4136h;
        str2 = this.f4131c.getText().toString();
        str = "del";
        abstractC0926c.m10564a(str, str2);
        m10565l();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        Exception e;
        boolean z = true;
        boolean z2 = true;
        try {
            switch (view.getId()) {
                case R$id.deleteButton /* 2131296480 */:
                    m10567g();
                    this.f4133e.setPressed(false);
                    z = z2;
                    m10565l();
                    break;
                case R$id.number0 /* 2131296917 */:
                    m10569d(81);
                    z = z2;
                    m10565l();
                    break;
                case R$id.number1 /* 2131296918 */:
                    if (this.f4131c.length() == 0 && m10571b()) {
                        Intent intent = new Intent("android.intent.action.CALL");
                        intent.setData(Uri.parse("voicemail:"));
                        this.f4130b.startActivity(intent);
                        try {
                            ((Button) findViewById(R$id.number1)).setPressed(false);
                            z = z2;
                            m10565l();
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            z2 = z;
                            return z2;
                        }
                    }
                    z2 = false;
                    z = z2;
                    m10565l();
                    break;
                default:
                    z2 = false;
                    z = z2;
                    m10565l();
                    break;
            }
        } catch (Exception e3) {
            e = e3;
            z = false;
        }
        return z2;
    }

    public void setNumberCallBack(AbstractC0926c abstractC0926c) {
        this.f4136h = abstractC0926c;
    }
}
