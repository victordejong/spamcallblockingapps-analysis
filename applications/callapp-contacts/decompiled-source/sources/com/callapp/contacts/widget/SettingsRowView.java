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
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.R;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SettingsRowView.class */
public abstract class SettingsRowView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f16613a;

    /* renamed from: b  reason: collision with root package name */
    private Attributes f16614b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SettingsRowView$Attributes.class */
    class Attributes {

        /* renamed from: b  reason: collision with root package name */
        private int f16616b;

        /* renamed from: c  reason: collision with root package name */
        private int f16617c;

        private Attributes() {
        }
    }

    public SettingsRowView(Context context) {
        this(context, null);
    }

    public SettingsRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes;
        int color = ThemeUtils.getColor(2131099784);
        this.f16613a = color;
        Attributes attributes = new Attributes();
        this.f16614b = attributes;
        if (!(getContext() == null || attributeSet == null || (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.settingsRowSwitch)) == null)) {
            attributes.f16616b = obtainStyledAttributes.getResourceId(0, 0);
            attributes.f16617c = obtainStyledAttributes.getColor(1, color);
            obtainStyledAttributes.recycle();
        }
        Attributes attributes2 = this.f16614b;
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        if (layoutInflater != null) {
            layoutInflater.inflate(getLayoutResourceId(), (ViewGroup) this, true);
        }
        ImageView imageView = (ImageView) findViewById(2131363179);
        if (attributes2.f16616b != 0) {
            ImageUtils.a(imageView, attributes2.f16616b, new PorterDuffColorFilter(this.f16614b.f16617c, PorterDuff.Mode.SRC_IN));
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
        if (textView == null) {
            return;
        }
        if (StringUtils.b((CharSequence) str)) {
            textView.setText(str);
            textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100108));
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(8);
    }

    public void setTitle(String str) {
        TextView textView = (TextView) findViewById(2131364429);
        if (textView == null) {
            return;
        }
        if (StringUtils.b((CharSequence) str)) {
            textView.setText(str);
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(8);
    }
}
