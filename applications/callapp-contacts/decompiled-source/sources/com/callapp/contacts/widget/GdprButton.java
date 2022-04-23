package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/GdprButton.class */
public class GdprButton extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f16501a = 2131559164;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f16502b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16503c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f16504d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/GdprButton$GdprDialogButtonData.class */
    public static class GdprDialogButtonData {

        /* renamed from: a  reason: collision with root package name */
        private int f16505a;

        /* renamed from: b  reason: collision with root package name */
        private int f16506b;

        /* renamed from: c  reason: collision with root package name */
        private int f16507c;

        /* renamed from: d  reason: collision with root package name */
        private View.OnClickListener f16508d;
        private int e;

        public GdprDialogButtonData(int i, int i2, int i3, View.OnClickListener onClickListener) {
            this.f16505a = i;
            this.f16506b = i2;
            this.f16507c = i3;
            this.f16508d = onClickListener;
        }

        public GdprDialogButtonData(int i, int i2, View.OnClickListener onClickListener, int i3) {
            this.f16505a = i;
            this.f16506b = i2;
            this.f16507c = 0;
            this.f16508d = onClickListener;
            this.e = i3;
        }

        public int getBackgroundDrawable() {
            return this.e;
        }

        public int getImageDrawableResource() {
            return this.f16505a;
        }

        public View.OnClickListener getOnClickCallback() {
            return this.f16508d;
        }

        public int getText() {
            return this.f16507c;
        }

        public int getTitle() {
            return this.f16506b;
        }
    }

    public GdprButton(Context context) {
        super(context);
        a(context, (AttributeSet) null, -1);
    }

    public GdprButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public GdprButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private void a(Context context) {
        LayoutInflater.from(context).inflate(this.f16501a, (ViewGroup) this, true);
        this.f16502b = (ImageView) findViewById(2131363037);
        this.f16503c = (TextView) findViewById(2131364465);
        this.f16504d = (TextView) findViewById(2131364464);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GdprButton, i, 0);
            this.f16501a = obtainStyledAttributes.getResourceId(0, 2131559164);
            obtainStyledAttributes.recycle();
        }
        a(context);
    }

    public void setData(GdprDialogButtonData gdprDialogButtonData) {
        TextView textView;
        ImageUtils.a(this.f16502b, gdprDialogButtonData.getImageDrawableResource(), (ColorFilter) null);
        if (gdprDialogButtonData.getTitle() > 0) {
            this.f16503c.setText(Activities.getString(gdprDialogButtonData.getTitle()));
        }
        if (gdprDialogButtonData.getText() > 0 && (textView = this.f16504d) != null) {
            textView.setText(Activities.getString(gdprDialogButtonData.getText()));
        }
        findViewById(2131364522).setOnClickListener(gdprDialogButtonData.getOnClickCallback());
        if (gdprDialogButtonData.getBackgroundDrawable() != 0) {
            findViewById(2131364522).setBackgroundResource(gdprDialogButtonData.getBackgroundDrawable());
        }
    }
}
