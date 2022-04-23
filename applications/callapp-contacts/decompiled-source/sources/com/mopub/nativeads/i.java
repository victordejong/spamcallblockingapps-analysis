package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/i.class */
final class i extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private final ProgressBar f34694a;

    /* renamed from: b  reason: collision with root package name */
    private int f34695b = Dips.asIntPixels(25.0f, getContext());

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context) {
        super(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setVisibility(8);
        setBackgroundColor(-16777216);
        getBackground().setAlpha(180);
        ProgressBar progressBar = new ProgressBar(context);
        this.f34694a = progressBar;
        progressBar.setIndeterminate(true);
        addView(progressBar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        Views.removeFromParent(this);
        setVisibility(8);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(View view) {
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
            ProgressBar progressBar = this.f34694a;
            int i7 = this.f34695b;
            progressBar.layout(i5 - i7, i6 - i7, i5 + i7, i6 + i7);
        }
    }
}
