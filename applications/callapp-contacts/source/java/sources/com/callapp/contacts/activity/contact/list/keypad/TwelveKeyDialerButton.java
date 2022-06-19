package com.callapp.contacts.activity.contact.list.keypad;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialerButton.class */
public class TwelveKeyDialerButton extends LinearLayout {

    /* renamed from: d */
    private static final int f22733d = (int) CallAppApplication.get().getResources().getDimension(2131165525);

    /* renamed from: a */
    TextView f22734a;

    /* renamed from: b */
    TextView f22735b;

    /* renamed from: c */
    TextView f22736c;

    /* renamed from: e */
    private ImageView f22737e;

    public TwelveKeyDialerButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TwelveKeyDialerButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public final void m30452a() {
        TextView textView = this.f22734a;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228));
        }
        TextView textView2 = this.f22735b;
        if (textView2 != null) {
            textView2.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228));
        }
        ImageView imageView = this.f22737e;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        }
        TextView textView3 = this.f22736c;
        if (textView3 != null) {
            textView3.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228));
        }
    }

    /* renamed from: a */
    public final boolean m30451a(String str) {
        TextView textView = this.f22734a;
        if (textView == null) {
            return false;
        }
        textView.setText(str);
        return true;
    }

    /* renamed from: b */
    public final boolean m30450b(String str) {
        TextView textView = this.f22735b;
        if (textView == null) {
            return false;
        }
        textView.setText(str);
        return true;
    }

    /* renamed from: c */
    public final boolean m30449c(String str) {
        TextView textView = this.f22736c;
        if (textView == null) {
            return false;
        }
        textView.setText(str);
        return true;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        TextView textView = (TextView) findViewById(2131364422);
        this.f22734a = textView;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099882));
            this.f22734a.setTextScaleX(1.0f);
            this.f22734a.setScaleY(1.0f);
            this.f22734a.setScaleX(1.0f);
        }
        TextView textView2 = (TextView) findViewById(2131364420);
        this.f22735b = textView2;
        if (textView2 != null) {
            textView2.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885));
            this.f22735b.setTextScaleX(1.0f);
            this.f22735b.setScaleY(1.0f);
            this.f22735b.setScaleX(1.0f);
        }
        ImageView imageView = (ImageView) findViewById(2131362594);
        this.f22737e = imageView;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        }
        TextView textView3 = (TextView) findViewById(2131364427);
        this.f22736c = textView3;
        if (textView3 != null) {
            textView3.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885));
            this.f22736c.setTextScaleX(1.0f);
            this.f22736c.setScaleY(1.0f);
            this.f22736c.setScaleX(1.0f);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (Build.VERSION.SDK_INT >= 21) {
            Drawable background = getBackground();
            if (!(background instanceof RippleDrawable)) {
                return;
            }
            int i5 = i / 2;
            int i6 = i2 / 2;
            int i7 = f22733d;
            background.setHotspotBounds(i5 - i7, i6 - i7, i5 + i7, i6 + i7);
        }
    }

    public void setSecondaryTextSize(float f) {
        TextView textView = this.f22736c;
        if (textView == null) {
            return;
        }
        textView.setTextSize(1, f);
    }
}
