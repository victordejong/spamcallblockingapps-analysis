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

    /* renamed from: d  reason: collision with root package name */
    private static final int f12713d = (int) CallAppApplication.get().getResources().getDimension(2131165525);

    /* renamed from: a  reason: collision with root package name */
    TextView f12714a;

    /* renamed from: b  reason: collision with root package name */
    TextView f12715b;

    /* renamed from: c  reason: collision with root package name */
    TextView f12716c;
    private ImageView e;

    public TwelveKeyDialerButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TwelveKeyDialerButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public final void a() {
        TextView textView = this.f12714a;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100228));
        }
        TextView textView2 = this.f12715b;
        if (textView2 != null) {
            textView2.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100228));
        }
        ImageView imageView = this.e;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        }
        TextView textView3 = this.f12716c;
        if (textView3 != null) {
            textView3.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100228));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str) {
        TextView textView = this.f12714a;
        if (textView == null) {
            return false;
        }
        textView.setText(str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(String str) {
        TextView textView = this.f12715b;
        if (textView == null) {
            return false;
        }
        textView.setText(str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(String str) {
        TextView textView = this.f12716c;
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
        this.f12714a = textView;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131099882));
            this.f12714a.setTextScaleX(1.0f);
            this.f12714a.setScaleY(1.0f);
            this.f12714a.setScaleX(1.0f);
        }
        TextView textView2 = (TextView) findViewById(2131364420);
        this.f12715b = textView2;
        if (textView2 != null) {
            textView2.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131099885));
            this.f12715b.setTextScaleX(1.0f);
            this.f12715b.setScaleY(1.0f);
            this.f12715b.setScaleX(1.0f);
        }
        ImageView imageView = (ImageView) findViewById(2131362594);
        this.e = imageView;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        }
        TextView textView3 = (TextView) findViewById(2131364427);
        this.f12716c = textView3;
        if (textView3 != null) {
            textView3.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131099885));
            this.f12716c.setTextScaleX(1.0f);
            this.f12716c.setScaleY(1.0f);
            this.f12716c.setScaleX(1.0f);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (Build.VERSION.SDK_INT >= 21) {
            Drawable background = getBackground();
            if (background instanceof RippleDrawable) {
                int i5 = i / 2;
                int i6 = i2 / 2;
                int i7 = f12713d;
                background.setHotspotBounds(i5 - i7, i6 - i7, i5 + i7, i6 + i7);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSecondaryTextSize(float f) {
        TextView textView = this.f12716c;
        if (textView != null) {
            textView.setTextSize(1, f);
        }
    }
}
