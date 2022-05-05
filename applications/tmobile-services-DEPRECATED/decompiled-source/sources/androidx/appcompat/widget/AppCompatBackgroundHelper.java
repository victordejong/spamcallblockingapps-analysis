package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0042R;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatBackgroundHelper.class */
class AppCompatBackgroundHelper {
    @NonNull

    /* renamed from: a */
    private final View f918a;

    /* renamed from: d */
    private TintInfo f921d;

    /* renamed from: e */
    private TintInfo f922e;

    /* renamed from: f */
    private TintInfo f923f;

    /* renamed from: c */
    private int f920c = -1;

    /* renamed from: b */
    private final AppCompatDrawableManager f919b = AppCompatDrawableManager.m21637b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatBackgroundHelper(@NonNull View view) {
        this.f918a = view;
    }

    /* renamed from: a */
    private boolean m21657a(@NonNull Drawable drawable) {
        if (this.f923f == null) {
            this.f923f = new TintInfo();
        }
        TintInfo tintInfo = this.f923f;
        tintInfo.m21266a();
        ColorStateList r = ViewCompat.m19176r(this.f918a);
        if (r != null) {
            tintInfo.f1354d = true;
            tintInfo.f1351a = r;
        }
        PorterDuff.Mode s = ViewCompat.m19174s(this.f918a);
        if (s != null) {
            tintInfo.f1353c = true;
            tintInfo.f1352b = s;
        }
        if (!tintInfo.f1354d && !tintInfo.f1353c) {
            return false;
        }
        AppCompatDrawableManager.m21630i(drawable, tintInfo, this.f918a.getDrawableState());
        return true;
    }

    /* renamed from: k */
    private boolean m21647k() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f921d == null) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m21656b() {
        Drawable background = this.f918a.getBackground();
        if (background == null) {
            return;
        }
        if (!m21647k() || !m21657a(background)) {
            TintInfo tintInfo = this.f922e;
            if (tintInfo != null) {
                AppCompatDrawableManager.m21630i(background, tintInfo, this.f918a.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.f921d;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.m21630i(background, tintInfo2, this.f918a.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public ColorStateList m21655c() {
        TintInfo tintInfo = this.f922e;
        return tintInfo != null ? tintInfo.f1351a : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public PorterDuff.Mode m21654d() {
        TintInfo tintInfo = this.f922e;
        return tintInfo != null ? tintInfo.f1352b : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m21653e(@Nullable AttributeSet attributeSet, int i) {
        TintTypedArray v = TintTypedArray.m21244v(this.f918a.getContext(), attributeSet, C0042R.styleable.ViewBackgroundHelper, i, 0);
        View view = this.f918a;
        ViewCompat.m19187l0(view, view.getContext(), C0042R.styleable.ViewBackgroundHelper, attributeSet, v.m21248r(), i, 0);
        try {
            if (v.m21247s(C0042R.styleable.ViewBackgroundHelper_android_background)) {
                this.f920c = v.m21252n(C0042R.styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList f = this.f919b.m21633f(this.f918a.getContext(), this.f920c);
                if (f != null) {
                    m21650h(f);
                }
            }
            if (v.m21247s(C0042R.styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.m19175r0(this.f918a, v.m21263c(C0042R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (v.m21247s(C0042R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.m19173s0(this.f918a, DrawableUtils.m21501e(v.m21255k(C0042R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            v.m21243w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m21652f(Drawable drawable) {
        this.f920c = -1;
        m21650h(null);
        m21656b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m21651g(int i) {
        this.f920c = i;
        AppCompatDrawableManager appCompatDrawableManager = this.f919b;
        m21650h(appCompatDrawableManager != null ? appCompatDrawableManager.m21633f(this.f918a.getContext(), i) : null);
        m21656b();
    }

    /* renamed from: h */
    void m21650h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f921d == null) {
                this.f921d = new TintInfo();
            }
            TintInfo tintInfo = this.f921d;
            tintInfo.f1351a = colorStateList;
            tintInfo.f1354d = true;
        } else {
            this.f921d = null;
        }
        m21656b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m21649i(ColorStateList colorStateList) {
        if (this.f922e == null) {
            this.f922e = new TintInfo();
        }
        TintInfo tintInfo = this.f922e;
        tintInfo.f1351a = colorStateList;
        tintInfo.f1354d = true;
        m21656b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m21648j(PorterDuff.Mode mode) {
        if (this.f922e == null) {
            this.f922e = new TintInfo();
        }
        TintInfo tintInfo = this.f922e;
        tintInfo.f1352b = mode;
        tintInfo.f1353c = true;
        m21656b();
    }
}
