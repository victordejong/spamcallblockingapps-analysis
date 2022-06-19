package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
/* renamed from: com.mopub.nativeads.i */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/i.class */
final class C16987i extends ViewGroup {

    /* renamed from: a */
    private final ProgressBar f60190a;

    /* renamed from: b */
    private int f60191b = Dips.asIntPixels(25.0f, getContext());

    public C16987i(Context context) {
        super(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setVisibility(8);
        setBackgroundColor(-16777216);
        getBackground().setAlpha(180);
        ProgressBar progressBar = new ProgressBar(context);
        this.f60190a = progressBar;
        progressBar.setIndeterminate(true);
        addView(progressBar);
    }

    /* renamed from: a */
    public final boolean m6097a() {
        Views.removeFromParent(this);
        setVisibility(8);
        return true;
    }

    /* renamed from: a */
    public final boolean m6096a(View view) {
        Preconditions.checkNotNull(view);
        View rootView = view.getRootView();
        if (rootView == null || !(rootView instanceof ViewGroup)) {
            return false;
        }
        setVisibility(0);
        setMeasuredDimension(rootView.getWidth(), rootView.getHeight());
        ((ViewGroup) rootView).addView(this);
        forceLayout();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            int i5 = (i + i3) / 2;
            int i6 = (i2 + i4) / 2;
            ProgressBar progressBar = this.f60190a;
            int i7 = this.f60191b;
            progressBar.layout(i5 - i7, i6 - i7, i5 + i7, i6 + i7);
        }
    }
}
