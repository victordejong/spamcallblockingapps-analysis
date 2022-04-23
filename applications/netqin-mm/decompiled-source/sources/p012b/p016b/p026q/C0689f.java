package p012b.p016b.p026q;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import p012b.p016b.C0574a;
import p012b.p016b.C0576c;
import p012b.p016b.C0578e;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p026q.C0728v;
import p012b.p042i.p046j.C0891b;
/* renamed from: b.b.q.f */
/* loaded from: classes-dex2jar.jar:b/b/q/f.class */
public final class C0689f {

    /* renamed from: b */
    public static final PorterDuff.Mode f3402b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    public static C0689f f3403c;

    /* renamed from: a */
    public C0728v f3404a;

    /* renamed from: b.b.q.f$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/f$a.class */
    public class C0690a implements C0728v.AbstractC0733e {

        /* renamed from: a */
        public final int[] f3405a = {C0578e.abc_textfield_search_default_mtrl_alpha, C0578e.abc_textfield_default_mtrl_alpha, C0578e.abc_ab_share_pack_mtrl_alpha};

        /* renamed from: b */
        public final int[] f3406b = {C0578e.abc_ic_commit_search_api_mtrl_alpha, C0578e.abc_seekbar_tick_mark_material, C0578e.abc_ic_menu_share_mtrl_alpha, C0578e.abc_ic_menu_copy_mtrl_am_alpha, C0578e.abc_ic_menu_cut_mtrl_alpha, C0578e.abc_ic_menu_selectall_mtrl_alpha, C0578e.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: c */
        public final int[] f3407c = {C0578e.abc_textfield_activated_mtrl_alpha, C0578e.abc_textfield_search_activated_mtrl_alpha, C0578e.abc_cab_background_top_mtrl_alpha, C0578e.abc_text_cursor_material, C0578e.abc_text_select_handle_left_mtrl_dark, C0578e.abc_text_select_handle_middle_mtrl_dark, C0578e.abc_text_select_handle_right_mtrl_dark, C0578e.abc_text_select_handle_left_mtrl_light, C0578e.abc_text_select_handle_middle_mtrl_light, C0578e.abc_text_select_handle_right_mtrl_light};

        /* renamed from: d */
        public final int[] f3408d = {C0578e.abc_popup_background_mtrl_mult, C0578e.abc_cab_background_internal_bg, C0578e.abc_menu_hardkey_panel_mtrl_mult};

        /* renamed from: e */
        public final int[] f3409e = {C0578e.abc_tab_indicator_material, C0578e.abc_textfield_search_material};

        /* renamed from: f */
        public final int[] f3410f = {C0578e.abc_btn_check_material, C0578e.abc_btn_radio_material, C0578e.abc_btn_check_material_anim, C0578e.abc_btn_radio_material_anim};

        /* renamed from: a */
        public final ColorStateList m36429a(Context context) {
            return m36425b(context, 0);
        }

        @Override // p012b.p016b.p026q.C0728v.AbstractC0733e
        /* renamed from: a */
        public ColorStateList mo36187a(Context context, int i) {
            if (i == C0578e.abc_edit_text_material) {
                return C0601a.m36778b(context, C0576c.abc_tint_edittext);
            }
            if (i == C0578e.abc_switch_track_mtrl_alpha) {
                return C0601a.m36778b(context, C0576c.abc_tint_switch_track);
            }
            if (i == C0578e.abc_switch_thumb_material) {
                return m36423d(context);
            }
            if (i == C0578e.abc_btn_default_mtrl_shape) {
                return m36424c(context);
            }
            if (i == C0578e.abc_btn_borderless_material) {
                return m36429a(context);
            }
            if (i == C0578e.abc_btn_colored_material) {
                return m36426b(context);
            }
            if (i == C0578e.abc_spinner_mtrl_am_alpha || i == C0578e.abc_spinner_textfield_background_material) {
                return C0601a.m36778b(context, C0576c.abc_tint_spinner);
            }
            if (m36427a(this.f3406b, i)) {
                return C0675a0.m36479c(context, C0574a.colorControlNormal);
            }
            if (m36427a(this.f3409e, i)) {
                return C0601a.m36778b(context, C0576c.abc_tint_default);
            }
            if (m36427a(this.f3410f, i)) {
                return C0601a.m36778b(context, C0576c.abc_tint_btn_checkable);
            }
            if (i == C0578e.abc_seekbar_thumb_material) {
                return C0601a.m36778b(context, C0576c.abc_tint_seek_thumb);
            }
            return null;
        }

        @Override // p012b.p016b.p026q.C0728v.AbstractC0733e
        /* renamed from: a */
        public PorterDuff.Mode mo36188a(int i) {
            return i == C0578e.abc_switch_thumb_material ? PorterDuff.Mode.MULTIPLY : null;
        }

        @Override // p012b.p016b.p026q.C0728v.AbstractC0733e
        /* renamed from: a */
        public Drawable mo36185a(C0728v vVar, Context context, int i) {
            if (i == C0578e.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{vVar.m36195b(context, C0578e.abc_cab_background_internal_bg), vVar.m36195b(context, C0578e.abc_cab_background_top_mtrl_alpha)});
            }
            return null;
        }

