package com.kedlin.cca.p007ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Patterns;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
/* renamed from: com.kedlin.cca.ui.EveryCallerSignInForm */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/EveryCallerSignInForm.class */
public class EveryCallerSignInForm extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener, View.OnClickListener {

    /* renamed from: m */
    public static String f3966m = "";

    /* renamed from: n */
    public static String f3967n = "";

    /* renamed from: a */
    public CheckBox f3968a;

    /* renamed from: b */
    public Button f3969b;

    /* renamed from: c */
    public Button f3970c;

    /* renamed from: d */
    public EditText f3971d;

    /* renamed from: f */
    public EditText f3972f;

    /* renamed from: g */
    public Drawable f3973g;

    /* renamed from: h */
    public Drawable f3974h;

    /* renamed from: j */
    public ImageView f3975j;

    /* renamed from: k */
    public ImageView f3976k;

    /* renamed from: l */
    public AbstractC0679f f3977l = null;

    /* renamed from: com.kedlin.cca.ui.EveryCallerSignInForm$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/EveryCallerSignInForm$a.class */
    public class C0674a implements TextWatcher {
        public C0674a() {
            EveryCallerSignInForm.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            Typeface typeface;
            int i4;
            EditText editText;
            if (charSequence.length() == 0) {
                editText = EveryCallerSignInForm.this.f3972f;
                typeface = Typeface.SANS_SERIF;
                i4 = 2;
            } else {
                editText = EveryCallerSignInForm.this.f3972f;
                typeface = Typeface.SANS_SERIF;
                i4 = 0;
            }
            editText.setTypeface(typeface, i4);
        }
    }

    /* renamed from: com.kedlin.cca.ui.EveryCallerSignInForm$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/EveryCallerSignInForm$b.class */
    public class C0675b implements TextWatcher {
        public C0675b() {
            EveryCallerSignInForm.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            Typeface typeface;
            int i4;
            EditText editText;
            if (charSequence.length() == 0) {
                editText = EveryCallerSignInForm.this.f3971d;
                typeface = Typeface.SANS_SERIF;
                i4 = 2;
            } else {
                editText = EveryCallerSignInForm.this.f3971d;
                typeface = Typeface.SANS_SERIF;
                i4 = 0;
            }
            editText.setTypeface(typeface, i4);
        }
    }

    /* renamed from: com.kedlin.cca.ui.EveryCallerSignInForm$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/EveryCallerSignInForm$c.class */
    public class View$OnClickListenerC0676c implements View.OnClickListener {
        public View$OnClickListenerC0676c() {
            EveryCallerSignInForm.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText;
            PasswordTransformationMethod passwordTransformationMethod;
            if (!((CompoundButton) view).isChecked()) {
                EveryCallerSignInForm.this.f3968a.setText(2131822191);
                editText = EveryCallerSignInForm.this.f3971d;
                passwordTransformationMethod = PasswordTransformationMethod.getInstance();
            } else {
                EveryCallerSignInForm.this.f3968a.setText(2131821485);
                editText = EveryCallerSignInForm.this.f3971d;
                passwordTransformationMethod = HideReturnsTransformationMethod.getInstance();
            }
            editText.setTransformationMethod(passwordTransformationMethod);
            EveryCallerSignInForm.this.f3971d.invalidate();
            EveryCallerSignInForm.this.f3971d.setSelection(EveryCallerSignInForm.this.f3971d.length());
        }
    }

