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
import androidx.appcompat.app.DialogC0139g;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C4492a;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* renamed from: com.google.android.material.bottomsheet.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomsheet/a.class */
public class DialogC4570a extends DialogC0139g {

    /* renamed from: a */
    boolean f19854a;

    /* renamed from: b */
    boolean f19855b;

    /* renamed from: c */
    private BottomSheetBehavior<FrameLayout> f19856c;

    /* renamed from: d */
    private FrameLayout f19857d;

    /* renamed from: e */
    private boolean f19858e;

    /* renamed from: f */
    private boolean f19859f;

    /* renamed from: g */
    private BottomSheetBehavior.AbstractC4566a f19860g;

    public DialogC4570a(Context context) {
        this(context, 0);
    }

    public DialogC4570a(Context context, int i) {
        super(context, m3514a(context, i));
        this.f19855b = true;
        this.f19858e = true;
        this.f19860g = new BottomSheetBehavior.AbstractC4566a() { // from class: com.google.android.material.bottomsheet.a.4
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.AbstractC4566a
            /* renamed from: a */
            public void mo3511a(View view, float f) {
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.AbstractC4566a
            /* renamed from: a */
            public void mo3510a(View view, int i2) {
                if (i2 == 5) {
                    DialogC4570a.this.cancel();
                }
            }
        };
        m22117a(1);
    }

    /* renamed from: a */
    private static int m3514a(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            i2 = context.getTheme().resolveAttribute(C4492a.C4494b.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : C4492a.C4503k.Theme_Design_Light_BottomSheetDialog;
        }
        return i2;
    }

    /* renamed from: a */
    private View m3515a(int i, View view, ViewGroup.LayoutParams layoutParams) {
        m3512d();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f19857d.findViewById(C4492a.C4498f.coordinator);
        View view2 = view;
        if (i != 0) {
            view2 = view;
            if (view == null) {
                view2 = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
            }
        }
        FrameLayout frameLayout = (FrameLayout) this.f19857d.findViewById(C4492a.C4498f.design_bottom_sheet);
        if (layoutParams == null) {
            frameLayout.addView(view2);
        } else {
            frameLayout.addView(view2, layoutParams);
        }
        coordinatorLayout.findViewById(C4492a.C4498f.touch_outside).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.bottomsheet.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view3) {
                if (!DialogC4570a.this.f19855b || !DialogC4570a.this.isShowing() || !DialogC4570a.this.m3513c()) {
                    return;
                }
                DialogC4570a.this.cancel();
            }
        });
        C0595u.m20345a(frameLayout, new C0549a() { // from class: com.google.android.material.bottomsheet.a.2
            @Override // androidx.core.p026h.C0549a
            /* renamed from: a */
            public void mo2272a(View view3, C0553c c0553c) {
                super.mo2272a(view3, c0553c);
                if (!DialogC4570a.this.f19855b) {
                    c0553c.m20471k(false);
                    return;
                }
                c0553c.m20525a(1048576);
                c0553c.m20471k(true);
            }

            @Override // androidx.core.p026h.C0549a
            /* renamed from: a */
            public boolean mo2512a(View view3, int i2, Bundle bundle) {
                boolean mo2512a;
                if (i2 != 1048576 || !DialogC4570a.this.f19855b) {
                    mo2512a = super.mo2512a(view3, i2, bundle);
                } else {
                    DialogC4570a.this.cancel();
                    mo2512a = true;
                }
                return mo2512a;
            }
        });
        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.bottomsheet.a.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view3, MotionEvent motionEvent) {
                return true;
            }
        });
        return this.f19857d;
    }

    /* renamed from: d */
    private FrameLayout m3512d() {
        if (this.f19857d == null) {
            this.f19857d = (FrameLayout) View.inflate(getContext(), C4492a.C4500h.design_bottom_sheet_dialog, null);
            this.f19856c = BottomSheetBehavior.m3551b((FrameLayout) this.f19857d.findViewById(C4492a.C4498f.design_bottom_sheet));
            this.f19856c.m3557a(this.f19860g);
            this.f19856c.m3549b(this.f19855b);
        }
        return this.f19857d;
    }

    /* renamed from: a */
    public BottomSheetBehavior<FrameLayout> m3516a() {
        if (this.f19856c == null) {
            m3512d();
        }
        return this.f19856c;
    }

    /* renamed from: c */
    boolean m3513c() {
        if (!this.f19859f) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{16843611});
            this.f19858e = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.f19859f = true;
        }
        return this.f19858e;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> m3516a = m3516a();
        if (!this.f19854a || m3516a.m3553b() == 5) {
            super.cancel();
        } else {
            m3516a.m3543d(5);
        }
    }

    @Override // androidx.appcompat.app.DialogC0139g, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                window.clearFlags(67108864);
                window.addFlags(RecyclerView.UNDEFINED_DURATION);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        if (this.f19856c == null || this.f19856c.m3553b() != 5) {
            return;
        }
        this.f19856c.m3543d(4);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f19855b != z) {
            this.f19855b = z;
            if (this.f19856c == null) {
                return;
            }
            this.f19856c.m3549b(z);
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f19855b) {
            this.f19855b = true;
        }
        this.f19858e = z;
        this.f19859f = true;
    }

    @Override // androidx.appcompat.app.DialogC0139g, android.app.Dialog
    public void setContentView(int i) {
        super.setContentView(m3515a(i, null, null));
    }

    @Override // androidx.appcompat.app.DialogC0139g, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(m3515a(0, view, null));
    }

    @Override // androidx.appcompat.app.DialogC0139g, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(m3515a(0, view, layoutParams));
    }
}
