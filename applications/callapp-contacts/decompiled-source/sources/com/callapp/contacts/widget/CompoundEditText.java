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
import com.callapp.contacts.R;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CompoundEditText.class */
public class CompoundEditText extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    public EditText f16464a;

    /* renamed from: b  reason: collision with root package name */
    public TextWatcher f16465b;

    /* renamed from: c  reason: collision with root package name */
    Attributes f16466c;

    /* renamed from: d  reason: collision with root package name */
    private View f16467d;
    private ImageView e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CompoundEditText$Attributes.class */
    public class Attributes {

        /* renamed from: b  reason: collision with root package name */
        private String f16471b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f16472c;

        private Attributes() {
            this.f16472c = null;
        }
    }

    public CompoundEditText(Context context) {
        this(context, null);
    }

    public CompoundEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Attributes attributes = new Attributes();
        this.f16466c = attributes;
        a(attributeSet, attributes);
        Attributes attributes2 = this.f16466c;
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131558693, (ViewGroup) this, true);
        this.e = (ImageView) findViewById(2131362155);
        this.f16467d = findViewById(2131362066);
        EditText editText = (EditText) findViewById(2131362674);
        this.f16464a = editText;
        editText.setId(ViewUtils.a());
        this.f16464a.setTextColor(ThemeUtils.getColor(2131100140));
        this.f16464a.setHintTextColor(ThemeUtils.getColor(2131099930));
        this.f16464a.setHint(attributes2.f16471b);
        if (Build.VERSION.SDK_INT >= 28) {
            this.f16464a.requestFocus();
        }
        if (attributes2.f16472c != null) {
            this.f16464a.setInputType(attributes2.f16472c.intValue());
        }
        this.f16464a.addTextChangedListener(new TextWatcher() { // from class: com.callapp.contacts.widget.CompoundEditText.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (CompoundEditText.this.f16465b != null) {
                    CompoundEditText.this.f16465b.afterTextChanged(editable);
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (CompoundEditText.this.f16465b != null) {
                    CompoundEditText.this.f16465b.beforeTextChanged(charSequence, i, i2, i3);
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                int i4 = 8;
                if (CompoundEditText.this.f16467d.getVisibility() == 0) {
                    CompoundEditText.this.f16467d.setVisibility(8);
                }
                if (CompoundEditText.this.f16464a.isEnabled()) {
                    ImageView imageView = CompoundEditText.this.e;
                    if (charSequence.length() > 0) {
                        i4 = 0;
                    }
                    imageView.setVisibility(i4);
                } else {
                    CompoundEditText.this.e.setVisibility(8);
                }
                if (CompoundEditText.this.f16465b != null) {
                    CompoundEditText.this.f16465b.onTextChanged(charSequence, i, i2, i3);
                }
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CompoundEditText.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CompoundEditText.this.f16464a.setText("");
            }
        });
    }

    private Attributes a(AttributeSet attributeSet, Attributes attributes) {
        if (!(getContext() == null || attributeSet == null)) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.compoundEditText);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    attributes.f16471b = obtainStyledAttributes.getString(index);
                } else if (index != 1) {
                    StringBuilder sb = new StringBuilder("Unknown attribute for ");
                    sb.append(getClass().toString());
                    sb.append(": ");
                    sb.append(index);
                    CLog.a("TAG");
                } else {
                    attributes.f16472c = Integer.valueOf(obtainStyledAttributes.getInt(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        return attributes;
    }

    public final void a() {
        View view = this.f16467d;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public String getText() {
        EditText editText = this.f16464a;
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
        EditText editText = this.f16464a;
        if (editText != null) {
            editText.setEnabled(z);
            if (!z) {
                this.e.setVisibility(8);
            }
        }
    }

    public void setHintText(CharSequence charSequence) {
        EditText editText = this.f16464a;
        if (editText != null) {
            editText.setHint(charSequence);
        }
    }

    public void setInputType(int i) {
        EditText editText = this.f16464a;
        if (editText != null) {
            editText.setInputType(i);
        }
    }

    public void setText(CharSequence charSequence) {
        EditText editText = this.f16464a;
        if (editText != null) {
            String obj = editText.getText().toString();
            if (charSequence == null || obj == null || charSequence.length() != obj.length()) {
                this.f16464a.setText("");
                if (!StringUtils.a(charSequence)) {
                    this.f16464a.append(charSequence);
                    return;
                }
                return;
            }
            this.f16464a.setText(charSequence);
            this.f16464a.setSelection(obj.length());
        }
    }
}