    /* renamed from: com.kedlin.cca.ui.EveryCallerSignInForm$d */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/EveryCallerSignInForm$d.class */
    public class View$OnFocusChangeListenerC0677d implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC0677d() {
            EveryCallerSignInForm.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                return;
            }
            String charSequence = ((TextView) view).getText().toString();
            if (TextUtils.isEmpty(charSequence) || (charSequence != null && TextUtils.getTrimmedLength(charSequence) == 0)) {
                EveryCallerSignInForm.this.m4191i((EditText) view, 2131100050);
                return;
            }
            int i = 2131100049;
            if (view == EveryCallerSignInForm.this.f3972f) {
                EveryCallerSignInForm everyCallerSignInForm = EveryCallerSignInForm.this;
                boolean m4194f = everyCallerSignInForm.m4194f(everyCallerSignInForm.f3972f);
                EveryCallerSignInForm everyCallerSignInForm2 = EveryCallerSignInForm.this;
                EditText editText = everyCallerSignInForm2.f3972f;
                if (!m4194f) {
                    i = 2131100057;
                }
                everyCallerSignInForm2.m4191i(editText, i);
            } else if (view != EveryCallerSignInForm.this.f3971d) {
            } else {
                EveryCallerSignInForm everyCallerSignInForm3 = EveryCallerSignInForm.this;
                EditText editText2 = everyCallerSignInForm3.f3971d;
                EveryCallerSignInForm everyCallerSignInForm4 = EveryCallerSignInForm.this;
                if (!everyCallerSignInForm4.m4194f(everyCallerSignInForm4.f3971d)) {
                    i = 2131100057;
                }
                everyCallerSignInForm3.m4191i(editText2, i);
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.EveryCallerSignInForm$e */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/EveryCallerSignInForm$e.class */
    public class RunnableC0678e implements Runnable {
        public RunnableC0678e() {
            EveryCallerSignInForm.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            EveryCallerSignInForm.this.f3972f.requestFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) EveryCallerSignInForm.this.getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(EveryCallerSignInForm.this.f3972f, 0);
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.EveryCallerSignInForm$f */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/EveryCallerSignInForm$f.class */
    public interface AbstractC0679f {
        /* renamed from: a */
        void mo4095a(String str, String str2);

        /* renamed from: b */
        void mo4094b(String str, String str2);
    }

    public EveryCallerSignInForm(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    /* renamed from: f */
    public final boolean m4194f(TextView textView) {
        if (textView == null) {
            return false;
        }
        String charSequence = textView.getText().toString();
        if (TextUtils.isEmpty(charSequence)) {
            return false;
        }
        String trim = charSequence.trim();
        if (textView.getId() == 2131362739) {
            return Patterns.EMAIL_ADDRESS.matcher(trim).matches();
        }
        boolean z = false;
        if (textView.getId() == 2131362741) {
            z = false;
            if (trim.length() >= 5) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: g */
    public void m4193g() {
        EditText editText = this.f3972f;
        if (editText != null) {
            f3967n = editText.getText().toString();
        }
    }

    /* renamed from: h */
    public void m4192h() {
        EditText editText = this.f3971d;
        if (editText != null) {
            f3966m = editText.getText().toString();
        }
    }

    /* renamed from: i */
    public final void m4191i(EditText editText, int i) {
        Drawable drawable;
        if (editText == null || (drawable = editText.getCompoundDrawables()[2]) == null) {
            return;
        }
        drawable.mutate().setColorFilter(getResources().getColor(i), PorterDuff.Mode.SRC_ATOP);
    }

    /* renamed from: j */
    public boolean m4190j(boolean z) {
        int i;
        String str;
        int i2;
        String str2 = "";
        if (!m4194f(this.f3972f)) {
            i2 = 2131821545;
            str = getResources().getString(2131821544);
            this.f3974h.setColorFilter(getResources().getColor(2131100057), PorterDuff.Mode.SRC_ATOP);
            i = 1;
        } else {
            this.f3974h.setColorFilter(getResources().getColor(2131100049), PorterDuff.Mode.SRC_ATOP);
            str = "";
            i2 = -1;
            i = 0;
        }
        if (!z || m4194f(this.f3971d)) {
            this.f3973g.setColorFilter(getResources().getColor(2131100049), PorterDuff.Mode.SRC_ATOP);
        } else {
            i2 = 2131821547;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            if (str.length() > 0) {
                str2 = "\r\n\r\n";
            }
            sb.append(str2);
            sb.append(getResources().getString(2131821546));
            str = sb.toString();
            this.f3973g.setColorFilter(getResources().getColor(2131100057), PorterDuff.Mode.SRC_ATOP);
            i++;
        }
        if (i == 2) {
            str = getResources().getString(2131821548);
            i2 = 2131822199;
        }
        if (i2 == -1) {
            return false;
        }
        AlertDialog.Builder negativeButton = oe1.m1081i(getContext()).setNegativeButton(2131821909, (DialogInterface.OnClickListener) null);
        negativeButton.setTitle(i2);
        negativeButton.setMessage(str);
        negativeButton.create().show();
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        Button button = this.f3969b;
        if (button == null || this.f3970c == null) {
            return;
        }
        if (id != button.getId() && id != this.f3970c.getId()) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0678e(), 1L);
        if ((view instanceof Button) && m4190j(true)) {
            return;
        }
        if (id == this.f3969b.getId()) {
            this.f3977l.mo4094b(this.f3972f.getText().toString(), this.f3971d.getText().toString());
        }
        if (id != this.f3970c.getId()) {
            return;
        }
        this.f3977l.mo4095a(this.f3972f.getText().toString(), this.f3971d.getText().toString());
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (Build.VERSION.SDK_INT >= 16) {
            getViewTreeObserver().removeOnGlobalLayoutListener(this);
        } else {
            getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
        Drawable drawable = getResources().getDrawable(2131231304);
        this.f3973g = drawable;
        drawable.setColorFilter(getResources().getColor(2131100049), PorterDuff.Mode.SRC_ATOP);
        Drawable drawable2 = getResources().getDrawable(2131231215);
        this.f3974h = drawable2;
        drawable2.setColorFilter(getResources().getColor(2131100049), PorterDuff.Mode.SRC_ATOP);
        ImageView imageView = (ImageView) findViewById(2131362742);
        this.f3976k = imageView;
        imageView.setImageDrawable(this.f3973g);
        ImageView imageView2 = (ImageView) findViewById(2131362740);
        this.f3975j = imageView2;
        imageView2.setImageDrawable(this.f3974h);
        this.f3968a = (CheckBox) findViewById(2131362743);
        this.f3969b = (Button) findViewById(2131362736);
        this.f3970c = (Button) findViewById(2131362317);
        this.f3972f = (EditText) findViewById(2131362739);
        if (!f3967n.isEmpty()) {
            this.f3972f.setText(f3967n);
            this.f3972f.setSelection(f3967n.length());
        }
        this.f3972f.addTextChangedListener(new C0674a());
        this.f3971d = (EditText) findViewById(2131362741);
        if (!f3966m.isEmpty()) {
            this.f3971d.setText(f3966m);
            this.f3971d.setSelection(f3966m.length());
        }
        this.f3971d.addTextChangedListener(new C0675b());
        this.f3968a.setOnClickListener(new View$OnClickListenerC0676c());
        View$OnFocusChangeListenerC0677d view$OnFocusChangeListenerC0677d = new View$OnFocusChangeListenerC0677d();
        this.f3972f.setOnFocusChangeListener(view$OnFocusChangeListenerC0677d);
        this.f3971d.setOnFocusChangeListener(view$OnFocusChangeListenerC0677d);
        this.f3969b.setElevation(10.0f);
        this.f3969b.setTranslationZ(5.0f);
        this.f3969b.setOnClickListener(this);
        this.f3970c.setOnClickListener(this);
    }

    public void setListener(AbstractC0679f abstractC0679f) {
        this.f3977l = abstractC0679f;
    }
}
