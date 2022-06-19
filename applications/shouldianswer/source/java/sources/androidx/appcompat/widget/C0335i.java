package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.C0051a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.appcompat.widget.C0290ai;
import androidx.core.graphics.C0569a;
/* renamed from: androidx.appcompat.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i.class */
public final class C0335i {

    /* renamed from: a */
    private static final PorterDuff.Mode f1369a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private static C0335i f1370b;

    /* renamed from: c */
    private C0290ai f1371c;

    /* renamed from: a */
    public static PorterDuffColorFilter m7073a(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m7234a;
        synchronized (C0335i.class) {
            try {
                m7234a = C0290ai.m7234a(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m7234a;
    }

    /* renamed from: a */
    public static void m7074a() {
        synchronized (C0335i.class) {
            try {
                if (f1370b == null) {
                    f1370b = new C0335i();
                    f1370b.f1371c = C0290ai.m7236a();
                    f1370b.f1371c.m7220a(new C0290ai.AbstractC0295e() { // from class: androidx.appcompat.widget.i.1

                        /* renamed from: a */
                        private final int[] f1372a = {C0051a.C0056e.abc_textfield_search_default_mtrl_alpha, C0051a.C0056e.abc_textfield_default_mtrl_alpha, C0051a.C0056e.abc_ab_share_pack_mtrl_alpha};

                        /* renamed from: b */
                        private final int[] f1373b = {C0051a.C0056e.abc_ic_commit_search_api_mtrl_alpha, C0051a.C0056e.abc_seekbar_tick_mark_material, C0051a.C0056e.abc_ic_menu_share_mtrl_alpha, C0051a.C0056e.abc_ic_menu_copy_mtrl_am_alpha, C0051a.C0056e.abc_ic_menu_cut_mtrl_alpha, C0051a.C0056e.abc_ic_menu_selectall_mtrl_alpha, C0051a.C0056e.abc_ic_menu_paste_mtrl_am_alpha};

                        /* renamed from: c */
                        private final int[] f1374c = {C0051a.C0056e.abc_textfield_activated_mtrl_alpha, C0051a.C0056e.abc_textfield_search_activated_mtrl_alpha, C0051a.C0056e.abc_cab_background_top_mtrl_alpha, C0051a.C0056e.abc_text_cursor_material, C0051a.C0056e.abc_text_select_handle_left_mtrl_dark, C0051a.C0056e.abc_text_select_handle_middle_mtrl_dark, C0051a.C0056e.abc_text_select_handle_right_mtrl_dark, C0051a.C0056e.abc_text_select_handle_left_mtrl_light, C0051a.C0056e.abc_text_select_handle_middle_mtrl_light, C0051a.C0056e.abc_text_select_handle_right_mtrl_light};

                        /* renamed from: d */
                        private final int[] f1375d = {C0051a.C0056e.abc_popup_background_mtrl_mult, C0051a.C0056e.abc_cab_background_internal_bg, C0051a.C0056e.abc_menu_hardkey_panel_mtrl_mult};

                        /* renamed from: e */
                        private final int[] f1376e = {C0051a.C0056e.abc_tab_indicator_material, C0051a.C0056e.abc_textfield_search_material};

                        /* renamed from: f */
                        private final int[] f1377f = {C0051a.C0056e.abc_btn_check_material, C0051a.C0056e.abc_btn_radio_material, C0051a.C0056e.abc_btn_check_material_anim, C0051a.C0056e.abc_btn_radio_material_anim};

                        /* renamed from: a */
                        private ColorStateList m7064a(Context context) {
                            return m7057b(context, C0306an.m7173a(context, C0051a.C0052a.colorButtonNormal));
                        }

                        /* renamed from: a */
                        private void m7061a(Drawable drawable, int i, PorterDuff.Mode mode) {
                            Drawable drawable2 = drawable;
                            if (C0268aa.m7303c(drawable)) {
                                drawable2 = drawable.mutate();
                            }
                            PorterDuff.Mode mode2 = mode;
                            if (mode == null) {
                                mode2 = C0335i.f1369a;
                            }
                            drawable2.setColorFilter(C0335i.m7073a(i, mode2));
                        }

                        /* renamed from: a */
                        private boolean m7059a(int[] iArr, int i) {
                            for (int i2 : iArr) {
                                if (i2 == i) {
                                    return true;
                                }
                            }
                            return false;
                        }

                        /* renamed from: b */
                        private ColorStateList m7058b(Context context) {
                            return m7057b(context, 0);
                        }

                        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
                        /* renamed from: b */
                        private ColorStateList m7057b(Context context, int i) {
                            int m7173a = C0306an.m7173a(context, C0051a.C0052a.colorControlHighlight);
                            int m7170c = C0306an.m7170c(context, C0051a.C0052a.colorButtonNormal);
                            int[] iArr = C0306an.f1262a;
                            int[] iArr2 = C0306an.f1265d;
                            int m6173a = C0569a.m6173a(m7173a, i);
                            return new ColorStateList(new int[]{iArr, iArr2, C0306an.f1263b, C0306an.f1269h}, new int[]{m7170c, m6173a, C0569a.m6173a(m7173a, i), i});
                        }

                        /* renamed from: c */
                        private ColorStateList m7055c(Context context) {
                            return m7057b(context, C0306an.m7173a(context, C0051a.C0052a.colorAccent));
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v1, types: [int[], int[][]] */
                        /* renamed from: d */
                        private ColorStateList m7054d(Context context) {
                            ?? r0 = new int[3];
                            int[] iArr = new int[3];
                            ColorStateList m7171b = C0306an.m7171b(context, C0051a.C0052a.colorSwitchThumbNormal);
                            if (m7171b == null || !m7171b.isStateful()) {
                                r0[0] = C0306an.f1262a;
                                iArr[0] = C0306an.m7170c(context, C0051a.C0052a.colorSwitchThumbNormal);
                                r0[1] = C0306an.f1266e;
                                iArr[1] = C0306an.m7173a(context, C0051a.C0052a.colorControlActivated);
                                r0[2] = C0306an.f1269h;
                                iArr[2] = C0306an.m7173a(context, C0051a.C0052a.colorSwitchThumbNormal);
                            } else {
                                r0[0] = C0306an.f1262a;
                                iArr[0] = m7171b.getColorForState(r0[0], 0);
                                r0[1] = C0306an.f1266e;
                                iArr[1] = C0306an.m7173a(context, C0051a.C0052a.colorControlActivated);
                                r0[2] = C0306an.f1269h;
                                iArr[2] = m7171b.getDefaultColor();
                            }
                            return new ColorStateList(r0, iArr);
                        }

                        @Override // androidx.appcompat.widget.C0290ai.AbstractC0295e
                        /* renamed from: a */
                        public ColorStateList mo7063a(Context context, int i) {
                            if (i == C0051a.C0056e.abc_edit_text_material) {
                                return C0062a.m7985a(context, C0051a.C0054c.abc_tint_edittext);
                            }
                            if (i == C0051a.C0056e.abc_switch_track_mtrl_alpha) {
                                return C0062a.m7985a(context, C0051a.C0054c.abc_tint_switch_track);
                            }
                            if (i == C0051a.C0056e.abc_switch_thumb_material) {
                                return m7054d(context);
                            }
                            if (i == C0051a.C0056e.abc_btn_default_mtrl_shape) {
                                return m7064a(context);
                            }
                            if (i == C0051a.C0056e.abc_btn_borderless_material) {
                                return m7058b(context);
                            }
                            if (i == C0051a.C0056e.abc_btn_colored_material) {
                                return m7055c(context);
                            }
                            if (i == C0051a.C0056e.abc_spinner_mtrl_am_alpha || i == C0051a.C0056e.abc_spinner_textfield_background_material) {
                                return C0062a.m7985a(context, C0051a.C0054c.abc_tint_spinner);
                            }
                            if (m7059a(this.f1373b, i)) {
                                return C0306an.m7171b(context, C0051a.C0052a.colorControlNormal);
                            }
                            if (m7059a(this.f1376e, i)) {
                                return C0062a.m7985a(context, C0051a.C0054c.abc_tint_default);
                            }
                            if (m7059a(this.f1377f, i)) {
                                return C0062a.m7985a(context, C0051a.C0054c.abc_tint_btn_checkable);
                            }
                            if (i != C0051a.C0056e.abc_seekbar_thumb_material) {
                                return null;
                            }
                            return C0062a.m7985a(context, C0051a.C0054c.abc_tint_seek_thumb);
                        }

                        @Override // androidx.appcompat.widget.C0290ai.AbstractC0295e
                        /* renamed from: a */
                        public PorterDuff.Mode mo7065a(int i) {
                            return i == C0051a.C0056e.abc_switch_thumb_material ? PorterDuff.Mode.MULTIPLY : null;
                        }

                        @Override // androidx.appcompat.widget.C0290ai.AbstractC0295e
                        /* renamed from: a */
                        public Drawable mo7060a(C0290ai c0290ai, Context context, int i) {
                            if (i == C0051a.C0056e.abc_cab_background_top_material) {
                                return new LayerDrawable(new Drawable[]{c0290ai.m7232a(context, C0051a.C0056e.abc_cab_background_internal_bg), c0290ai.m7232a(context, C0051a.C0056e.abc_cab_background_top_mtrl_alpha)});
                            }
                            return null;
                        }

                        @Override // androidx.appcompat.widget.C0290ai.AbstractC0295e
                        /* renamed from: a */
                        public boolean mo7062a(Context context, int i, Drawable drawable) {
                            if (i == C0051a.C0056e.abc_seekbar_track_material) {
                                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                                m7061a(layerDrawable.findDrawableByLayerId(16908288), C0306an.m7173a(context, C0051a.C0052a.colorControlNormal), C0335i.f1369a);
                                m7061a(layerDrawable.findDrawableByLayerId(16908303), C0306an.m7173a(context, C0051a.C0052a.colorControlNormal), C0335i.f1369a);
                                m7061a(layerDrawable.findDrawableByLayerId(16908301), C0306an.m7173a(context, C0051a.C0052a.colorControlActivated), C0335i.f1369a);
                                return true;
                            } else if (i != C0051a.C0056e.abc_ratingbar_material && i != C0051a.C0056e.abc_ratingbar_indicator_material && i != C0051a.C0056e.abc_ratingbar_small_material) {
                                return false;
                            } else {
                                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                                m7061a(layerDrawable2.findDrawableByLayerId(16908288), C0306an.m7170c(context, C0051a.C0052a.colorControlNormal), C0335i.f1369a);
                                m7061a(layerDrawable2.findDrawableByLayerId(16908303), C0306an.m7173a(context, C0051a.C0052a.colorControlActivated), C0335i.f1369a);
                                m7061a(layerDrawable2.findDrawableByLayerId(16908301), C0306an.m7173a(context, C0051a.C0052a.colorControlActivated), C0335i.f1369a);
                                return true;
                            }
                        }

                        /* JADX WARN: Removed duplicated region for block: B:22:0x0082  */
                        /* JADX WARN: Removed duplicated region for block: B:29:0x00b0 A[RETURN] */
                        @Override // androidx.appcompat.widget.C0290ai.AbstractC0295e
                        /* renamed from: b */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public boolean mo7056b(android.content.Context r5, int r6, android.graphics.drawable.Drawable r7) {
                            /*
                                r4 = this;
                                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.C0335i.m7066c()
                                r8 = r0
                                r0 = r4
                                r1 = r4
                                int[] r1 = r1.f1372a
                                r2 = r6
                                boolean r0 = r0.m7059a(r1, r2)
                                r9 = r0
                                r0 = 16842801(0x1010031, float:2.3693695E-38)
                                r10 = r0
                                r0 = r9
                                if (r0 == 0) goto L27
                                int r0 = androidx.appcompat.C0051a.C0052a.colorControlNormal
                                r6 = r0
                            L1e:
                                r0 = -1
                                r10 = r0
                            L21:
                                r0 = 1
                                r11 = r0
                                goto L7d
                            L27:
                                r0 = r4
                                r1 = r4
                                int[] r1 = r1.f1374c
                                r2 = r6
                                boolean r0 = r0.m7059a(r1, r2)
                                if (r0 == 0) goto L3a
                                int r0 = androidx.appcompat.C0051a.C0052a.colorControlActivated
                                r6 = r0
                                goto L1e
                            L3a:
                                r0 = r4
                                r1 = r4
                                int[] r1 = r1.f1375d
                                r2 = r6
                                boolean r0 = r0.m7059a(r1, r2)
                                if (r0 == 0) goto L51
                                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                                r8 = r0
                                r0 = r10
                                r6 = r0
                                goto L1e
                            L51:
                                r0 = r6
                                int r1 = androidx.appcompat.C0051a.C0056e.abc_list_divider_mtrl_alpha
                                if (r0 != r1) goto L67
                                r0 = 16842800(0x1010030, float:2.3693693E-38)
                                r6 = r0
                                r0 = 1109603123(0x42233333, float:40.8)
                                int r0 = java.lang.Math.round(r0)
                                r10 = r0
                                goto L21
                            L67:
                                r0 = r6
                                int r1 = androidx.appcompat.C0051a.C0056e.abc_dialog_material_background
                                if (r0 != r1) goto L74
                                r0 = r10
                                r6 = r0
                                goto L1e
                            L74:
                                r0 = -1
                                r10 = r0
                                r0 = 0
                                r11 = r0
                                r0 = r11
                                r6 = r0
                            L7d:
                                r0 = r11
                                if (r0 == 0) goto Lb0
                                r0 = r7
                                r12 = r0
                                r0 = r7
                                boolean r0 = androidx.appcompat.widget.C0268aa.m7303c(r0)
                                if (r0 == 0) goto L92
                                r0 = r7
                                android.graphics.drawable.Drawable r0 = r0.mutate()
                                r12 = r0
                            L92:
                                r0 = r12
                                r1 = r5
                                r2 = r6
                                int r1 = androidx.appcompat.widget.C0306an.m7173a(r1, r2)
                                r2 = r8
                                android.graphics.PorterDuffColorFilter r1 = androidx.appcompat.widget.C0335i.m7073a(r1, r2)
                                r0.setColorFilter(r1)
                                r0 = r10
                                r1 = -1
                                if (r0 == r1) goto Lae
                                r0 = r12
                                r1 = r10
                                r0.setAlpha(r1)
                            Lae:
                                r0 = 1
                                return r0
                            Lb0:
                                r0 = 0
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0335i.C03361.mo7056b(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m7069a(Drawable drawable, C0309aq c0309aq, int[] iArr) {
        C0290ai.m7222a(drawable, c0309aq, iArr);
    }

    /* renamed from: b */
    public static C0335i m7068b() {
        C0335i c0335i;
        synchronized (C0335i.class) {
            try {
                if (f1370b == null) {
                    m7074a();
                }
                c0335i = f1370b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0335i;
    }

    /* renamed from: a */
    public Drawable m7071a(Context context, int i) {
        Drawable m7232a;
        synchronized (this) {
            m7232a = this.f1371c.m7232a(context, i);
        }
        return m7232a;
    }

    /* renamed from: a */
    public Drawable m7070a(Context context, int i, boolean z) {
        Drawable m7229a;
        synchronized (this) {
            m7229a = this.f1371c.m7229a(context, i, z);
        }
        return m7229a;
    }

    /* renamed from: a */
    public void m7072a(Context context) {
        synchronized (this) {
            this.f1371c.m7233a(context);
        }
    }

    /* renamed from: b */
    public ColorStateList m7067b(Context context, int i) {
        ColorStateList m7216b;
        synchronized (this) {
            m7216b = this.f1371c.m7216b(context, i);
        }
        return m7216b;
    }
}
