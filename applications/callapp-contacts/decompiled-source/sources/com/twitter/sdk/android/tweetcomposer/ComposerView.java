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
import com.twitter.sdk.android.core.internal.i;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetcomposer.a;
import com.twitter.sdk.android.tweetcomposer.c;
import com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/ComposerView.class */
public class ComposerView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    ImageView f35217a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f35218b;

    /* renamed from: c  reason: collision with root package name */
    EditText f35219c;

    /* renamed from: d  reason: collision with root package name */
    TextView f35220d;
    Button e;
    ObservableScrollView f;
    View g;
    ColorDrawable h;
    ImageView i;
    a.AbstractC0562a j;
    Picasso k;

    public ComposerView(Context context) {
        this(context, null);
    }

    public ComposerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public ComposerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.k = Picasso.with(getContext());
        this.h = new ColorDrawable(context.getResources().getColor(c.a.tw__composer_light_gray));
        inflate(context, c.C0563c.tw__composer_view, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.j.b(a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(TextView textView, int i, KeyEvent keyEvent) {
        this.j.b(a());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i) {
        if (i > 0) {
            this.g.setVisibility(0);
        } else {
            this.g.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.j.a();
    }

    final String a() {
        return this.f35219c.getText().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        this.f35220d.setTextAppearance(getContext(), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(User user) {
        String a2 = i.a(user, i.a.REASONABLY_SMALL);
        Picasso picasso = this.k;
        if (picasso != null) {
            picasso.load(a2).placeholder(this.h).into(this.f35217a);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f35217a = (ImageView) findViewById(c.b.tw__author_avatar);
        this.f35218b = (ImageView) findViewById(c.b.tw__composer_close);
        this.f35219c = (EditText) findViewById(c.b.tw__edit_tweet);
        this.f35220d = (TextView) findViewById(c.b.tw__char_count);
        this.e = (Button) findViewById(c.b.tw__post_tweet);
        this.f = (ObservableScrollView) findViewById(c.b.tw__composer_scroll_view);
        this.g = findViewById(c.b.tw__composer_profile_divider);
        this.i = (ImageView) findViewById(c.b.tw__image_view);
        this.f35218b.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer._$$Lambda$ComposerView$gkj7xuse2GeFSXCqYUzBGFpdT_k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ComposerView.this.b(view);
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer._$$Lambda$ComposerView$c26GhXrdY5CydGaQX56PA9ywyQc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ComposerView.this.a(view);
            }
        });
        this.f35219c.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.twitter.sdk.android.tweetcomposer._$$Lambda$ComposerView$Oah7TXWHM9PFouPuqDYPTwJ29Y0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean a2;
                a2 = ComposerView.this.a(textView, i, keyEvent);
                return a2;
            }
        });
        this.f35219c.addTextChangedListener(new TextWatcher() { // from class: com.twitter.sdk.android.tweetcomposer.ComposerView.1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                ComposerView.this.j.a(ComposerView.this.a());
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        this.f.setScrollViewListener(new ObservableScrollView.a() { // from class: com.twitter.sdk.android.tweetcomposer._$$Lambda$ComposerView$YEEtaLsfrrI401nmUPbjFiCow4Q
            @Override // com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView.a
            public final void onScrollChanged(int i) {
                ComposerView.this.b(i);
            }
        });
    }
}
