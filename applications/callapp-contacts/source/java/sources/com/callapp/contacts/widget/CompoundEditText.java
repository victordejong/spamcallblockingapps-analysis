package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CompoundEditText.class */
public class CompoundEditText extends RelativeLayout {

    /* renamed from: a */
    public EditText f28658a;

    /* renamed from: b */
    public TextWatcher f28659b;

    /* renamed from: c */
    Attributes f28660c;

    /* renamed from: d */
    private View f28661d;

    /* renamed from: e */
    private ImageView f28662e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CompoundEditText$Attributes.class */
    public class Attributes {

        /* renamed from: b */
        private String f28666b;

        /* renamed from: c */
        private Integer f28667c;

        private Attributes() {
            CompoundEditText.this = r4;
            this.f28667c = null;
        }
    }

    public CompoundEditText(Context context) {
        this(context, null);
    }

    public CompoundEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Attributes attributes = new Attributes();
        this.f28660c = attributes;
        m26776a(attributeSet, attributes);
        Attributes attributes2 = this.f28660c;
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131558693, (ViewGroup) this, true);
        this.f28662e = (ImageView) findViewById(2131362155);
        this.f28661d = findViewById(2131362066);
        EditText editText = (EditText) findViewById(2131362674);
        this.f28658a = editText;
        editText.setId(ViewUtils.m27335a());
        this.f28658a.setTextColor(ThemeUtils.getColor(2131100140));
        this.f28658a.setHintTextColor(ThemeUtils.getColor(2131099930));
        this.f28658a.setHint(attributes2.f28666b);
        if (Build.VERSION.SDK_INT >= 28) {
            this.f28658a.requestFocus();
        }
        if (attributes2.f28667c != null) {
            this.f28658a.setInputType(attributes2.f28667c.intValue());
        }
        this.f28658a.addTextChangedListener(new TextWatcher() { // from class: com.callapp.contacts.widget.CompoundEditText.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (CompoundEditText.this.f28659b != null) {
                    CompoundEditText.this.f28659b.afterTextChanged(editable);
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (CompoundEditText.this.f28659b != null) {
                    CompoundEditText.this.f28659b.beforeTextChanged(charSequence, i, i2, i3);
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                int i4 = 8;
                if (CompoundEditText.this.f28661d.getVisibility() == 0) {
                    CompoundEditText.this.f28661d.setVisibility(8);
                }
                if (CompoundEditText.this.f28658a.isEnabled()) {
                    ImageView imageView = CompoundEditText.this.f28662e;
                    if (charSequence.length() > 0) {
                        i4 = 0;
                    }
                    imageView.setVisibility(i4);
                } else {
                    CompoundEditText.this.f28662e.setVisibility(8);
                }
                if (CompoundEditText.this.f28659b != null) {
                    CompoundEditText.this.f28659b.onTextChanged(charSequence, i, i2, i3);
                }
            }
        });
        this.f28662e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CompoundEditText.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CompoundEditText.this.f28658a.setText("");
            }
        });
    }

    /* renamed from: a */
    private Attributes m26776a(AttributeSet attributeSet, Attributes attributes) {
        if (getContext() != null && attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.compoundEditText);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    attributes.f28666b = obtainStyledAttributes.getString(index);
                } else if (index != 1) {
                    StringBuilder sb = new StringBuilder("Unknown attribute for ");
                    sb.append(getClass().toString());
                    sb.append(": ");
                    sb.append(index);
                    CLog.m27606a("TAG");
                } else {
                    attributes.f28667c = Integer.valueOf(obtainStyledAttributes.getInt(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        return attributes;
    }

    /* renamed from: a */
    public final void m26777a() {
        View view = this.f28661d;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public String getText() {
        EditText editText = this.f28658a;
        if (editText != null) {
            return editText.getText().toString();
        }
        return null;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        EditText editText = this.f28658a;
        if (editText != null) {
            editText.setEnabled(z);
            if (z) {
                return;
            }
            this.f28662e.setVisibility(8);
        }
    }

    public void setHintText(CharSequence charSequence) {
        EditText editText = this.f28658a;
        if (editText != null) {
            editText.setHint(charSequence);
        }
    }

    public void setInputType(int i) {
        EditText editText = this.f28658a;
        if (editText != null) {
            editText.setInputType(i);
        }
    }

    public void setText(CharSequence charSequence) {
        EditText editText = this.f28658a;
        if (editText != null) {
            String obj = editText.getText().toString();
            if (charSequence != null && obj != null && charSequence.length() == obj.length()) {
                this.f28658a.setText(charSequence);
                this.f28658a.setSelection(obj.length());
                return;
            }
            this.f28658a.setText("");
            if (StringUtils.m26059a(charSequence)) {
                return;
            }
            this.f28658a.append(charSequence);
        }
    }
}
