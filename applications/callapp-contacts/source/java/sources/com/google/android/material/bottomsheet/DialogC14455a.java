package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.DialogC0200f;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.material.C14376a;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* renamed from: com.google.android.material.bottomsheet.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/a.class */
public final class DialogC14455a extends DialogC0200f {

    /* renamed from: a */
    boolean f52700a;

    /* renamed from: b */
    boolean f52701b;

    /* renamed from: c */
    boolean f52702c;

    /* renamed from: d */
    boolean f52703d;

    /* renamed from: e */
    private BottomSheetBehavior<FrameLayout> f52704e;

    /* renamed from: f */
    private FrameLayout f52705f;

    /* renamed from: g */
    private BottomSheetBehavior.AbstractC14453a f52706g;

    public DialogC14455a(Context context) {
        this(context, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogC14455a(android.content.Context r6, int r7) {
        /*
            r5 = this;
            r0 = r7
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L2c
            android.util.TypedValue r0 = new android.util.TypedValue
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r6
            android.content.res.Resources$Theme r0 = r0.getTheme()
            int r1 = com.google.android.material.C14376a.C14378b.bottomSheetDialogTheme
            r2 = r9
            r3 = 1
            boolean r0 = r0.resolveAttribute(r1, r2, r3)
            if (r0 == 0) goto L28
            r0 = r9
            int r0 = r0.resourceId
            r8 = r0
            goto L2c
        L28:
            int r0 = com.google.android.material.C14376a.C14387k.Theme_Design_Light_BottomSheetDialog
            r8 = r0
        L2c:
            r0 = r5
            r1 = r6
            r2 = r8
            r0.<init>(r1, r2)
            r0 = r5
            r1 = 1
            r0.f52701b = r1
            r0 = r5
            r1 = 1
            r0.f52702c = r1
            r0 = r5
            com.google.android.material.bottomsheet.a$4 r1 = new com.google.android.material.bottomsheet.a$4
            r2 = r1
            r3 = r5
            r2.<init>()
            r0.f52706g = r1
            r0 = r5
            boolean r0 = r0.m46269a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.DialogC14455a.<init>(android.content.Context, int):void");
    }

    protected DialogC14455a(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.f52701b = true;
        this.f52702c = true;
        this.f52706g = new BottomSheetBehavior.AbstractC14453a() { // from class: com.google.android.material.bottomsheet.a.4
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.AbstractC14453a
            /* renamed from: a */
            public final void mo11076a(int i) {
                if (i == 5) {
                    DialogC14455a.this.cancel();
                }
            }
        };
        m46269a();
        this.f52701b = z;
    }

    /* renamed from: a */
    private View m11086a(int i, View view, ViewGroup.LayoutParams layoutParams) {
        m11083d();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f52705f.findViewById(C14376a.C14382f.coordinator);
        View view2 = view;
        if (i != 0) {
            view2 = view;
            if (view == null) {
                view2 = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
            }
        }
        FrameLayout frameLayout = (FrameLayout) this.f52705f.findViewById(C14376a.C14382f.design_bottom_sheet);
        frameLayout.removeAllViews();
        if (layoutParams == null) {
            frameLayout.addView(view2);
        } else {
            frameLayout.addView(view2, layoutParams);
        }
        coordinatorLayout.findViewById(C14376a.C14382f.touch_outside).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.bottomsheet.a.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                if (!DialogC14455a.this.f52701b || !DialogC14455a.this.isShowing()) {
                    return;
                }
                DialogC14455a dialogC14455a = DialogC14455a.this;
                if (!dialogC14455a.f52703d) {
                    TypedArray obtainStyledAttributes = dialogC14455a.getContext().obtainStyledAttributes(new int[]{16843611});
                    dialogC14455a.f52702c = obtainStyledAttributes.getBoolean(0, true);
                    obtainStyledAttributes.recycle();
                    dialogC14455a.f52703d = true;
                }
                if (!dialogC14455a.f52702c) {
                    return;
                }
                DialogC14455a.this.cancel();
            }
        });
        C0926v.m44123a(frameLayout, new C0865a() { // from class: com.google.android.material.bottomsheet.a.2
            @Override // androidx.core.view.C0865a
            /* renamed from: a */
            public final void mo9886a(View view3, C0869c c0869c) {
                super.mo9886a(view3, c0869c);
                if (!DialogC14455a.this.f52701b) {
                    c0869c.m44239k(false);
                    return;
                }
                c0869c.m44284a(1048576);
                c0869c.m44239k(true);
            }

            @Override // androidx.core.view.C0865a
            /* renamed from: a */
            public final boolean mo10179a(View view3, int i2, Bundle bundle) {
                if (i2 != 1048576 || !DialogC14455a.this.f52701b) {
                    return super.mo10179a(view3, i2, bundle);
                }
                DialogC14455a.this.cancel();
                return true;
            }
        });
        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.bottomsheet.a.3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view3, MotionEvent motionEvent) {
                return true;
            }
        });
        return this.f52705f;
    }

    /* renamed from: d */
    private FrameLayout m11083d() {
        if (this.f52705f == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), C14376a.C14384h.design_bottom_sheet_dialog, null);
            this.f52705f = frameLayout;
            BottomSheetBehavior<FrameLayout> m11135a = BottomSheetBehavior.m11135a((FrameLayout) frameLayout.findViewById(C14376a.C14382f.design_bottom_sheet));
            this.f52704e = m11135a;
            m11135a.m11124a(this.f52706g);
            this.f52704e.m11121a(this.f52701b);
        }
        return this.f52705f;
    }

    /* renamed from: b */
    public final BottomSheetBehavior<FrameLayout> m11085b() {
        if (this.f52704e == null) {
            m11083d();
        }
        return this.f52704e;
    }

    /* renamed from: c */
    public final void m11084c() {
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f52704e;
        bottomSheetBehavior.f52675n.remove(this.f52706g);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        BottomSheetBehavior<FrameLayout> m11085b = m11085b();
        if (!this.f52700a || m11085b.f52669h == 5) {
            super.cancel();
        } else {
            m11085b.m11112c(5);
        }
    }

    @Override // androidx.appcompat.app.DialogC0200f, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                window.clearFlags(67108864);
                window.addFlags(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog
    protected final void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f52704e;
        if (bottomSheetBehavior == null || bottomSheetBehavior.f52669h != 5) {
            return;
        }
        this.f52704e.m11112c(4);
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f52701b != z) {
            this.f52701b = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f52704e;
            if (bottomSheetBehavior == null) {
                return;
            }
            bottomSheetBehavior.m11121a(z);
        }
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f52701b) {
            this.f52701b = true;
        }
        this.f52702c = z;
        this.f52703d = true;
    }

    @Override // androidx.appcompat.app.DialogC0200f, android.app.Dialog
    public final void setContentView(int i) {
        super.setContentView(m11086a(i, null, null));
    }

    @Override // androidx.appcompat.app.DialogC0200f, android.app.Dialog
    public final void setContentView(View view) {
        super.setContentView(m11086a(0, view, null));
    }

    @Override // androidx.appcompat.app.DialogC0200f, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(m11086a(0, view, layoutParams));
    }
}
