package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SettingsRowView.class */
public abstract class SettingsRowView extends FrameLayout {

    /* renamed from: a */
    private final int f28906a;

    /* renamed from: b */
    private Attributes f28907b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SettingsRowView$Attributes.class */
    public class Attributes {

        /* renamed from: b */
        private int f28909b;

        /* renamed from: c */
        private int f28910c;

        private Attributes() {
            SettingsRowView.this = r4;
        }
    }

    public SettingsRowView(Context context) {
        this(context, null);
    }

    public SettingsRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes;
        int color = ThemeUtils.getColor(2131099784);
        this.f28906a = color;
        Attributes attributes = new Attributes();
        this.f28907b = attributes;
        if (getContext() != null && attributeSet != null && (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.settingsRowSwitch)) != null) {
            attributes.f28909b = obtainStyledAttributes.getResourceId(0, 0);
            attributes.f28910c = obtainStyledAttributes.getColor(1, color);
            obtainStyledAttributes.recycle();
        }
        Attributes attributes2 = this.f28907b;
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        if (layoutInflater != null) {
            layoutInflater.inflate(getLayoutResourceId(), (ViewGroup) this, true);
        }
        ImageView imageView = (ImageView) findViewById(2131363179);
        if (attributes2.f28909b != 0) {
            ImageUtils.m27529a(imageView, attributes2.f28909b, new PorterDuffColorFilter(this.f28907b.f28910c, PorterDuff.Mode.SRC_IN));
        } else {
            imageView.setVisibility(8);
        }
    }

    protected abstract int getLayoutResourceId();

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    public void setSubTitle(String str) {
        TextView textView = (TextView) findViewById(2131364428);
        if (textView != null) {
            if (!StringUtils.m26045b((CharSequence) str)) {
                textView.setVisibility(8);
                return;
            }
            textView.setText(str);
            textView.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100108));
            textView.setVisibility(0);
        }
    }

    public void setTitle(String str) {
        TextView textView = (TextView) findViewById(2131364429);
        if (textView != null) {
            if (!StringUtils.m26045b((CharSequence) str)) {
                textView.setVisibility(8);
                return;
            }
            textView.setText(str);
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            textView.setVisibility(0);
        }
    }
}
