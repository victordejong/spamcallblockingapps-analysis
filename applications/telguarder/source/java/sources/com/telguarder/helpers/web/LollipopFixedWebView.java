package com.telguarder.helpers.web;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.util.AttributeSet;
import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/web/LollipopFixedWebView.class */
public class LollipopFixedWebView extends WebView {
    public LollipopFixedWebView(Context context) {
        super(getFixedContext(context));
    }

    public LollipopFixedWebView(Context context, AttributeSet attributeSet) {
        super(getFixedContext(context), attributeSet);
    }

    public LollipopFixedWebView(Context context, AttributeSet attributeSet, int i) {
        super(getFixedContext(context), attributeSet, i);
    }

    public LollipopFixedWebView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(getFixedContext(context), attributeSet, i, i2);
    }

    private static Context getFixedContext(Context context) {
        Context context2 = context;
        if (Build.VERSION.SDK_INT >= 21) {
            context2 = context;
            if (Build.VERSION.SDK_INT < 23) {
                context2 = context.createConfigurationContext(new Configuration());
            }
        }
        return context2;
    }
}
