package com.kedlin.cca.p007ui;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
/* renamed from: com.kedlin.cca.ui.RedeemCodeEditText */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/RedeemCodeEditText.class */
public class RedeemCodeEditText extends EditText implements TextWatcher {

    /* renamed from: a */
    public AbstractC0701b f4071a;

    /* renamed from: b */
    public int f4072b;

    /* renamed from: com.kedlin.cca.ui.RedeemCodeEditText$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/RedeemCodeEditText$a.class */
    public class C0700a implements TextView.OnEditorActionListener {
        public C0700a() {
            RedeemCodeEditText.this = r4;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (RedeemCodeEditText.this.f4071a != null) {
                if ((keyEvent == null || keyEvent.getKeyCode() != 66) && i != 6) {
                    return false;
                }
                RedeemCodeEditText.this.f4071a.m4114a();
                return false;
            }
            return false;
        }
    }

    /* renamed from: com.kedlin.cca.ui.RedeemCodeEditText$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/RedeemCodeEditText$b.class */
    public interface AbstractC0701b {
        /* renamed from: a */
        void m4114a();
    }

    public RedeemCodeEditText(Context context) {
        super(context);
    }

    public RedeemCodeEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RedeemCodeEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String str;
        int currentTextColor = getCurrentTextColor();
        int i = this.f4072b;
        if (currentTextColor != i) {
            setTextColor(i);
        }
        String str2 = "";
        char[] charArray = editable.toString().replaceAll("[^a-zA-Z0-9]", "").toCharArray();
        int i2 = 0;
        while (true) {
            str = str2;
            if (i2 >= charArray.length) {
                break;
            }
            String str3 = str2;
            if (i2 != 0) {
                str3 = str2;
                if (i2 % 4 == 0) {
                    str3 = str2;
                    if (i2 < charArray.length) {
                        str3 = str2 + "-";
                    }
                }
            }
            str2 = str3 + charArray[i2];
            if (str2.length() == 64) {
                str = str2;
                break;
            }
            i2++;
        }
        if (!str.equals(editable.toString())) {
            editable.replace(0, editable.length(), str);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f4072b = g8.d(getContext(), 2131099684);
        addTextChangedListener(this);
        setOnEditorActionListener(new C0700a());
        setInputType(4096);
        setHint(2131822088);
        setFilters(new InputFilter[]{new InputFilter.AllCaps()});
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void setOnEnterCallback(AbstractC0701b abstractC0701b) {
        this.f4071a = abstractC0701b;
    }
}
