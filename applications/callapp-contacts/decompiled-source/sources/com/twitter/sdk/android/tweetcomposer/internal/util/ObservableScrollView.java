package com.twitter.sdk.android.tweetcomposer.internal.util;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView.class */
public class ObservableScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    a f35235a;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a.class */
    public interface a {
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
        a aVar = this.f35235a;
        if (aVar != null) {
            aVar.onScrollChanged(i2);
        }
    }

    public void setScrollViewListener(a aVar) {
        this.f35235a = aVar;
    }
}