        /* renamed from: a */
        public final void m36428a(Drawable drawable, int i, PorterDuff.Mode mode) {
            Drawable drawable2 = drawable;
            if (C0716p.m36251a(drawable)) {
                drawable2 = drawable.mutate();
            }
            PorterDuff.Mode mode2 = mode;
            if (mode == null) {
                mode2 = C0689f.f3402b;
            }
            drawable2.setColorFilter(C0689f.m36437a(i, mode2));
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[RETURN] */
        @Override // p012b.p016b.p026q.C0728v.AbstractC0733e
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo36186a(android.content.Context r5, int r6, android.graphics.drawable.Drawable r7) {
            /*
                r4 = this;
                android.graphics.PorterDuff$Mode r0 = p012b.p016b.p026q.C0689f.m36438a()
                r8 = r0
                r0 = r4
                r1 = r4
                int[] r1 = r1.f3405a
                r2 = r6
                boolean r0 = r0.m36427a(r1, r2)
                r9 = r0
                r0 = 16842801(0x1010031, float:2.3693695E-38)
                r10 = r0
                r0 = r9
                if (r0 == 0) goto L_0x0026
                int r0 = p012b.p016b.C0574a.colorControlNormal
                r6 = r0
            L_0x001d:
                r0 = -1
                r10 = r0
            L_0x0020:
                r0 = 1
                r11 = r0
                goto L_0x0079
            L_0x0026:
                r0 = r4
                r1 = r4
                int[] r1 = r1.f3407c
                r2 = r6
                boolean r0 = r0.m36427a(r1, r2)
                if (r0 == 0) goto L_0x0039
                int r0 = p012b.p016b.C0574a.colorControlActivated
                r6 = r0
                goto L_0x001d
            L_0x0039:
                r0 = r4
                r1 = r4
                int[] r1 = r1.f3408d
                r2 = r6
                boolean r0 = r0.m36427a(r1, r2)
                if (r0 == 0) goto L_0x0050
                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                r8 = r0
                r0 = r10
                r6 = r0
                goto L_0x001d
            L_0x0050:
                r0 = r6
                int r1 = p012b.p016b.C0578e.abc_list_divider_mtrl_alpha
                if (r0 != r1) goto L_0x0064
                r0 = 16842800(0x1010030, float:2.3693693E-38)
                r6 = r0
                r0 = 1109603123(0x42233333, float:40.8)
                int r0 = java.lang.Math.round(r0)
                r10 = r0
                goto L_0x0020
            L_0x0064:
                r0 = r6
                int r1 = p012b.p016b.C0578e.abc_dialog_material_background
                if (r0 != r1) goto L_0x0071
                r0 = r10
                r6 = r0
                goto L_0x001d
            L_0x0071:
                r0 = -1
                r10 = r0
                r0 = 0
                r11 = r0
                r0 = 0
                r6 = r0
            L_0x0079:
                r0 = r11
                if (r0 == 0) goto L_0x00ac
                r0 = r7
                r12 = r0
                r0 = r7
                boolean r0 = p012b.p016b.p026q.C0716p.m36251a(r0)
                if (r0 == 0) goto L_0x008e
                r0 = r7
                android.graphics.drawable.Drawable r0 = r0.mutate()
                r12 = r0
            L_0x008e:
                r0 = r12
                r1 = r5
                r2 = r6
                int r1 = p012b.p016b.p026q.C0675a0.m36480b(r1, r2)
                r2 = r8
                android.graphics.PorterDuffColorFilter r1 = p012b.p016b.p026q.C0689f.m36437a(r1, r2)
                r0.setColorFilter(r1)
                r0 = r10
                r1 = -1
                if (r0 == r1) goto L_0x00aa
                r0 = r12
                r1 = r10
                r0.setAlpha(r1)
            L_0x00aa:
                r0 = 1
                return r0
            L_0x00ac:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p026q.C0689f.C0690a.mo36186a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }

        /* renamed from: a */
        public final boolean m36427a(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public final ColorStateList m36426b(Context context) {
            return m36425b(context, C0675a0.m36480b(context, C0574a.colorAccent));
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
        /* renamed from: b */
        public final ColorStateList m36425b(Context context, int i) {
            int b = C0675a0.m36480b(context, C0574a.colorControlHighlight);
            int a = C0675a0.m36483a(context, C0574a.colorButtonNormal);
            int[] iArr = C0675a0.f3354b;
            int[] iArr2 = C0675a0.f3356d;
            int c = C0891b.m35602c(b, i);
            return new ColorStateList(new int[]{iArr, iArr2, C0675a0.f3355c, C0675a0.f3358f}, new int[]{a, c, C0891b.m35602c(b, i), i});
        }

        @Override // p012b.p016b.p026q.C0728v.AbstractC0733e
        /* renamed from: b */
        public boolean mo36184b(Context context, int i, Drawable drawable) {
            if (i == C0578e.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                m36428a(layerDrawable.findDrawableByLayerId(16908288), C0675a0.m36480b(context, C0574a.colorControlNormal), C0689f.f3402b);
                m36428a(layerDrawable.findDrawableByLayerId(16908303), C0675a0.m36480b(context, C0574a.colorControlNormal), C0689f.f3402b);
                m36428a(layerDrawable.findDrawableByLayerId(16908301), C0675a0.m36480b(context, C0574a.colorControlActivated), C0689f.f3402b);
                return true;
            } else if (i != C0578e.abc_ratingbar_material && i != C0578e.abc_ratingbar_indicator_material && i != C0578e.abc_ratingbar_small_material) {
                return false;
            } else {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                m36428a(layerDrawable2.findDrawableByLayerId(16908288), C0675a0.m36483a(context, C0574a.colorControlNormal), C0689f.f3402b);
                m36428a(layerDrawable2.findDrawableByLayerId(16908303), C0675a0.m36480b(context, C0574a.colorControlActivated), C0689f.f3402b);
                m36428a(layerDrawable2.findDrawableByLayerId(16908301), C0675a0.m36480b(context, C0574a.colorControlActivated), C0689f.f3402b);
                return true;
            }
        }

        /* renamed from: c */
        public final ColorStateList m36424c(Context context) {
            return m36425b(context, C0675a0.m36480b(context, C0574a.colorButtonNormal));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int[], int[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.content.res.ColorStateList m36423d(android.content.Context r7) {
            /*
                r6 = this;
                r0 = 3
                int[] r0 = new int[r0]
                r8 = r0
                r0 = 3
                int[] r0 = new int[r0]
                r9 = r0
                r0 = r7
                int r1 = p012b.p016b.C0574a.colorSwitchThumbNormal
                android.content.res.ColorStateList r0 = p012b.p016b.p026q.C0675a0.m36479c(r0, r1)
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0052
                r0 = r10
                boolean r0 = r0.isStateful()
                if (r0 == 0) goto L_0x0052
                r0 = r8
                r1 = 0
                int[] r2 = p012b.p016b.p026q.C0675a0.f3354b
                r0[r1] = r2
                r0 = r9
                r1 = 0
                r2 = r10
                r3 = r8
                r4 = 0
                r3 = r3[r4]
                r4 = 0
                int r2 = r2.getColorForState(r3, r4)
                r0[r1] = r2
                r0 = r8
                r1 = 1
                int[] r2 = p012b.p016b.p026q.C0675a0.f3357e
                r0[r1] = r2
                r0 = r9
                r1 = 1
                r2 = r7
                int r3 = p012b.p016b.C0574a.colorControlActivated
                int r2 = p012b.p016b.p026q.C0675a0.m36480b(r2, r3)
                r0[r1] = r2
                r0 = r8
                r1 = 2
                int[] r2 = p012b.p016b.p026q.C0675a0.f3358f
                r0[r1] = r2
                r0 = r9
                r1 = 2
                r2 = r10
                int r2 = r2.getDefaultColor()
                r0[r1] = r2
                goto L_0x0082
            L_0x0052:
                r0 = r8
                r1 = 0
                int[] r2 = p012b.p016b.p026q.C0675a0.f3354b
                r0[r1] = r2
                r0 = r9
                r1 = 0
                r2 = r7
                int r3 = p012b.p016b.C0574a.colorSwitchThumbNormal
                int r2 = p012b.p016b.p026q.C0675a0.m36483a(r2, r3)
                r0[r1] = r2
                r0 = r8
                r1 = 1
                int[] r2 = p012b.p016b.p026q.C0675a0.f3357e
                r0[r1] = r2
                r0 = r9
                r1 = 1
                r2 = r7
                int r3 = p012b.p016b.C0574a.colorControlActivated
                int r2 = p012b.p016b.p026q.C0675a0.m36480b(r2, r3)
                r0[r1] = r2
                r0 = r8
                r1 = 2
                int[] r2 = p012b.p016b.p026q.C0675a0.f3358f
                r0[r1] = r2
                r0 = r9
                r1 = 2
                r2 = r7
                int r3 = p012b.p016b.C0574a.colorSwitchThumbNormal
                int r2 = p012b.p016b.p026q.C0675a0.m36480b(r2, r3)
                r0[r1] = r2
            L_0x0082:
                android.content.res.ColorStateList r0 = new android.content.res.ColorStateList
                r1 = r0
                r2 = r8
                r3 = r9
                r1.<init>(r2, r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p026q.C0689f.C0690a.m36423d(android.content.Context):android.content.res.ColorStateList");
        }
    }

    /* renamed from: a */
    public static PorterDuffColorFilter m36437a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter a;
        synchronized (C0689f.class) {
            try {
                a = C0728v.m36213a(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return a;
    }

    /* renamed from: a */
    public static void m36433a(Drawable drawable, C0686d0 d0Var, int[] iArr) {
        C0728v.m36201a(drawable, d0Var, iArr);
    }

    /* renamed from: b */
    public static C0689f m36432b() {
        C0689f fVar;
        synchronized (C0689f.class) {
            try {
                if (f3403c == null) {
                    m36430c();
                }
                fVar = f3403c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    /* renamed from: c */
    public static void m36430c() {
        synchronized (C0689f.class) {
            try {
                if (f3403c == null) {
                    C0689f fVar = new C0689f();
                    f3403c = fVar;
                    fVar.f3404a = C0728v.m36215a();
                    f3403c.f3404a.m36199a(new C0690a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public Drawable m36435a(Context context, int i) {
        Drawable b;
        synchronized (this) {
            b = this.f3404a.m36195b(context, i);
        }
        return b;
    }

    /* renamed from: a */
    public Drawable m36434a(Context context, int i, boolean z) {
        Drawable a;
        synchronized (this) {
            a = this.f3404a.m36208a(context, i, z);
        }
        return a;
    }

    /* renamed from: a */
    public void m36436a(Context context) {
        synchronized (this) {
            this.f3404a.m36196b(context);
        }
    }

    /* renamed from: b */
    public ColorStateList m36431b(Context context, int i) {
        ColorStateList c;
        synchronized (this) {
            c = this.f3404a.m36194c(context, i);
        }
        return c;
    }
}
