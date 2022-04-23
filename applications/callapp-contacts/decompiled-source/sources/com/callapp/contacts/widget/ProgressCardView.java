package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.callapp.contacts.R;
import com.callapp.contacts.util.ColorUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ProgressCardView.class */
public class ProgressCardView extends CardView {
    public static final int e = ThemeUtils.getColor(2131100108);
    public View f;
    public View g;
    public TextView h;
    public TextView i;
    public ImageView j;
    public ProgressBar k;
    public TextView l;
    public int m;
    public DefaultInterfaceImplUtils.ClickListener n;
    private ImageView o;
    private TextView p;
    private TextView q;
    private ViewGroup r;
    private ViewGroup s;
    private ViewGroup t;
    private View u;
    private SimpleCardViewEvents v;
    private View w;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents.class */
    public interface SimpleCardViewEvents {
        void a();

        void b();

        void c();
    }

    public ProgressCardView(Context context) {
        this(context, null);
    }

    public ProgressCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProgressCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = 1;
        this.n = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.ProgressCardView.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                if (ProgressCardView.this.v != null) {
                    switch (view.getId()) {
                        case 2131362178:
                        case 2131363176:
                            ProgressCardView.this.v.a();
                            return;
                        case 2131362179:
                        case 2131363672:
                            ProgressCardView.this.v.b();
                            return;
                        case 2131363998:
                            ProgressCardView.this.v.c();
                            return;
                        default:
                            return;
                    }
                }
            }
        };
        int i2 = 2131558703;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ProgressCardView, i, 0);
            i2 = obtainStyledAttributes.getResourceId(0, 2131558703);
            obtainStyledAttributes.recycle();
        }
        LayoutInflater.from(context).inflate(i2, (ViewGroup) this, true);
        int color = ThemeUtils.getColor(2131100140);
        this.o = (ImageView) findViewById(2131363000);
        this.w = findViewById(2131364488);
        TextView textView = (TextView) findViewById(2131364130);
        this.p = textView;
        textView.setTextColor(color);
        TextView textView2 = (TextView) findViewById(2131362553);
        this.q = textView2;
        textView2.setTextColor(color);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131362186);
        this.r = viewGroup;
        if (viewGroup != null) {
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(2131362178);
            this.t = viewGroup2;
            viewGroup2.setOnClickListener(this.n);
            ViewGroup viewGroup3 = (ViewGroup) this.r.findViewById(2131362179);
            this.s = viewGroup3;
            viewGroup3.setOnClickListener(this.n);
        }
        this.f = findViewById(2131363591);
        this.u = findViewById(2131363193);
        this.g = findViewById(2131364036);
        this.p.setTextColor(ThemeUtils.getColor(2131100140));
        this.q.setTextColor(e);
    }

    public final void a() {
        ViewGroup viewGroup = this.s;
        if (viewGroup != null) {
            viewGroup.performClick();
        }
    }

    public final void a(boolean z) {
        ViewGroup viewGroup = this.t;
        if (viewGroup != null) {
            viewGroup.setVisibility(z ? 0 : 4);
        }
    }

    public final void b(boolean z) {
        ViewGroup viewGroup = this.s;
        if (viewGroup != null) {
            viewGroup.setVisibility(z ? 0 : 4);
        }
    }

    public TextView getDescription() {
        return this.q;
    }

    public Drawable getLeftButtonContainerBackground() {
        ViewGroup viewGroup = this.t;
        if (viewGroup != null) {
            return viewGroup.getBackground();
        }
        return null;
    }

    public View getLeftTextView() {
        if (ViewUtils.a(this.u)) {
            return this.u;
        }
        return null;
    }

    public Drawable getRightButtonContainerBackground() {
        ViewGroup viewGroup = this.s;
        if (viewGroup != null) {
            return viewGroup.getBackground();
        }
        return null;
    }

    public TextView getRightButtonText() {
        return (TextView) this.s.findViewById(2131363672);
    }

    public TextView getTitle() {
        return this.p;
    }

    public View getUpperView() {
        return this.w;
    }

    public void setButtonsContainerVisibility(int i) {
        ViewGroup viewGroup = this.r;
        if (viewGroup != null) {
            viewGroup.setVisibility(i);
        }
    }

    public void setDescription(String str) {
        if (this.q != null) {
            this.q.setText(HtmlUtils.b(StringUtils.b(str, "\\*(.*?)\\*", "<font color=#" + ColorUtils.getRgbRepresentation(ThemeUtils.getColor(2131099784)) + "><b>$1</b></font>")));
        }
    }

    public void setImageBackgroundColor(int i) {
        ImageView imageView = this.o;
        if (imageView != null) {
            imageView.setBackgroundColor(i);
        }
    }

    public void setImageBackgroundUrl(String str) {
        ImageView imageView = this.o;
        if (imageView != null) {
            GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(imageView, str, getContext()).a();
            a2.q = true;
            a2.d();
        }
    }

    public void setIsRightButtonClickable(boolean z) {
        ViewGroup viewGroup = this.s;
        if (viewGroup != null) {
            viewGroup.findViewById(2131363672).setEnabled(z);
        }
    }

    public void setLeftButtonStyle(int i, int i2, int i3, String str) {
        ViewUtils.a(this.t, i, i2, i3, str, this.n);
    }

    public void setLeftButtonVisibility(int i) {
        ViewGroup viewGroup = this.t;
        if (viewGroup != null) {
            viewGroup.setVisibility(i);
        }
    }

    public void setLeftText(SpannableString spannableString) {
        View b2 = ViewUtils.b(this.u);
        this.u = b2;
        if (b2 != null) {
            ((TextView) b2).setText(spannableString);
            this.u.setVisibility(0);
        }
    }

    public void setLeftTextVisibility(int i) {
        if (ViewUtils.a(this.u)) {
            View b2 = ViewUtils.b(this.u);
            this.u = b2;
            b2.setVisibility(i);
        }
    }

    public void setListener(SimpleCardViewEvents simpleCardViewEvents) {
        this.v = simpleCardViewEvents;
    }

    public void setProcessTitle(String str) {
        TextView textView = this.l;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setProgressContainerVisibility(int i) {
        if (this.f != null) {
            if (i == 8) {
                ViewUtils.a(this.k);
            }
            this.f.setVisibility(i);
        }
    }

    public void setProgressPercentText(String str) {
        TextView textView = this.i;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setProgressProgress(int i) {
        ProgressBar progressBar = this.k;
        if (progressBar != null) {
            progressBar.setProgress(i);
        }
    }

    public void setRightButtonStyle(int i, int i2, int i3, SpannableString spannableString) {
        ViewUtils.a(this.s, i, i2, 2131363672, i3, spannableString, this.n, true);
    }

    public void setRightButtonText(CharSequence charSequence) {
        ((TextView) this.s.findViewById(2131363672)).setText(charSequence);
    }

    public void setSuperSkinCardImage(String str) {
        this.g.setVisibility(0);
        this.g.findViewById(2131363583).setVisibility(8);
        ImageView imageView = (ImageView) this.g.findViewById(2131363013);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, str, getContext());
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
        imageView.setScaleX(-1.0f);
    }

    public void setTitle(String str) {
        TextView textView = this.p;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setUpperViewVisibility(int i) {
        View view = this.w;
        if (view != null) {
            view.setVisibility(i);
        }
    }
}
