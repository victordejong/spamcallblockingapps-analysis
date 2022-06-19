package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.internal.C17257i;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetcomposer.C17300a;
import com.twitter.sdk.android.tweetcomposer.C17306c;
import com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/ComposerView.class */
public class ComposerView extends LinearLayout {

    /* renamed from: a */
    ImageView f61091a;

    /* renamed from: b */
    ImageView f61092b;

    /* renamed from: c */
    EditText f61093c;

    /* renamed from: d */
    TextView f61094d;

    /* renamed from: e */
    Button f61095e;

    /* renamed from: f */
    ObservableScrollView f61096f;

    /* renamed from: g */
    View f61097g;

    /* renamed from: h */
    ColorDrawable f61098h;

    /* renamed from: i */
    ImageView f61099i;

    /* renamed from: j */
    C17300a.AbstractC17302a f61100j;

    /* renamed from: k */
    Picasso f61101k;

    public ComposerView(Context context) {
        this(context, null);
    }

    public ComposerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5612a(context);
    }

    public ComposerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5612a(context);
    }

    /* renamed from: a */
    private void m5612a(Context context) {
        this.f61101k = Picasso.with(getContext());
        this.f61098h = new ColorDrawable(context.getResources().getColor(C17306c.C17307a.tw__composer_light_gray));
        inflate(context, C17306c.C17309c.tw__composer_view, this);
    }

    /* renamed from: a */
    public /* synthetic */ void m5611a(View view) {
        this.f61100j.mo5597b(m5614a());
    }

    /* renamed from: a */
    public /* synthetic */ boolean m5610a(TextView textView, int i, KeyEvent keyEvent) {
        this.f61100j.mo5597b(m5614a());
        return true;
    }

    /* renamed from: b */
    public /* synthetic */ void m5608b(int i) {
        if (i > 0) {
            this.f61097g.setVisibility(0);
        } else {
            this.f61097g.setVisibility(4);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m5607b(View view) {
        this.f61100j.mo5599a();
    }

    /* renamed from: a */
    final String m5614a() {
        return this.f61093c.getText().toString();
    }

    /* renamed from: a */
    public final void m5613a(int i) {
        this.f61094d.setTextAppearance(getContext(), i);
    }

    /* renamed from: a */
    public final void m5609a(User user) {
        String m5658a = C17257i.m5658a(user, C17257i.EnumC17259a.REASONABLY_SMALL);
        Picasso picasso = this.f61101k;
        if (picasso != null) {
            picasso.load(m5658a).placeholder(this.f61098h).into(this.f61091a);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f61091a = (ImageView) findViewById(C17306c.C17308b.tw__author_avatar);
        this.f61092b = (ImageView) findViewById(C17306c.C17308b.tw__composer_close);
        this.f61093c = (EditText) findViewById(C17306c.C17308b.tw__edit_tweet);
        this.f61094d = (TextView) findViewById(C17306c.C17308b.tw__char_count);
        this.f61095e = (Button) findViewById(C17306c.C17308b.tw__post_tweet);
        this.f61096f = (ObservableScrollView) findViewById(C17306c.C17308b.tw__composer_scroll_view);
        this.f61097g = findViewById(C17306c.C17308b.tw__composer_profile_divider);
        this.f61099i = (ImageView) findViewById(C17306c.C17308b.tw__image_view);
        this.f61092b.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer._$$Lambda$ComposerView$gkj7xuse2GeFSXCqYUzBGFpdT_k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ComposerView.this.m5607b(view);
            }
        });
        this.f61095e.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer._$$Lambda$ComposerView$c26GhXrdY5CydGaQX56PA9ywyQc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ComposerView.this.m5611a(view);
            }
        });
        this.f61093c.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.twitter.sdk.android.tweetcomposer._$$Lambda$ComposerView$Oah7TXWHM9PFouPuqDYPTwJ29Y0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean m5610a;
                m5610a = ComposerView.this.m5610a(textView, i, keyEvent);
                return m5610a;
            }
        });
        this.f61093c.addTextChangedListener(new TextWatcher() { // from class: com.twitter.sdk.android.tweetcomposer.ComposerView.1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                ComposerView.this.f61100j.mo5598a(ComposerView.this.m5614a());
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        this.f61096f.setScrollViewListener(new ObservableScrollView.AbstractC17311a() { // from class: com.twitter.sdk.android.tweetcomposer._$$Lambda$ComposerView$YEEtaLsfrrI401nmUPbjFiCow4Q
            @Override // com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView.AbstractC17311a
            public final void onScrollChanged(int i) {
                ComposerView.this.m5608b(i);
            }
        });
    }
}
