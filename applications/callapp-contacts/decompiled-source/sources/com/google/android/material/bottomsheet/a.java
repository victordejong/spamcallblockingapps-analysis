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
import androidx.appcompat.app.f;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a.c;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.material.a;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomsheet/a.class */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    boolean f30327a;

    /* renamed from: b  reason: collision with root package name */
    boolean f30328b;

    /* renamed from: c  reason: collision with root package name */
    boolean f30329c;

    /* renamed from: d  reason: collision with root package name */
    boolean f30330d;
    private BottomSheetBehavior<FrameLayout> e;
    private FrameLayout f;
    private BottomSheetBehavior.a g;

    public a(Context context) {
        this(context, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(android.content.Context r6, int r7) {
        /*
            r5 = this;
            r0 = r7
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L_0x002c
            android.util.TypedValue r0 = new android.util.TypedValue
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r6
            android.content.res.Resources$Theme r0 = r0.getTheme()
            int r1 = com.google.android.material.a.b.bottomSheetDialogTheme
            r2 = r9
            r3 = 1
            boolean r0 = r0.resolveAttribute(r1, r2, r3)
            if (r0 == 0) goto L_0x0028
            r0 = r9
            int r0 = r0.resourceId
            r8 = r0
            goto L_0x002c
        L_0x0028:
            int r0 = com.google.android.material.a.k.Theme_Design_Light_BottomSheetDialog
            r8 = r0
        L_0x002c:
            r0 = r5
            r1 = r6
            r2 = r8
            r0.<init>(r1, r2)
            r0 = r5
            r1 = 1
            r0.f30328b = r1
            r0 = r5
            r1 = 1
            r0.f30329c = r1
            r0 = r5
            com.google.android.material.bottomsheet.a$4 r1 = new com.google.android.material.bottomsheet.a$4
            r2 = r1
            r3 = r5
            r2.<init>()
            r0.g = r1
            r0 = r5
            boolean r0 = r0.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.a.<init>(android.content.Context, int):void");
    }

    protected a(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.f30328b = true;
        this.f30329c = true;
        this.g = new BottomSheetBehavior.a() { // from class: com.google.android.material.bottomsheet.a.4
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
            public final void a(int i) {
                if (i == 5) {
                    a.this.cancel();
                }
            }
        };
        a();
        this.f30328b = z;
    }

    private View a(int i, View view, ViewGroup.LayoutParams layoutParams) {
        d();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f.findViewById(a.f.coordinator);
        View view2 = view;
        if (i != 0) {
            view2 = view;
            if (view == null) {
                view2 = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
            }
        }
        FrameLayout frameLayout = (FrameLayout) this.f.findViewById(a.f.design_bottom_sheet);
        frameLayout.removeAllViews();
        if (layoutParams == null) {
            frameLayout.addView(view2);
        } else {
            frameLayout.addView(view2, layoutParams);
        }
        coordinatorLayout.findViewById(a.f.touch_outside).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.bottomsheet.a.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                if (a.this.f30328b && a.this.isShowing()) {
                    a aVar = a.this;
                    if (!aVar.f30330d) {
                        TypedArray obtainStyledAttributes = aVar.getContext().obtainStyledAttributes(new int[]{16843611});
                        aVar.f30329c = obtainStyledAttributes.getBoolean(0, true);
                        obtainStyledAttributes.recycle();
                        aVar.f30330d = true;
                    }
                    if (aVar.f30329c) {
                        a.this.cancel();
                    }
                }
            }
        });
        v.a(frameLayout, new androidx.core.view.a() { // from class: com.google.android.material.bottomsheet.a.2
            @Override // androidx.core.view.a
            public final void a(View view3, c cVar) {
                super.a(view3, cVar);
                if (a.this.f30328b) {
                    cVar.a(1048576);
                    cVar.k(true);
                    return;
                }
                cVar.k(false);
            }

            @Override // androidx.core.view.a
            public final boolean a(View view3, int i2, Bundle bundle) {
                if (i2 != 1048576 || !a.this.f30328b) {
                    return super.a(view3, i2, bundle);
                }
                a.this.cancel();
                return true;
            }
        });
        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.bottomsheet.a.3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view3, MotionEvent motionEvent) {
                return true;
            }
        });
        return this.f;
    }

    private FrameLayout d() {
        if (this.f == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), a.h.design_bottom_sheet_dialog, null);
            this.f = frameLayout;
            BottomSheetBehavior<FrameLayout> a2 = BottomSheetBehavior.a((FrameLayout) frameLayout.findViewById(a.f.design_bottom_sheet));
            this.e = a2;
            a2.a(this.g);
            this.e.a(this.f30328b);
        }
        return this.f;
    }

    public final BottomSheetBehavior<FrameLayout> b() {
        if (this.e == null) {
            d();
        }
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.e;
        bottomSheetBehavior.n.remove(this.g);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        BottomSheetBehavior<FrameLayout> b2 = b();
        if (!this.f30327a || b2.h == 5) {
            super.cancel();
        } else {
            b2.c(5);
        }
    }

    @Override // androidx.appcompat.app.f, android.app.Dialog
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
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.e;
        if (bottomSheetBehavior != null && bottomSheetBehavior.h == 5) {
            this.e.c(4);
        }
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f30328b != z) {
            this.f30328b = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.e;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.a(z);
            }
        }
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f30328b) {
            this.f30328b = true;
        }
        this.f30329c = z;
        this.f30330d = true;
    }

    @Override // androidx.appcompat.app.f, android.app.Dialog
    public final void setContentView(int i) {
        super.setContentView(a(i, null, null));
    }

    @Override // androidx.appcompat.app.f, android.app.Dialog
    public final void setContentView(View view) {
        super.setContentView(a(0, view, null));
    }

    @Override // androidx.appcompat.app.f, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(a(0, view, layoutParams));
    }
}
