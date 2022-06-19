package com.callapp.contacts.widget.login;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.C0790b;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/LoginButton.class */
public abstract class LoginButton<MANAGER> extends ConstraintLayout {

    /* renamed from: a */
    private String f29298a = "privacyDefault";

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/LoginButton$LoginButtonType.class */
    public enum LoginButtonType {
        PHONE,
        SOCIAL
    }

    public LoginButton(Context context) {
        super(context);
        m26380a(context, (AttributeSet) null, 0);
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26380a(context, attributeSet, 0);
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26380a(context, attributeSet, i);
    }

    /* renamed from: a */
    private void m26380a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.SocialLoginButton, i, 0);
        int integer = obtainStyledAttributes.getInteger(0, 1);
        int constraintSetLayout = getConstraintSetLayout(integer);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(context).inflate(constraintSetLayout, (ViewGroup) this, true);
        setButtonData(integer);
        setEnabled(false);
    }

    private int getConstraintSetLayout(int i) {
        return i != 0 ? i != 1 ? i != 3 ? 2131558790 : 2131558792 : 2131558789 : 2131558791;
    }

    /* renamed from: a */
    public void mo26379a() {
    }

    /* renamed from: a */
    protected abstract void mo26373a(LoginButtonType loginButtonType);

    public int getButtonBackground(int i) {
        return 2131232044;
    }

    protected abstract int getButtonIcon(int i);

    protected abstract ColorFilter getButtonIconColorFilter(int i);

    protected abstract String getButtonText(int i);

    protected int getButtonTextColor() {
        return C0790b.m44492c(getContext(), 2131100228);
    }

    public void setButtonData(int i) {
        TextView textView = (TextView) findViewById(2131363924);
        textView.setText(getButtonText(i));
        textView.setTextColor(getButtonTextColor());
        ImageUtils.m27529a((ImageView) findViewById(2131363923), getButtonIcon(i), getButtonIconColorFilter(i));
        setBackgroundResource(getButtonBackground(i));
    }

    public void setButtonLayoutType(int i) {
        int constraintSetLayout = getConstraintSetLayout(i);
        ConstraintLayout constraintLayout = new ConstraintLayout(getContext());
        LayoutInflater.from(getContext()).inflate(constraintSetLayout, (ViewGroup) constraintLayout, true);
        C0680c c0680c = new C0680c();
        c0680c.m44701a(constraintLayout);
        c0680c.m44693b(this);
        setButtonData(i);
    }

    public void setLoginType(String str) {
        this.f29298a = str;
    }

    public abstract void setManager(MANAGER manager);

    public void setText(String str) {
        ((TextView) findViewById(2131363924)).setText(str);
    }
}
