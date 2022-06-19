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
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/GdprButton.class */
public class GdprButton extends ConstraintLayout {

    /* renamed from: a */
    private int f28713a = 2131559164;

    /* renamed from: b */
    private ImageView f28714b;

    /* renamed from: c */
    private TextView f28715c;

    /* renamed from: d */
    private TextView f28716d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/GdprButton$GdprDialogButtonData.class */
    public static class GdprDialogButtonData {

        /* renamed from: a */
        private int f28717a;

        /* renamed from: b */
        private int f28718b;

        /* renamed from: c */
        private int f28719c;

        /* renamed from: d */
        private View.OnClickListener f28720d;

        /* renamed from: e */
        private int f28721e;

        public GdprDialogButtonData(int i, int i2, int i3, View.OnClickListener onClickListener) {
            this.f28717a = i;
            this.f28718b = i2;
            this.f28719c = i3;
            this.f28720d = onClickListener;
        }

        public GdprDialogButtonData(int i, int i2, View.OnClickListener onClickListener, int i3) {
            this.f28717a = i;
            this.f28718b = i2;
            this.f28719c = 0;
            this.f28720d = onClickListener;
            this.f28721e = i3;
        }

        public int getBackgroundDrawable() {
            return this.f28721e;
        }

        public int getImageDrawableResource() {
            return this.f28717a;
        }

        public View.OnClickListener getOnClickCallback() {
            return this.f28720d;
        }

        public int getText() {
            return this.f28719c;
        }

        public int getTitle() {
            return this.f28718b;
        }
    }

    public GdprButton(Context context) {
        super(context);
        m26737a(context, (AttributeSet) null, -1);
    }

    public GdprButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26737a(context, attributeSet, 0);
    }

    public GdprButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26737a(context, attributeSet, i);
    }

    /* renamed from: a */
    private void m26738a(Context context) {
        LayoutInflater.from(context).inflate(this.f28713a, (ViewGroup) this, true);
        this.f28714b = (ImageView) findViewById(2131363037);
        this.f28715c = (TextView) findViewById(2131364465);
        this.f28716d = (TextView) findViewById(2131364464);
    }

    /* renamed from: a */
    private void m26737a(Context context, AttributeSet attributeSet, int i) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.GdprButton, i, 0);
            this.f28713a = obtainStyledAttributes.getResourceId(0, 2131559164);
            obtainStyledAttributes.recycle();
        }
        m26738a(context);
    }

    public void setData(GdprDialogButtonData gdprDialogButtonData) {
        TextView textView;
        ImageUtils.m27529a(this.f28714b, gdprDialogButtonData.getImageDrawableResource(), (ColorFilter) null);
        if (gdprDialogButtonData.getTitle() > 0) {
            this.f28715c.setText(Activities.getString(gdprDialogButtonData.getTitle()));
        }
        if (gdprDialogButtonData.getText() > 0 && (textView = this.f28716d) != null) {
            textView.setText(Activities.getString(gdprDialogButtonData.getText()));
        }
        findViewById(2131364522).setOnClickListener(gdprDialogButtonData.getOnClickCallback());
        if (gdprDialogButtonData.getBackgroundDrawable() != 0) {
            findViewById(2131364522).setBackgroundResource(gdprDialogButtonData.getBackgroundDrawable());
        }
    }
}
