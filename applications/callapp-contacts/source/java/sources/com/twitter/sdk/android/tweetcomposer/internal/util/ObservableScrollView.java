package com.twitter.sdk.android.tweetcomposer.internal.util;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView.class */
public class ObservableScrollView extends ScrollView {

    /* renamed from: a */
    AbstractC17311a f61117a;

    /* renamed from: com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a.class */
    public interface AbstractC17311a {
        void onScrollChanged(int i);
    }

    public ObservableScrollView(Context context) {
        super(context);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        AbstractC17311a abstractC17311a = this.f61117a;
        if (abstractC17311a != null) {
            abstractC17311a.onScrollChanged(i2);
        }
    }

    public void setScrollViewListener(AbstractC17311a abstractC17311a) {
        this.f61117a = abstractC17311a;
    }
}
