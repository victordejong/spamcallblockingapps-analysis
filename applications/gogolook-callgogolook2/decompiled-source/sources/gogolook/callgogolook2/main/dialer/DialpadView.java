package gogolook.callgogolook2.main.dialer;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.dialer.DialpadKeyButton;
import gogolook.callgogolook2.phone.WCInCallActivity;
import p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialpadView.class */
public class DialpadView extends ConstraintLayout {

    /* renamed from: e */
    public static final int[] f11150e = {R$id.one, R$id.two, R$id.three, R$id.four, R$id.five, R$id.six, R$id.seven, R$id.eight, R$id.nine, R$id.star, R$id.zero, R$id.pound};

    /* renamed from: f */
    public static final int[] f11151f = {R$string.dialpad_number_1, R$string.dialpad_number_2, R$string.dialpad_number_3, R$string.dialpad_number_4, R$string.dialpad_number_5, R$string.dialpad_number_6, R$string.dialpad_number_7, R$string.dialpad_number_8, R$string.dialpad_number_9, R$string.dialpad_number_star, R$string.dialpad_number_0, R$string.dialpad_number_pound};

    /* renamed from: a */
    public EditText f11152a;

    /* renamed from: b */
    public ImageButton f11153b;

    /* renamed from: c */
    public ImageButton f11154c;

    /* renamed from: d */
    public TextWatcher f11155d = new C4609a();

    /* renamed from: gogolook.callgogolook2.main.dialer.DialpadView$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialpadView$a.class */
    public class C4609a implements TextWatcher {
        public C4609a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            int i4 = TextUtils.isEmpty(charSequence) ? 4 : 0;
            if (DialpadView.this.f11153b != null) {
                DialpadView.this.f11153b.setVisibility(i4);
            }
            if (DialpadView.this.f11154c != null) {
                DialpadView.this.f11154c.setVisibility(i4);
            }
        }
    }

    public DialpadView(Context context) {
        super(context);
    }

    public DialpadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @TargetApi(11)
    public DialpadView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public ImageButton m27809a() {
        return this.f11153b;
    }

    /* renamed from: a */
    public void m27808a(@NonNull Activity activity) {
        m27807a(activity, null);
    }

    /* renamed from: a */
    public void m27807a(@NonNull Activity activity, @Nullable Fragment fragment) {
        Resources resources = activity.getResources();
        int i = 0;
        while (true) {
            int[] iArr = f11150e;
            if (i < iArr.length) {
                DialpadKeyButton dialpadKeyButton = (DialpadKeyButton) findViewById(iArr[i]);
                dialpadKeyButton.setContentDescription(resources.getString(f11151f[i]));
                if (fragment instanceof View$OnLongClickListenerC11269m) {
                    View$OnLongClickListenerC11269m mVar = (View$OnLongClickListenerC11269m) fragment;
                    dialpadKeyButton.m27814a(mVar);
                    int[] iArr2 = f11150e;
                    if (iArr2[i] == 2131362955 || iArr2[i] == 2131363734) {
                        dialpadKeyButton.setOnLongClickListener(mVar);
                    }
                } else if (activity instanceof WCInCallActivity) {
                    dialpadKeyButton.m27814a((DialpadKeyButton.AbstractC4608b) ((WCInCallActivity) activity));
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public void m27806a(TextWatcher textWatcher) {
        EditText editText = this.f11152a;
        if (editText != null) {
            editText.addTextChangedListener(textWatcher);
            this.f11152a.removeTextChangedListener(this.f11155d);
            this.f11152a.addTextChangedListener(this.f11155d);
        }
    }

    /* renamed from: a */
    public void m27805a(View.OnClickListener onClickListener) {
        EditText editText = this.f11152a;
        if (editText != null) {
            editText.setOnClickListener(onClickListener);
        }
        ImageButton imageButton = this.f11153b;
        if (imageButton != null) {
            imageButton.setOnClickListener(onClickListener);
        }
        ImageButton imageButton2 = this.f11154c;
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: a */
    public void m27804a(View.OnLongClickListener onLongClickListener) {
        EditText editText = this.f11152a;
        if (editText != null) {
            editText.setOnLongClickListener(onLongClickListener);
        }
        ImageButton imageButton = this.f11153b;
        if (imageButton != null) {
            imageButton.setOnLongClickListener(onLongClickListener);
        }
    }

    /* renamed from: a */
    public void m27802a(boolean z) {
        View findViewById = findViewById(R$id.ib_delete_digits);
        EditText editText = (EditText) findViewById(R$id.digits);
        editText.setClickable(z);
        editText.setLongClickable(z);
        editText.setFocusableInTouchMode(z);
        int i = 0;
        boolean z2 = z && !TextUtils.isEmpty(editText.getText());
        editText.setCursorVisible(true);
        if (!z2) {
            i = 4;
        }
        findViewById.setVisibility(i);
    }

    /* renamed from: b */
    public EditText m27801b() {
        return this.f11152a;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11152a = (EditText) findViewById(R$id.digits);
        this.f11153b = (ImageButton) findViewById(R$id.ib_delete_digits);
        this.f11154c = (ImageButton) findViewById(R$id.ib_add_contact);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return true;
    }
}
