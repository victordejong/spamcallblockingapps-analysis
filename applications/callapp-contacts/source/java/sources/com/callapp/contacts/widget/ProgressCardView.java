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
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.ColorUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ProgressCardView.class */
public class ProgressCardView extends CardView {

    /* renamed from: e */
    public static final int f28817e = ThemeUtils.getColor(2131100108);

    /* renamed from: f */
    public View f28818f;

    /* renamed from: g */
    public View f28819g;

    /* renamed from: h */
    public TextView f28820h;

    /* renamed from: i */
    public TextView f28821i;

    /* renamed from: j */
    public ImageView f28822j;

    /* renamed from: k */
    public ProgressBar f28823k;

    /* renamed from: l */
    public TextView f28824l;

    /* renamed from: m */
    public int f28825m;

    /* renamed from: n */
    public DefaultInterfaceImplUtils.ClickListener f28826n;

    /* renamed from: o */
    private ImageView f28827o;

    /* renamed from: p */
    private TextView f28828p;

    /* renamed from: q */
    private TextView f28829q;

    /* renamed from: r */
    private ViewGroup f28830r;

    /* renamed from: s */
    private ViewGroup f28831s;

    /* renamed from: t */
    private ViewGroup f28832t;

    /* renamed from: u */
    private View f28833u;

    /* renamed from: v */
    private SimpleCardViewEvents f28834v;

    /* renamed from: w */
    private View f28835w;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents.class */
    public interface SimpleCardViewEvents {
        /* renamed from: a */
        void mo26667a();

        /* renamed from: b */
        void mo26666b();

        /* renamed from: c */
        void mo26665c();
    }

    public ProgressCardView(Context context) {
        this(context, null);
    }

