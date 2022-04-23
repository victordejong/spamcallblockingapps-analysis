package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1027R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/BottomSheetDialog.class */
public class BottomSheetDialog extends AppCompatDialog {

    /* renamed from: h */
    private BottomSheetBehavior<FrameLayout> f10263h;

    /* renamed from: i */
    private FrameLayout f10264i;

    /* renamed from: j */
    boolean f10265j;

    /* renamed from: m */
    private boolean f10268m;

    /* renamed from: k */
    boolean f10266k = true;

    /* renamed from: l */
    private boolean f10267l = true;
    @NonNull

    /* renamed from: n */
    private BottomSheetBehavior.BottomSheetCallback f10269n = new BottomSheetBehavior.BottomSheetCallback() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.4
        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        /* renamed from: a */
        public void mo10363a(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        /* renamed from: b */
        public void mo10362b(@NonNull View view, int i) {
            if (i == 5) {
                BottomSheetDialog.this.cancel();
            }
        }
    };

    public BottomSheetDialog(@NonNull Context context, @StyleRes int i) {
        super(context, m10374b(context, i));
        m22155d(1);
    }

    /* renamed from: b */
    private static int m10374b(@NonNull Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            i2 = context.getTheme().resolveAttribute(C1027R.attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : C1027R.style.Theme_Design_Light_BottomSheetDialog;
        }
        return i2;
    }

    /* renamed from: e */
    private FrameLayout m10373e() {
        if (this.f10264i == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), C1027R.layout.design_bottom_sheet_dialog, null);
            this.f10264i = frameLayout;
            BottomSheetBehavior<FrameLayout> V = BottomSheetBehavior.m10424V((FrameLayout) frameLayout.findViewById(C1027R.C1030id.design_bottom_sheet));
            this.f10263h = V;
            V.m10433M(this.f10269n);
            this.f10263h.m10409j0(this.f10266k);
        }
        return this.f10264i;
    }

    /* renamed from: j */
    private View m10368j(int i, @Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        m10373e();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f10264i.findViewById(C1027R.C1030id.coordinator);
        View view2 = view;
        if (i != 0) {
            view2 = view;
            if (view == null) {
                view2 = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
            }
        }
        FrameLayout frameLayout = (FrameLayout) this.f10264i.findViewById(C1027R.C1030id.design_bottom_sheet);
        frameLayout.removeAllViews();
        if (layoutParams == null) {
            frameLayout.addView(view2);
        } else {
            frameLayout.addView(view2, layoutParams);
        }
        coordinatorLayout.findViewById(C1027R.C1030id.touch_outside).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view3) {
                BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                if (bottomSheetDialog.f10266k && bottomSheetDialog.isShowing() && BottomSheetDialog.this.m10369i()) {
                    BottomSheetDialog.this.cancel();
                }
            }
        });
        ViewCompat.m19183n0(frameLayout, new AccessibilityDelegateCompat() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.2
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view3, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view3, accessibilityNodeInfoCompat);
                if (BottomSheetDialog.this.f10266k) {
                    accessibilityNodeInfoCompat.m19031a(1048576);
                    accessibilityNodeInfoCompat.m19016h0(true);
                    return;
                }
                accessibilityNodeInfoCompat.m19016h0(false);
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public boolean performAccessibilityAction(View view3, int i2, Bundle bundle) {
                if (i2 == 1048576) {
                    BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                    if (bottomSheetDialog.f10266k) {
                        bottomSheetDialog.cancel();
                        return true;
                    }
                }
                return super.performAccessibilityAction(view3, i2, bundle);
            }
        });
        frameLayout.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view3, MotionEvent motionEvent) {
                return true;
            }
        });
        return this.f10264i;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> f = m10372f();
        if (!this.f10265j || f.m10422X() == 5) {
            super.cancel();
        } else {
            f.m10403o0(5);
        }
    }

    @NonNull
    /* renamed from: f */
    public BottomSheetBehavior<FrameLayout> m10372f() {
        if (this.f10263h == null) {
            m10373e();
        }
        return this.f10263h;
    }

    /* renamed from: g */
    public boolean m10371g() {
        return this.f10265j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m10370h() {
        this.f10263h.m10418b0(this.f10269n);
    }

    /* renamed from: i */
    boolean m10369i() {
        if (!this.f10268m) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{16843611});
            this.f10267l = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.f10268m = true;
        }
        return this.f10267l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f10263h;
        if (bottomSheetBehavior != null && bottomSheetBehavior.m10422X() == 5) {
            this.f10263h.m10403o0(4);
        }
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f10266k != z) {
            this.f10266k = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f10263h;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.m10409j0(z);
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f10266k) {
            this.f10266k = true;
        }
        this.f10267l = z;
        this.f10268m = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        super.setContentView(m10368j(i, null, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(m10368j(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(m10368j(0, view, layoutParams));
    }
}
