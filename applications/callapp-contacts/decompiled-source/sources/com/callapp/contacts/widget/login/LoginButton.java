package com.callapp.contacts.widget.login;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.core.content.b;
import com.callapp.contacts.R;
import com.callapp.contacts.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/LoginButton.class */
public abstract class LoginButton<MANAGER> extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private String f16824a = "privacyDefault";

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/login/LoginButton$LoginButtonType.class */
    public enum LoginButtonType {
        PHONE,
        SOCIAL
    }

    public LoginButton(Context context) {
        super(context);
        a(context, (AttributeSet) null, 0);
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SocialLoginButton, i, 0);
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

    public void a() {
    }

    protected abstract void a(LoginButtonType loginButtonType);

    /* JADX INFO: Access modifiers changed from: protected */
    public int getButtonBackground(int i) {
        return 2131232044;
    }

    protected abstract int getButtonIcon(int i);

    protected abstract ColorFilter getButtonIconColorFilter(int i);

    protected abstract String getButtonText(int i);

    protected int getButtonTextColor() {
        return b.c(getContext(), 2131100228);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setButtonData(int i) {
        TextView textView = (TextView) findViewById(2131363924);
        textView.setText(getButtonText(i));
        textView.setTextColor(getButtonTextColor());
        ImageUtils.a((ImageView) findViewById(2131363923), getButtonIcon(i), getButtonIconColorFilter(i));
        setBackgroundResource(getButtonBackground(i));
    }

    public void setButtonLayoutType(int i) {
        int constraintSetLayout = getConstraintSetLayout(i);
        ConstraintLayout constraintLayout = new ConstraintLayout(getContext());
        LayoutInflater.from(getContext()).inflate(constraintSetLayout, (ViewGroup) constraintLayout, true);
        c cVar = new c();
        cVar.a(constraintLayout);
        cVar.b(this);
        setButtonData(i);
    }

    public void setLoginType(String str) {
        this.f16824a = str;
    }

    public abstract void setManager(MANAGER manager);

    public void setText(String str) {
        ((TextView) findViewById(2131363924)).setText(str);
    }
}