    public ProgressCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProgressCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28825m = 1;
        this.f28826n = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.widget.ProgressCardView.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                if (ProgressCardView.this.f28834v != null) {
                    switch (view.getId()) {
                        case 2131362178:
                        case 2131363176:
                            ProgressCardView.this.f28834v.mo26667a();
                            return;
                        case 2131362179:
                        case 2131363672:
                            ProgressCardView.this.f28834v.mo26666b();
                            return;
                        case 2131363998:
                            ProgressCardView.this.f28834v.mo26665c();
                            return;
                        default:
                            return;
                    }
                }
            }
        };
        int i2 = 2131558703;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.ProgressCardView, i, 0);
            i2 = obtainStyledAttributes.getResourceId(0, 2131558703);
            obtainStyledAttributes.recycle();
        }
        LayoutInflater.from(context).inflate(i2, (ViewGroup) this, true);
        int color = ThemeUtils.getColor(2131100140);
        this.f28827o = (ImageView) findViewById(2131363000);
        this.f28835w = findViewById(2131364488);
        TextView textView = (TextView) findViewById(2131364130);
        this.f28828p = textView;
        textView.setTextColor(color);
        TextView textView2 = (TextView) findViewById(2131362553);
        this.f28829q = textView2;
        textView2.setTextColor(color);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131362186);
        this.f28830r = viewGroup;
        if (viewGroup != null) {
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(2131362178);
            this.f28832t = viewGroup2;
            viewGroup2.setOnClickListener(this.f28826n);
            ViewGroup viewGroup3 = (ViewGroup) this.f28830r.findViewById(2131362179);
            this.f28831s = viewGroup3;
            viewGroup3.setOnClickListener(this.f28826n);
        }
        this.f28818f = findViewById(2131363591);
        this.f28833u = findViewById(2131363193);
        this.f28819g = findViewById(2131364036);
        this.f28828p.setTextColor(ThemeUtils.getColor(2131100140));
        this.f28829q.setTextColor(f28817e);
    }

    /* renamed from: a */
    public final void m26671a() {
        ViewGroup viewGroup = this.f28831s;
        if (viewGroup != null) {
            viewGroup.performClick();
        }
    }

    /* renamed from: a */
    public final void m26669a(boolean z) {
        ViewGroup viewGroup = this.f28832t;
        if (viewGroup != null) {
            viewGroup.setVisibility(z ? 0 : 4);
        }
    }

    /* renamed from: b */
    public final void m26668b(boolean z) {
        ViewGroup viewGroup = this.f28831s;
        if (viewGroup != null) {
            viewGroup.setVisibility(z ? 0 : 4);
        }
    }

    public TextView getDescription() {
        return this.f28829q;
    }

    public Drawable getLeftButtonContainerBackground() {
        ViewGroup viewGroup = this.f28832t;
        if (viewGroup != null) {
            return viewGroup.getBackground();
        }
        return null;
    }

    public View getLeftTextView() {
        if (ViewUtils.m27329a(this.f28833u)) {
            return this.f28833u;
        }
        return null;
    }

    public Drawable getRightButtonContainerBackground() {
        ViewGroup viewGroup = this.f28831s;
        if (viewGroup != null) {
            return viewGroup.getBackground();
        }
        return null;
    }

    public TextView getRightButtonText() {
        return (TextView) this.f28831s.findViewById(2131363672);
    }

    public TextView getTitle() {
        return this.f28828p;
    }

    public View getUpperView() {
        return this.f28835w;
    }

    public void setButtonsContainerVisibility(int i) {
        ViewGroup viewGroup = this.f28830r;
        if (viewGroup != null) {
            viewGroup.setVisibility(i);
        }
    }

    public void setDescription(String str) {
        if (this.f28829q != null) {
            this.f28829q.setText(HtmlUtils.m27537b(StringUtils.m26041b(str, "\\*(.*?)\\*", "<font color=#" + ColorUtils.getRgbRepresentation(ThemeUtils.getColor(2131099784)) + "><b>$1</b></font>")));
        }
    }

    public void setImageBackgroundColor(int i) {
        ImageView imageView = this.f28827o;
        if (imageView != null) {
            imageView.setBackgroundColor(i);
        }
    }

    public void setImageBackgroundUrl(String str) {
        ImageView imageView = this.f28827o;
        if (imageView != null) {
            GlideUtils.GlideRequestBuilder m27027a = new GlideUtils.GlideRequestBuilder(imageView, str, getContext()).m27027a();
            m27027a.f28251q = true;
            m27027a.m27013d();
        }
    }

    public void setIsRightButtonClickable(boolean z) {
        ViewGroup viewGroup = this.f28831s;
        if (viewGroup != null) {
            viewGroup.findViewById(2131363672).setEnabled(z);
        }
    }

    public void setLeftButtonStyle(int i, int i2, int i3, String str) {
        ViewUtils.m27322a(this.f28832t, i, i2, i3, str, this.f28826n);
    }

    public void setLeftButtonVisibility(int i) {
        ViewGroup viewGroup = this.f28832t;
        if (viewGroup != null) {
            viewGroup.setVisibility(i);
        }
    }

    public void setLeftText(SpannableString spannableString) {
        View m27302b = ViewUtils.m27302b(this.f28833u);
        this.f28833u = m27302b;
        if (m27302b != null) {
            ((TextView) m27302b).setText(spannableString);
            this.f28833u.setVisibility(0);
        }
    }

    public void setLeftTextVisibility(int i) {
        if (ViewUtils.m27329a(this.f28833u)) {
            View m27302b = ViewUtils.m27302b(this.f28833u);
            this.f28833u = m27302b;
            m27302b.setVisibility(i);
        }
    }

    public void setListener(SimpleCardViewEvents simpleCardViewEvents) {
        this.f28834v = simpleCardViewEvents;
    }

    public void setProcessTitle(String str) {
        TextView textView = this.f28824l;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setProgressContainerVisibility(int i) {
        if (this.f28818f != null) {
            if (i == 8) {
                ViewUtils.m27329a(this.f28823k);
            }
            this.f28818f.setVisibility(i);
        }
    }

    public void setProgressPercentText(String str) {
        TextView textView = this.f28821i;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setProgressProgress(int i) {
        ProgressBar progressBar = this.f28823k;
        if (progressBar != null) {
            progressBar.setProgress(i);
        }
    }

    public void setRightButtonStyle(int i, int i2, int i3, SpannableString spannableString) {
        ViewUtils.m27323a(this.f28831s, i, i2, 2131363672, i3, spannableString, this.f28826n, true);
    }

    public void setRightButtonText(CharSequence charSequence) {
        ((TextView) this.f28831s.findViewById(2131363672)).setText(charSequence);
    }

    public void setSuperSkinCardImage(String str) {
        this.f28819g.setVisibility(0);
        this.f28819g.findViewById(2131363583).setVisibility(8);
        ImageView imageView = (ImageView) this.f28819g.findViewById(2131363013);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, str, getContext());
        glideRequestBuilder.f28251q = true;
        glideRequestBuilder.m27013d();
        imageView.setScaleX(-1.0f);
    }

    public void setTitle(String str) {
        TextView textView = this.f28828p;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setUpperViewVisibility(int i) {
        View view = this.f28835w;
        if (view != null) {
            view.setVisibility(i);
        }
    }
}
