package p081h.p203i.p204a.p294f.p299e;

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
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* renamed from: h.i.a.f.e.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/e/a.class */
public class DialogC9181a extends AppCompatDialog {

    /* renamed from: a */
    public BottomSheetBehavior<FrameLayout> f20912a;

    /* renamed from: b */
    public boolean f20913b;

    /* renamed from: c */
    public boolean f20914c;

    /* renamed from: d */
    public boolean f20915d;

    /* renamed from: e */
    public BottomSheetBehavior.AbstractC3618c f20916e;

    /* renamed from: h.i.a.f.e.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/e/a$a.class */
    public class View$OnClickListenerC9182a implements View.OnClickListener {
        public View$OnClickListenerC9182a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC9181a aVar = DialogC9181a.this;
            if (aVar.f20913b && aVar.isShowing() && DialogC9181a.this.m15933a()) {
                DialogC9181a.this.cancel();
            }
        }
    }

    /* renamed from: h.i.a.f.e.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/e/a$b.class */
    public class C9183b extends AccessibilityDelegateCompat {
        public C9183b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (DialogC9181a.this.f20913b) {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
                return;
            }
            accessibilityNodeInfoCompat.setDismissable(false);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i == 1048576) {
                DialogC9181a aVar = DialogC9181a.this;
                if (aVar.f20913b) {
                    aVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i, bundle);
        }
    }

    /* renamed from: h.i.a.f.e.a$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/e/a$c.class */
    public class View$OnTouchListenerC9184c implements View.OnTouchListener {
        public View$OnTouchListenerC9184c(DialogC9181a aVar) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* renamed from: h.i.a.f.e.a$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/e/a$d.class */
    public class C9185d extends BottomSheetBehavior.AbstractC3618c {
        public C9185d() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.AbstractC3618c
        /* renamed from: a */
        public void mo15931a(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.AbstractC3618c
        /* renamed from: a */
        public void mo15930a(@NonNull View view, int i) {
            if (i == 5) {
                DialogC9181a.this.cancel();
            }
        }
    }

    public DialogC9181a(@NonNull Context context) {
        this(context, 0);
    }

    public DialogC9181a(@NonNull Context context, @StyleRes int i) {
        super(context, getThemeResId(context, i));
        this.f20913b = true;
        this.f20914c = true;
        this.f20916e = new C9185d();
        supportRequestWindowFeature(1);
    }

    public static int getThemeResId(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            i2 = context.getTheme().resolveAttribute(R$attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R$style.Theme_Design_Light_BottomSheetDialog;
        }
        return i2;
    }

    /* renamed from: a */
    public final View m15932a(int i, View view, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R$layout.design_bottom_sheet_dialog, null);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) frameLayout.findViewById(R$id.coordinator);
        View view2 = view;
        if (i != 0) {
            view2 = view;
            if (view == null) {
                view2 = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
            }
        }
        FrameLayout frameLayout2 = (FrameLayout) coordinatorLayout.findViewById(R$id.design_bottom_sheet);
        this.f20912a = BottomSheetBehavior.m31435b(frameLayout2);
        this.f20912a.m31440a(this.f20916e);
        this.f20912a.m31433b(this.f20913b);
        if (layoutParams == null) {
            frameLayout2.addView(view2);
        } else {
            frameLayout2.addView(view2, layoutParams);
        }
        coordinatorLayout.findViewById(R$id.touch_outside).setOnClickListener(new View$OnClickListenerC9182a());
        ViewCompat.setAccessibilityDelegate(frameLayout2, new C9183b());
        frameLayout2.setOnTouchListener(new View$OnTouchListenerC9184c(this));
        return frameLayout;
    }

    /* renamed from: a */
    public boolean m15933a() {
        if (!this.f20915d) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{16843611});
            this.f20914c = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.f20915d = true;
        }
        return this.f20914c;
    }

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
    public void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f20912a;
        if (bottomSheetBehavior != null && bottomSheetBehavior.m31432c() == 5) {
            this.f20912a.m31431c(4);
        }
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f20913b != z) {
            this.f20913b = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f20912a;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.m31433b(z);
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f20913b) {
            this.f20913b = true;
        }
        this.f20914c = z;
        this.f20915d = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        super.setContentView(m15932a(i, null, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(m15932a(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(m15932a(0, view, layoutParams));
    }
}
