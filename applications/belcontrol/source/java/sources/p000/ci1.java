package p000;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
/* renamed from: ci1 */
/* loaded from: classes3-dex2jar.jar:ci1.class */
public class ci1 extends ViewGroup {

    /* renamed from: a */
    public final ProgressBar f2387a;

    /* renamed from: b */
    public int f2388b = Dips.asIntPixels(25.0f, getContext());

    public ci1(Context context) {
        super(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setVisibility(8);
        setBackgroundColor(-16777216);
        getBackground().setAlpha(180);
        ProgressBar progressBar = new ProgressBar(context);
        this.f2387a = progressBar;
        progressBar.setIndeterminate(true);
        addView(progressBar);
    }

    /* renamed from: a */
    public boolean m5331a(View view) {
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

    /* renamed from: b */
    public boolean m5330b() {
        Views.removeFromParent(this);
        setVisibility(8);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            int i5 = (i + i3) / 2;
            int i6 = (i2 + i4) / 2;
            ProgressBar progressBar = this.f2387a;
            int i7 = this.f2388b;
            progressBar.layout(i5 - i7, i6 - i7, i5 + i7, i6 + i7);
        }
    }
}
