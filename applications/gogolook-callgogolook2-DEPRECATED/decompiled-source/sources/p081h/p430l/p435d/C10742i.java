package p081h.p430l.p435d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
/* renamed from: h.l.d.i */
/* loaded from: classes2-dex2jar.jar:h/l/d/i.class */
public class C10742i extends ViewGroup {
    @NonNull

    /* renamed from: a */
    public final ProgressBar f24494a;

    /* renamed from: b */
    public int f24495b = Dips.asIntPixels(25.0f, getContext());

    public C10742i(@NonNull Context context) {
        super(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setVisibility(8);
        setBackgroundColor(-16777216);
        getBackground().setAlpha(180);
        this.f24494a = new ProgressBar(context);
        this.f24494a.setIndeterminate(true);
        addView(this.f24494a);
    }

    /* renamed from: a */
    public boolean m10750a() {
        Views.removeFromParent(this);
        setVisibility(8);
        return true;
    }

    /* renamed from: a */
    public boolean m10749a(@NonNull View view) {
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            int i5 = (i + i3) / 2;
            int i6 = (i2 + i4) / 2;
            ProgressBar progressBar = this.f24494a;
            int i7 = this.f24495b;
            progressBar.layout(i5 - i7, i6 - i7, i5 + i7, i6 + i7);
        }
    }
}
